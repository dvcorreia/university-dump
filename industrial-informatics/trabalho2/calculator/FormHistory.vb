Public Class FormHistory
    Private Sub FormHistory_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txtHistory.Enabled = False
        txtHistory.Text = Utils.getHistory()
    End Sub

    Private Sub BtnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        Utils.clearHistory()
        txtHistory.Text = Utils.getHistory()
    End Sub

    Private Sub FormHistory_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Form1.Show()
    End Sub
End Class