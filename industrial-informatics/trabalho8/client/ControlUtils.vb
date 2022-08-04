Imports System.Net
Module ControlUtils
    Public PCy0 As Boolean = False, PCy1 As Boolean = False, PCy2 As Boolean = False
    Public PLCx0 As Boolean = False, PLCx1 As Boolean = False, PLCx2 As Boolean = False, PLCx3 As Boolean = False
    Public PLCy0 As Boolean = False, PLCy1 As Boolean = False, PLCy2 As Boolean = False
    Public lvl As Integer = 0

    Private auxControlLoop As Boolean = False

    'TCP Objects
    Public ip As IPAddress = IPAddress.Parse("127.0.0.1")
    Private client As New Sockets.TcpClient
    Private data As String

    Public Function tpcManage() As Boolean
        If Not client.Connected Then
            clientDisconnect()
            Return False
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

            'Update data
            data = msg
            Return True
        Else
            Return False
        End If
    End Function

    Public Sub tcpConnect()
        If Not client.Connected Then
            'Connect to server
            clientConnect()
        Else
            'Disconnect from server
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
        Form1.lbLvl.Text = CStr(lvl)
        'Change message to Disconnect
        Form1.btnConnection.Text = "Disconnect from " + ip.ToString()
        'Enable Timer
        Form1.Timer1.Start()
    End Sub

    Private Sub clientDisconnect()
        'Disable Timer
        Form1.Timer1.Stop()
        'Disconect from the server
        client.Close()
        client = New Sockets.TcpClient
        'Disable UI
        lockUI(True)
        'Change message to Connect
        Form1.btnConnection.Text = "Connect to " + ip.ToString()
    End Sub

    Public Sub tcpSend()
        If client.Connected Then
            Try
                'Data goes has y0y1y2
                Dim buffer(3) As Byte
                buffer(0) = Convert.ToInt32(PCy0) + 48
                buffer(1) = Convert.ToInt32(PCy1) + 48
                buffer(2) = Convert.ToInt32(PCy2) + 48

                Dim stream As Sockets.NetworkStream = client.GetStream()
                stream.Write(buffer, 0, 3)
            Catch ex As Exception
                MsgBox(ex.Message)
                clientDisconnect()
                Exit Sub
            End Try
        End If
    End Sub

    Public Sub toogleButton(ByRef btn As Button, ByRef controlVar As Boolean)
        If btn.Text = "ON" Then
            controlVar = True
            btn.Text = "OFF"
        Else
            controlVar = False
            btn.Text = "ON"
        End If
    End Sub

    Public Sub lockUI(ByVal lock As Boolean)
        If lock Then
            Form1.btnY0.Enabled = False
            Form1.btnY1.Enabled = False
            Form1.btnY2.Enabled = False
        Else
            Form1.btnY0.Enabled = True
            Form1.btnY1.Enabled = True
            Form1.btnY2.Enabled = True
        End If
    End Sub


    Public Sub updateProgramState()
        'data comes as y0y1y2x0x1x2x3lvl
        Console.WriteLine(data)
        PLCx0 = Mid(data, 4, 1)
        updateXAssetState(PLCx0, Form1.cbxX0)

        PLCx1 = Mid(data, 5, 1)
        updateXAssetState(PLCx1, Form1.cbxX1)

        PLCx2 = Mid(data, 6, 1)
        updateXAssetState(PLCx2, Form1.cbxX2)

        PLCx3 = Mid(data, 7, 1)
        updateXAssetState(PLCx3, Form1.cbxX3)

        PLCy0 = Mid(data, 1, 1)
        updateYAssetState(PLCy0, Form1.picY0)

        PLCy1 = Mid(data, 2, 1)
        updateYAssetState(PLCy1, Form1.picY1)

        PLCy2 = Mid(data, 3, 1)
        updateYAssetState(PLCy2, Form1.picY2)

        lvl = Asc(Mid(data, 8, 1))
        Form1.lbLvl.Text = CStr(lvl) + "%"
    End Sub

    Public Sub updateYAssetState(ByVal state As Boolean, ByRef pic As PictureBox)
        If state Then
            pic.Image = My.Resources.led_green
        Else
            pic.Image = My.Resources.led_red
        End If
    End Sub

    Public Sub updateXAssetState(ByVal state As Boolean, ByRef cbx As CheckBox)
        cbx.Checked = state
    End Sub

    Public Sub controlSystem()
        'a) Quando a àgua fica abaixo do nível X1 (X1 = False), a água deve ser bombeada para o tanque (Y0 =
        '   True e Y1 = True) até que a água fique acima do nível X2 (X2 = True);
        If PLCx1 = False Then
            PCy0 = True
            Form1.btnY0.Text = "OFF"
            Form1.btnY0.Enabled = False
            PCy1 = True
            Form1.btnY1.Text = "OFF"
            Form1.btnY1.Enabled = False
            auxControlLoop = True
        End If

        If PLCx2 = True And auxControlLoop = True Then
            PCy0 = False
            Form1.btnY0.Text = "ON"
            Form1.btnY0.Enabled = True
            PCy1 = False
            Form1.btnY1.Text = "ON"
            Form1.btnY1.Enabled = True
            auxControlLoop = False
        End If

        'b) Sempre que o nível de água esteja acima de X1 (X1 = True) deve poder ser comsumida água do
        '   reservatório(Y2 = True);
        If PLCx1 <> True Then
            Form1.btnY2.Text = "ON"
            Form1.btnY2.Enabled = False
        Else
            Form1.btnY2.Enabled = True
        End If

        'c) Sempre que o nível de água esteja abaixo de X0 (X0 = False) deve ser lançado um alarme a indicar que
        '   o reservatório está vazio (por exemplo numa caixa de texto);
        If PLCx0 = False Then
            Form1.txtWarnings.Text = "Reservoir Empty!"
            Form1.txtWarnings.BackColor = Color.Red
        End If

        'd) Sempre que o nível de água esteja acima de X3 (X3 = True) deve ser lançado um alarme a indicar que o
        '   reservatório está cheio (por exemplo numa caixa de texto);
        If PLCx3 = True Then
            Form1.txtWarnings.Text = "Reservoir Full!"
            Form1.txtWarnings.BackColor = Color.Red
        End If

        If PLCx0 = True And PLCx3 = False Then
            Form1.txtWarnings.Text = String.Empty
            Form1.txtWarnings.BackColor = Color.White
        End If
    End Sub

End Module
