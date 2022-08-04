Imports System.Net

Public Class Form1
    Private ip As IPAddress = IPAddress.Parse("127.0.0.1")
    Private server As Sockets.TcpListener = New Sockets.TcpListener(ip, 81)
    Private connection As New Sockets.TcpClient
    Private serverState As Boolean = False

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Lock UI
        lockUI(True)

        'Initialize UI
        tbxVelocity.Text = "0"
        lbVelocity.Text = "?"
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
    End Sub

    Private Sub lockUI(ByVal state As Boolean)
        'Lock UI if state is True
        cbxX0.Enabled = Not state
        cbxX1.Enabled = Not state
        cbxX2.Enabled = Not state
        cbxX3.Enabled = Not state
        tbxVelocity.Enabled = Not state
    End Sub

    Private Sub TimerReceive_Tick(sender As Object, e As EventArgs) Handles TimerReceive.Tick
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

                updateState(msg)
                add2History(msg)
            End If
        End If
    End Sub

    Private Sub updateState(ByVal data As String)
        cbxY0.Checked = Mid(data, 1, 1)
        cbxY1.Checked = Mid(data, 2, 1)
        cbxY2.Checked = Mid(data, 3, 1)
        lbVelocity.Text = Asc(Mid(data, 4, 1))
    End Sub

    Private Sub add2History(ByVal msg As String)
        If tbxHistory.Lines.Length > 8 Then
            tbxHistory.Text = ""
        End If
        tbxHistory.Text += Format(Now, "HH:mm:ss") + " - " + msg + vbCrLf
    End Sub

    Private Sub TimerSend_Tick(sender As Object, e As EventArgs) Handles TimerSend.Tick
        If connection.Connected Then
            Try
                Dim buffer(5) As Byte
                buffer(0) = cbxX0.CheckState + 48
                buffer(1) = cbxX1.CheckState + 48
                buffer(2) = cbxX2.CheckState + 48
                buffer(3) = cbxX3.CheckState + 48
                buffer(4) = CInt(tbxVelocity.Text)

                Console.WriteLine("Data Sent = " + buffer.ToString())

                Dim stream As Sockets.NetworkStream = connection.GetStream()
                stream.Write(buffer, 0, 5)
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
        'Enable UI
        lockUI(False)

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

        'Disable UI
        lockUI(True)
    End Sub

    Private Sub BtnONOFF_Click(sender As Object, e As EventArgs) Handles btnONOFF.Click
        If serverState Then
            'Stop server
            server.Stop()
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
