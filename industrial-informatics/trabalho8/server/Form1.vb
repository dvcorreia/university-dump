Imports System.Net

Public Class Form1
    'TCP Objects
    Private ip As IPAddress = IPAddress.Parse("127.0.0.1")
    Private server As Sockets.TcpListener = New Sockets.TcpListener(ip, 81)
    Private connection As New Sockets.TcpClient
    Private serverState As Boolean = False

    'Facon Server Objects
    Private fs As New FaconSvr.FaconServer
    Private CSG As String = "Channel0.Station0.Group0"

    'Control Variables
    Public PCy0 As Boolean = False, PCy1 As Boolean = False, PCy2 As Boolean = False
    Public PLCx0 As Boolean = False, PLCx1 As Boolean = False, PLCx2 As Boolean = False, PLCx3 As Boolean = False
    Public PLCy0 As Boolean = False, PLCy1 As Boolean = False, PLCy2 As Boolean = False
    Public lvl As Integer

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Text = "Reservoir Controller Server"
        Me.Icon = My.Resources.ua_logo
        'Initialize UI
        tbxLvl.Text = "??"
        'Update connection status textbox
        tbxClientStatus.Text = "Server Stoped"
        tbxClientStatus.ForeColor = Color.Black

        'Initialize Timer
        TimerSend.Interval = 1000
        TimerSend.Stop()
        TimerReceive.Interval = 100
        TimerReceive.Stop()
        TimerVerifyConnection.Interval = 100
        TimerVerifyConnection.Stop()
        TimerFacon.Interval = 100

        Try
            'Read project fcs file (path must be absolute)
            fs.OpenProject("C:\Users\TIAGO\Desktop\industrial-informatics\trabalho8\reservoir.fcs")

            'Connect to Facon Server and load project fcs file
            fs.Connect()

            'Start Facon timer
            TimerFacon.Start()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub TimerReceive_Tick(sender As Object, e As EventArgs) Handles TimerReceive.Tick
        handleTcpReception()
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
                Console.WriteLine("Data Received = " + msg)

                PCy0 = Mid(msg, 1, 1)
                PCy1 = Mid(msg, 2, 1)
                PCy2 = Mid(msg, 3, 1)
                add2History(msg)
            End If
        End If
    End Sub

    Private Sub add2History(ByVal msg As String)
        If tbxHistory.Lines.Length > 11 Then
            tbxHistory.Text = ""
        End If
        tbxHistory.Text += Format(Now, "HH:mm:ss") + " - " + msg + vbCrLf
    End Sub

    Private Sub TimerFacon_Tick(sender As Object, e As EventArgs) Handles TimerFacon.Tick
        handleFaconReception()
        handleFaconSend()
        updateUI()
    End Sub

    Private Sub TimerSend_Tick(sender As Object, e As EventArgs) Handles TimerSend.Tick
        handleTcpSend()
    End Sub

    Private Sub handleFaconSend()
        fs.SetItem(CSG, "Y0", CInt(PCy0))
        fs.SetItem(CSG, "Y1", CInt(PCy1))
        fs.SetItem(CSG, "Y2", CInt(PCy2))
    End Sub

    Private Sub handleTcpSend()
        If connection.Connected Then
            Try
                Dim buffer(8) As Byte

                buffer(0) = Convert.ToInt32(PLCy0) + 48
                buffer(1) = Convert.ToInt32(PLCy1) + 48
                buffer(2) = Convert.ToInt32(PLCy2) + 48
                buffer(3) = Convert.ToInt32(PLCx0) + 48
                buffer(4) = Convert.ToInt32(PLCx1) + 48
                buffer(5) = Convert.ToInt32(PLCx2) + 48
                buffer(6) = Convert.ToInt32(PLCx3) + 48
                buffer(7) = lvl

                Dim stream As Sockets.NetworkStream = connection.GetStream()
                stream.Write(buffer, 0, 8)
            Catch ex As Exception
                MsgBox(ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub TimerVerifyConnection_Tick(sender As Object, e As EventArgs) Handles TimerVerifyConnection.Tick
        If server.Pending Then
            connection = server.AcceptTcpClient()
        End If

        If connection.Connected Then
            clientExists()
        Else
            clientNone()
        End If
    End Sub

    Private Sub clientExists()
        'Update connection status textbox
        tbxClientStatus.Text = "Connected to client"
        tbxClientStatus.ForeColor = Color.Green

        'Enable Timer
        TimerSend.Start()
        TimerReceive.Start()
    End Sub

    Private Sub clientNone()
        'Disable Timer
        TimerSend.Stop()
        TimerReceive.Stop()

        'Update connection status textbox
        tbxClientStatus.Text = "No connection with client"
        tbxClientStatus.ForeColor = Color.Red
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
            tbxClientStatus.ForeColor = Color.Black
            'Deactivate TimerVerifyConnection
            TimerVerifyConnection.Stop()
        Else
            'Start server
            server.Start()
            btnONOFF.Text = "Stop Server"
            serverState = True
            'Update connection status textbox
            tbxClientStatus.Text = "Server Running"
            tbxClientStatus.ForeColor = Color.Black
            'Activate TimerVerifyConnection
            TimerVerifyConnection.Start()
        End If
    End Sub
End Class
