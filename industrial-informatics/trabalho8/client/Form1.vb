Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Text = "Reservoir Controller Client"
        Me.Icon = My.Resources.ua_logo
        Me.BackColor = Color.White

        txtWarnings.Text = String.Empty
        btnConnection.Text = "Connect to " + ControlUtils.ip.ToString()

        ControlUtils.lockUI(True)

        Timer1.Interval = 100
        Timer1.Stop()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If ControlUtils.tpcManage() Then
            ControlUtils.updateProgramState()
            ControlUtils.controlSystem()
        End If

        ControlUtils.tcpSend()
    End Sub

    Private Sub BtnY0_Click(sender As Object, e As EventArgs) Handles btnY0.Click
        ControlUtils.toogleButton(sender, ControlUtils.PCy0)
    End Sub

    Private Sub BtnY1_Click(sender As Object, e As EventArgs) Handles btnY1.Click
        ControlUtils.toogleButton(sender, ControlUtils.PCy1)
    End Sub

    Private Sub BtnY2_Click(sender As Object, e As EventArgs) Handles btnY2.Click
        ControlUtils.toogleButton(sender, ControlUtils.PCy2)
    End Sub

    Private Sub BtnConnection_Click(sender As Object, e As EventArgs) Handles btnConnection.Click
        ControlUtils.tcpConnect()
    End Sub
End Class
