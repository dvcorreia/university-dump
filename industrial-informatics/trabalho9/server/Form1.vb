Imports System.Net
Imports System.IO
Imports System.Text

Public Class Form1
    'TCP Objects
    Private ip As IPAddress = IPAddress.Parse("127.0.0.1")
    Private server As Sockets.TcpListener = New Sockets.TcpListener(ip, 80)
    Private connection As New Sockets.TcpClient
    Private stream As Sockets.NetworkStream

    Private publicPath As String = "C:\Users\TIAGO\Desktop\industrial-informatics\trabalho9\server\public"

    Private serverState As Boolean = False

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Text = "Reservoir Controller Server"
        Me.Icon = My.Resources.ua_logo

        'Update connection status textbox
        tbxClientStatus.Text = "Server Stoped"
        tbxClientStatus.ForeColor = Color.Black

        'Initialize Timer
        TimerConnection.Interval = 100
        TimerConnection.Stop()
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
                Dim urnLocation As String = Mid(msg, 1, InStr(msg, "HTTP") - 2)

                'Mutex route handler (this can be optimized tho)
                Select Case urnLocation
                    Case "GET /motor-on.html"
                        routeHandler(publicPath + "\motor-on.html")
                    Case "GET /motor-off.html"
                        routeHandler(publicPath + "\motor-off.html")
                    Case "GET /controlo.html"
                        routeHandler(publicPath + "\controlo.html")
                    Case "GET /supervisao.html"
                        routeHandler(publicPath + "\supervisao.html")
                    Case "GET /reservatorio.html"
                        routeHandler(publicPath + "\reservatorio.html")
                    Case "GET /reservatorio2.html"
                        routeHandler(publicPath + "\reservatorio2.html")
                    Case "GET /logoua.html"
                        routeHandler(publicPath + "\logoua.html")
                    Case "GET /rodape.html"
                        routeHandler(publicPath + "\rodape.html")
                    Case Else
                        routeHandler(publicPath + "\404.html")
                End Select
            End If
        End If
    End Sub

    Private Sub routeHandler(ByVal path As String)
        If connection.Connected Then
            Dim filestream As StreamReader = New StreamReader(path)
            Dim content As String = filestream.ReadToEnd()

            'Generate http message
            Dim header As String = genHeader(Len(content))
            content = header & vbCrLf & vbCrLf & content

            'Sent http response
            Dim bytestream() As Byte = Encoding.Default.GetBytes(content)
            stream.Write(bytestream, 0, Len(content))
        End If
    End Sub

    Private Function genHeader(ByVal length As Integer) As String
        Dim protocolAndStatus As String = "HTTP/1.1 200 OK"
        Dim contentLen As String = "Content-Length:" & vbTab & length.ToString()
        Dim server As String = "Server:" & vbTab & "Reservoir management/0.0.1 (VB)"
        Dim contentType As String = "Content-Type:" & vbTab & "text/html"
        Dim connection As String = "Connection:" & vbTab & "Closed"

        Return protocolAndStatus & vbCrLf & contentLen & vbCrLf & server & vbCrLf & contentType & vbCrLf & connection
    End Function

    Private Sub add2History(ByVal msg As String)
        tbxHistory.Text = msg
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
