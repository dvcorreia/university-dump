Imports System.Net

Public Class Form1
    Private ip As IPAddress
    Private client As New Sockets.TcpClient

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Update IP Object and connect button
        ip = IPAddress.Parse("127.0.0.1")
        btnConnection.Text = "Connect to " + ip.ToString()

        'Lock UI
        lockUI(True)

        'Initialize UI
        tbxVelocity.Text = "?"
        lbVelocity.Text = "?"
    End Sub

    Private Sub BtnConnection_Click(sender As Object, e As EventArgs) Handles btnConnection.Click
        If Not client.Connected Then
            clientConnect()
        Else
            clientDisconnect()
        End If
    End Sub

    Private Sub clientConnect()
        'Connect to server
        Try
            client.Connect(ip, "81")
        Catch ex As Exception
            MsgBox(ex.Message)
            Exit Sub
        End Try

        'Enable UI
        lockUI(False)
        tbxVelocity.Text = CStr(tbVelocity.Value)
        'Change message to Disconnect
        btnConnection.Text = "Disconnect from " + ip.ToString()
        'Enable Timer
        TimerReception.Start()
    End Sub

    Private Sub clientDisconnect()
        'Disable Timer
        TimerReception.Stop()
        'Disconect from the server
        client.Close()
        client = New Sockets.TcpClient
        'Disable UI
        lockUI(True)
        'Change message to Connect
        btnConnection.Text = "Connect to " + ip.ToString()
    End Sub

    Private Sub lockUI(ByVal state As Boolean)
        'Lock UI if state is True
        cbxY0.Enabled = Not state
        cbxY1.Enabled = Not state
        cbxY2.Enabled = Not state
        tbVelocity.Enabled = Not state
    End Sub

    Private Sub TimerReception_Tick(sender As Object, e As EventArgs) Handles TimerReception.Tick
        If Not client.Connected Then
            clientDisconnect()
            Exit Sub
        End If

        Dim msgLength As Integer = client.Available

        If msgLength > 0 Then
            Dim stream As Sockets.NetworkStream = client.GetStream()
            Dim buffer(msgLength) As Byte
            stream.Read(buffer, 0, msgLength)

            'Encode data
            Dim msg As String = ""
            Dim i As Integer
            For i = 0 To msgLength - 1
                msg += Chr(buffer(i))
            Next

            'Update state
            updateState(msg)
        End If
    End Sub

    Private Sub updateState(ByVal data As String)
        Console.WriteLine("Data Received = " + data)
        cbxX0.Checked = Mid(data, 1, 1)
        cbxX1.Checked = Mid(data, 2, 1)
        cbxX2.Checked = Mid(data, 3, 1)
        cbxX3.Checked = Mid(data, 4, 1)
        lbVelocity.Text = Asc(Mid(data, 5, 1))
    End Sub

    Private Sub handleControlChange(sender As Object, e As EventArgs) _
        Handles cbxY0.CheckedChanged, cbxY1.CheckedChanged, cbxY2.CheckedChanged, tbVelocity.ValueChanged
        tbxVelocity.Text = CStr(tbVelocity.Value)

        If client.Connected Then
            Try
                Dim buffer(4) As Byte
                buffer(0) = cbxY0.CheckState + 48
                buffer(1) = cbxY1.CheckState + 48
                buffer(2) = cbxY2.CheckState + 48
                buffer(3) = tbVelocity.Value

                Console.Write("Data Sent = " + buffer.ToString)

                Dim stream As Sockets.NetworkStream = client.GetStream()
                stream.Write(buffer, 0, 4)
            Catch ex As Exception
                MsgBox(ex.Message)
                clientDisconnect()
                Exit Sub
            End Try
        End If
    End Sub
End Class
