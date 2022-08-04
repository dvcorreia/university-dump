Public Class FormConfigureSerialPort
    Private Sub FormConfigureSerialPort_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Text = "Serial Port Config"

        Dim comPorts = My.Computer.Ports.SerialPortNames.ToArray()
        cbxCOM.Items.AddRange(comPorts)
        cbxCOM.DropDownStyle = ComboBoxStyle.DropDownList

        If comPorts.GetUpperBound(0) > 0 Then
            cbxCOM.SelectedItem = cbxCOM.Items(0)
        End If

        Dim baudrateList = New String() {"1200", "2400", "4800", "9600", "14400", "19200", "28800", "38400", "57600", "115200", "230400"}
        cbxBaurate.Items.AddRange(baudrateList)
        cbxBaurate.DropDownStyle = ComboBoxStyle.DropDownList
        cbxBaurate.SelectedItem = cbxBaurate.Items(3)

        cbxStopBits.Items.AddRange({"0", "1", "1,5", "2"})
        cbxStopBits.DropDownStyle = ComboBoxStyle.DropDownList
        cbxStopBits.SelectedItem = cbxStopBits.Items(1)

        cbxParityBits.Items.AddRange({"none", "even", "odd", "mark", "space"})
        cbxParityBits.DropDownStyle = ComboBoxStyle.DropDownList
        cbxParityBits.SelectedItem = cbxParityBits.Items(0)
    End Sub

    Private Sub BtnApply_Click(sender As Object, e As EventArgs) Handles btnApply.Click
        SerialUtils.configSerialPort(cbxCOM.SelectedItem.ToString(), cbxBaurate.SelectedItem.ToString(), cbxParityBits.SelectedItem.ToString(), cbxStopBits.SelectedItem.ToString())
        If SerialUtils.is_configuration_valid Then
            Form1.btnCommunication.Enabled = True
        End If
        Form1.Show()
        Me.Close()
    End Sub

    Private Sub BtnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        SerialUtils.is_configuration_valid = False
        Form1.Show()
        Me.Close()
    End Sub

    Private Sub FormConfigureSerialPort_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        SerialUtils.is_configuration_valid = False
        Form1.Show()
    End Sub
End Class