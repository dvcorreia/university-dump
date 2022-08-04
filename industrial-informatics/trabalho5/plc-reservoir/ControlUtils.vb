Module ControlUtils
    Public PCy0 As Boolean = False, PCy1 As Boolean = False, PCy2 As Boolean = False
    Public PLCx0 As Boolean = False, PLCx1 As Boolean = False, PLCx2 As Boolean = False, PLCx3 As Boolean = False
    Public PLCy0 As Boolean = False, PLCy1 As Boolean = False, PLCy2 As Boolean = False
    Public lvl As Integer

    Private auxControlLoop As Boolean = False

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
        Dim str As String
        str = "s_ToPLC" + CStr(Math.Abs(CInt(PCy0))) + CStr(Math.Abs(CInt(PCy1))) + CStr(Math.Abs(CInt(PCy2))) + "_e"
        SP.Write(str)
        txtBox.Text = str
    End Sub

    Public Sub updateState()
        Dim rxdata As String = SerialUtils.SP.ReadExisting()
        If rxdata.Length() <> 0 Then
            Form1.txtReceivedData.Text = rxdata
        End If

        'Regex - s_ToPC[01]{7}[(soh)-d]_e

        Dim header, footer As Integer
        If Len(rxdata) >= 16 Then
            header = InStr(rxdata, "s_ToPC")
            footer = InStr(rxdata, "_e")

            If header = 1 And footer = 15 Then
                updateProgramState(Mid(rxdata, 7, 8))
            End If
        End If
    End Sub

    Public Sub updateProgramState(ByVal str As String)
        PLCx0 = CBool(CInt(Mid(str, 4, 1)))
        updateXAssetState(PLCx0, Form1.cbxX0)

        PLCx1 = CBool(CInt(Mid(str, 5, 1)))
        updateXAssetState(PLCx1, Form1.cbxX1)

        PLCx2 = CBool(CInt(Mid(str, 6, 1)))
        updateXAssetState(PLCx2, Form1.cbxX2)

        PLCx3 = CBool(CInt(Mid(str, 7, 1)))
        updateXAssetState(PLCx3, Form1.cbxX3)

        PLCy0 = CBool(CInt(Mid(str, 1, 1)))
        updateYAssetState(PLCy0, Form1.picY0)

        PLCy1 = CBool(CInt(Mid(str, 2, 1)))
        updateYAssetState(PLCy1, Form1.picY1)

        PLCy2 = CBool(CInt(Mid(str, 3, 1)))
        updateYAssetState(PLCy2, Form1.picY2)

        lvl = Asc(Mid(str, 8, 1))
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
