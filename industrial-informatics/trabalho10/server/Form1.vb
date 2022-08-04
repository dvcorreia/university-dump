Imports System.Net
Imports System.IO
Imports System.Text

Public Class Form1
    'TCP Objects
    Private ip As IPAddress = IPAddress.Parse("127.0.0.1")
    Private server As Sockets.TcpListener = New Sockets.TcpListener(ip, 80)
    Private connection As New Sockets.TcpClient
    Private stream As Sockets.NetworkStream

    Private publicPath As String = "C:\Users\TIAGO\Desktop\industrial-informatics\trabalho10\server\public"

    'Facon Server Objects
    Private fs As New FaconSvr.FaconServer
    Private CSG As String = "Channel0.Station0.Group0"

    'Control Variables
    Public PCy0 As Boolean = False, PCy1 As Boolean = False, PCy2 As Boolean = False
    Public PLCx0 As Boolean = False, PLCx1 As Boolean = False, PLCx2 As Boolean = False, PLCx3 As Boolean = False
    Public PLCy0 As Boolean = False, PLCy1 As Boolean = False, PLCy2 As Boolean = False
    Public lvl As Integer

    Private serverState As Boolean = False

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Text = "Reservoir Controller Server"
        Me.Icon = My.Resources.ua_logo
        'Initialize UI
        tbxLvl.Text = "??"
        'Update connection status textbox
        tbxClientStatus.Text = "Server Stoped"
        tbxClientStatus.ForeColor = Color.Black

        'Initialize Timer
        TimerConnection.Interval = 100
        TimerConnection.Stop()
        TimerFacon.Interval = 100

        Try
            'Read project fcs file (path must be absolute)
            fs.OpenProject("C:\Users\TIAGO\Desktop\industrial-informatics\trabalho10\reservoir.fcs")

            'Connect to Facon Server and load project fcs file
            fs.Connect()

            'Start Facon timer
            TimerFacon.Start()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub updateUI()
        cbxY0.Checked = PLCy0
        cbxY1.Checked = PLCy1
        cbxY2.Checked = PLCy2
        cbxX0.Checked = PLCx0
        cbxX1.Checked = PLCx1
        cbxX2.Checked = PLCx2
        cbxX3.Checked = PLCx3
        tbxLvl.Text = CStr(lvl)
    End Sub

    Private Sub handleFaconReception()
        PLCx0 = fs.GetItem(CSG, "X0")
        PLCx1 = fs.GetItem(CSG, "X1")
        PLCx2 = fs.GetItem(CSG, "X2")
        PLCx3 = fs.GetItem(CSG, "X3")
        PLCy0 = fs.GetItem(CSG, "Y0")
        PLCy1 = fs.GetItem(CSG, "Y1")
        PLCy2 = fs.GetItem(CSG, "Y2")
        lvl = fs.GetItem(CSG, "D300")
    End Sub

    Private Sub handleTcpReception()
        If connection.Connected Then
            Dim msgLength As Integer = connection.Available

            If msgLength > 0 Then
                'Copy stream to byte array buffer
                Dim stream As Sockets.NetworkStream = connection.GetStream()
                Dim buffer(msgLength) As Byte
                stream.Read(buffer, 0, msgLength)

                'Encode data
                Dim msg As String = ""
                Dim i As Integer
                For i = 0 To msgLength - 1
                    msg += Chr(buffer(i))
                Next

                add2History(msg)

                'Get urn location
                Dim params As Boolean = False
                Dim urnLocation As String = Mid(msg, 1, InStr(msg, "HTTP") - 2)
                If InStr(urnLocation, "?") > 0 Then
                    urnLocation = Mid(msg, 1, InStr(urnLocation, "?") - 1)
                    params = True
                End If

                'Mutex route handler
                Select Case urnLocation
                    Case "GET /motor-on.html"
                        routeHandler("motor-on.html")
                    Case "GET /motor-off.html"
                        routeHandler("motor-off.html")
                    Case "GET /controlo.html"
                        If params Then
                            handleHTTPControl(msg)
                        End If
                        routeHandler("controlo.html")
                    Case "GET /supervisao.html"
                        routeHandler("supervisao.html")
                    Case "GET /reservatorio.html"
                        routeHandler("reservatorio.html")
                    Case "GET /reservatorio2.html"
                        routeHandler("reservatorio2.html")
                    Case "GET /logoua.html"
                        routeHandler("logoua.html")
                    Case "GET /rodape.html"
                        routeHandler("rodape.html")
                    Case Else
                        routeHandler("404.html", 404)
                End Select
            End If
        End If
    End Sub

    Private Sub handleHTTPControl(ByVal header As String)
        Dim start As Integer = InStr(header, "?") + 1
        Dim lenght As Integer = InStr(header, "HTTP") - start
        Dim paramStr As String = Mid(header, start, lenght - 1)

        Dim param() As String = paramStr.Split("=")

        Select Case param(0)
            Case "Y0"
                PCy0 = CInt(CBool(param(1)))
            Case "Y1"
                PCy1 = CInt(CBool(param(1)))
            Case "Y2"
                PCy2 = CInt(CBool(param(1)))
        End Select
    End Sub

    Private Function genContent(ByVal urn As String) As String
        Dim filestream As StreamReader = New StreamReader(publicPath + "\" + urn)
        Dim content As String = filestream.ReadToEnd()
        filestream.Close()

        Select Case urn
            Case "supervisao.html"
                content = Replace(content, "valuex0", PLCx0)
                content = Replace(content, "valuex1", PLCx1)
                content = Replace(content, "valuex2", PLCx2)
                content = Replace(content, "valuex3", PLCx3)
                content = Replace(content, "valuey0", PLCy0)
                content = Replace(content, "valuey1", PLCy1)
                content = Replace(content, "valuey2", PLCy2)
            Case Else
        End Select

        Return content
    End Function

    Private Sub routeHandler(ByVal urn As String, Optional ByVal code As Integer = 200)
        If connection.Connected Then
            'Generate html content
            Dim content = genContent(urn)

            'Generate http message
            Dim header As String = genHeader(code, Len(content))
            content = header & vbCrLf & vbCrLf & content

            'Sent http response
            Dim bytestream() As Byte = Encoding.Default.GetBytes(content)
            stream.Write(bytestream, 0, Len(content))
        End If
    End Sub

    Private Function genHeader(ByVal code As Integer, ByVal length As Integer) As String
        Dim codeStr As String = ""
        Select Case code
            Case 200
                codeStr = "200 OK"
            Case 404
                codeStr = "404 Not Found"
            Case 400
                codeStr = "400 Bad Request"
            Case Else
                codeStr = "503 Service Unavailable"
        End Select

        Dim protocolAndStatus As String = "HTTP/1.1 " + codeStr
        Dim contentLen As String = "Content-Length:" & vbTab & length.ToString()
        Dim server As String = "Server:" & vbTab & "Reservoir management/0.0.1 (VB)"
        Dim contentType As String = "Content-Type:" & vbTab & "text/html; charset=utf-8"
        Dim connection As String = "Connection:" & vbTab & "Closed"

        Return protocolAndStatus & vbCrLf & contentLen & vbCrLf & server & vbCrLf & contentType & vbCrLf & connection
    End Function

    Private Sub add2History(ByVal msg As String)
        tbxHistory.Text = msg
    End Sub

    Private Sub TimerFacon_Tick(sender As Object, e As EventArgs) Handles TimerFacon.Tick
        handleFaconReception()
        handleFaconSend()
        updateUI()
    End Sub

    Private Sub handleFaconSend()
        fs.SetItem(CSG, "Y0", CInt(PCy0))
        fs.SetItem(CSG, "Y1", CInt(PCy1))
        fs.SetItem(CSG, "Y2", CInt(PCy2))
    End Sub

    Private Sub TimerConnection_Tick(sender As Object, e As EventArgs) Handles TimerConnection.Tick
        If server.Pending Then
            connection = server.AcceptTcpClient()
            stream = connection.GetStream()
        End If

        handleTcpReception()
    End Sub

    Private Sub BtnONOFF_Click(sender As Object, e As EventArgs) Handles btnONOFF.Click
        If serverState Then
            'Stop server
            server.Stop()
            connection.Close()
            connection = New Sockets.TcpClient
            btnONOFF.Text = "Start Server"
            serverState = False
            'Update connection status textbox
            tbxClientStatus.Text = "Server Stoped"
            tbxClientStatus.ForeColor = Color.Red
            'Deactivate TimerVerifyConnection
            TimerConnection.Stop()
        Else
            'Start server
            server.Start()
            btnONOFF.Text = "Stop Server"
            serverState = True
            'Update connection status textbox
            tbxClientStatus.Text = "Server Running"
            tbxClientStatus.ForeColor = Color.Green
            'Activate TimerVerifyConnection
            TimerConnection.Start()
        End If
    End Sub
End Class
