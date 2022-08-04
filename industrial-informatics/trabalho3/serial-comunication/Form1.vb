Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Config form
        Me.Icon = New Icon("./assets/ua-logo.ico")
        Me.Text = "AULA3_76608"

        'Config txtBox Received Data
        Timer1.Interval = 100
        Timer1.Enabled = True
        Timer1.Stop()

        'Config Buttons
        btnSendData.Enabled = False
        btnCommunication.Enabled = False

        'Config TextBoxes
        txtReceivedData.ReadOnly = True
        txtHistoty.ReadOnly = True
        txtSendData.Enabled = False
    End Sub

    Private Sub BtnConfigPort_Click(sender As Object, e As EventArgs) Handles btnConfigPort.Click
        Timer1.Stop()
        SerialUtils.SP.Close()
        btnSendData.Enabled = False
        txtSendData.Enabled = False
        btnCommunication.Text = "Begin Communication"
        btnCommunication.Enabled = False
        FormConfigureSerialPort.Show()
        Me.Hide()
    End Sub

    Private Sub BtnCommunication_Click(sender As Object, e As EventArgs) Handles btnCommunication.Click
        If SerialUtils.SP.IsOpen() Then
            Timer1.Stop()
            SerialUtils.SP.Close()
            btnSendData.Enabled = False
            txtSendData.Enabled = False
            btnCommunication.Text = "Begin Communication"
        Else
            SerialUtils.SP.Open()
            Timer1.Start()
            btnSendData.Enabled = True
            txtSendData.Enabled = True
            btnCommunication.Text = "End Communication"
        End If
    End Sub

    Private Sub BtnSendData_Click(sender As Object, e As EventArgs) Handles btnSendData.Click
        SerialUtils.SP.Write(txtSendData.Text + vbCrLf)
        Add_History(txtSendData.Text, False)
        txtSendData.Text = String.Empty
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim rxdata As String = SerialUtils.SP.ReadExisting()
        If rxdata.Length() <> 0 Then
            txtReceivedData.Text = rxdata
            Add_History(rxdata, True)
        End If
    End Sub

    Private Sub Form1_Shown(sender As Object, e As EventArgs) Handles Me.Shown
        If SerialUtils.is_configuration_valid Then
            btnCommunication.Enabled = True
        Else
            btnCommunication.Enabled = False
        End If
    End Sub

    Private Sub BtnClearHistoty_Click(sender As Object, e As EventArgs) Handles btnClearHistoty.Click
        txtHistoty.Text = String.Empty
    End Sub

    Private Sub Add_History(ByVal msg As String, ByVal rtx As Boolean)
        'If rtx is True then message is received Else is transmited
        If rtx Then
            txtHistoty.Text += "< " + Format(Now, "HH:mm:ss") + " - " + msg + vbCrLf
        Else
            txtHistoty.Text += "> " + Format(Now, "HH:mm:ss") + " - " + msg + vbCrLf
        End If
    End Sub

    Private Sub txtSendData_KeyDown(sender As Object, e As KeyEventArgs) Handles txtSendData.KeyDown
        If e.KeyCode = Keys.Enter Then
            SerialUtils.SP.Write(txtSendData.Text + vbCrLf)
            Add_History(txtSendData.Text, False)
            txtSendData.Text = String.Empty
            e.SuppressKeyPress = True
        End If
    End Sub
End Class
