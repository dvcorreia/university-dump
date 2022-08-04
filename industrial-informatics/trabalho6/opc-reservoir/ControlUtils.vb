Module ControlUtils
    Public PCy0 As Boolean = False, PCy1 As Boolean = False, PCy2 As Boolean = False
    Public PLCx0 As Boolean = False, PLCx1 As Boolean = False, PLCx2 As Boolean = False, PLCx3 As Boolean = False
    Public PLCy0 As Boolean = False, PLCy1 As Boolean = False, PLCy2 As Boolean = False
    Public lvl As Integer

    Private auxControlLoop As Boolean = False

    'Facon Objects
    Private fs As New FaconSvr.FaconServer
    Private CSG As String = "Channel0.Station0.Group0"

    Public Sub initFacon()
        'Read project fcs file (path must be absolute)
        fs.OpenProject("C:\Users\TIAGO\Desktop\industrial-informatics\trabalho6\opc-reservoir.fcs")

        'Connect to Facon Server and load project fcs file
        fs.Connect()
    End Sub

    Public Sub faconSend()
        fs.SetItem(CSG, "Y0", CInt(PCy0))
        fs.SetItem(CSG, "Y1", CInt(PCy1))
        fs.SetItem(CSG, "Y2", CInt(PCy2))
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

    Public Sub send2PLC(ByRef SP As IO.Ports.SerialPort, ByRef txtBox As TextBox)

    End Sub

    Public Sub updateProgramState()
        PLCx0 = fs.GetItem(CSG, "X0")
        updateXAssetState(PLCx0, Form1.cbxX0)

        PLCx1 = fs.GetItem(CSG, "X1")
        updateXAssetState(PLCx1, Form1.cbxX1)

        PLCx2 = fs.GetItem(CSG, "X2")
        updateXAssetState(PLCx2, Form1.cbxX2)

        PLCx3 = fs.GetItem(CSG, "X3")
        updateXAssetState(PLCx3, Form1.cbxX3)

        PLCy0 = fs.GetItem(CSG, "Y0")
        updateYAssetState(PLCy0, Form1.picY0)

        PLCy1 = fs.GetItem(CSG, "Y1")
        updateYAssetState(PLCy1, Form1.picY1)

        PLCy2 = fs.GetItem(CSG, "Y2")
        updateYAssetState(PLCy2, Form1.picY2)

        lvl = fs.GetItem(CSG, "D300")
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
