Public Class Form2
    Dim db As String
    Private Sub Form2_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Init history
        Dim dbtables As String() = {"controloreservatorio", "supervisaoreservatorio"}
        cbxHistory.Items.AddRange(dbtables)
        cbxHistory.DropDownStyle = ComboBoxStyle.DropDownList
        cbxHistory.SelectedItem = cbxHistory.Items(0)
        db = cbxHistory.SelectedItem.ToString()

        refreshHistory()
    End Sub

    Private Sub refreshHistory()
        Dim str As String = String.Empty
        Form1.cmd.CommandText = "select * from " & db
        Form1.data_reader = Form1.cmd.ExecuteReader

        If db Is "controloreservatorio" Then
            str = "n" & vbTab & "data               " & vbTab & vbTab & "y0" & vbTab & "y1" & vbTab & "y2" & vbCrLf
            While Form1.data_reader.Read
                str = str & Form1.data_reader("ordem") & vbTab & Form1.data_reader("data") & vbTab & Form1.data_reader("y0") & vbTab & Form1.data_reader("y1") & vbTab & Form1.data_reader("y2") & vbCrLf
            End While
        ElseIf db Is "supervisaoreservatorio" Then
            str = "n" & vbTab & "data               " & vbTab & vbTab & "y0" & vbTab & "y1" & vbTab & "y2" & vbTab & "x0" & vbTab & "x1" & vbTab & "x2" & vbTab & "x3" & vbCrLf
            While Form1.data_reader.Read
                str = str & Form1.data_reader("leitura") & vbTab & Form1.data_reader("data") & vbTab & Form1.data_reader("y0") & vbTab & Form1.data_reader("y1") & vbTab & Form1.data_reader("y2") & vbTab & Form1.data_reader("x0") & vbTab & Form1.data_reader("x1") & vbTab & Form1.data_reader("x2") & vbTab & Form1.data_reader("x3") & vbCrLf
            End While
        End If

        txtHistory.Text = str
        Form1.data_reader.Close()
    End Sub

    Private Sub BtnRefresh_Click(sender As Object, e As EventArgs) Handles btnRefresh.Click
        refreshHistory()
    End Sub

    Private Sub BtnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        Form1.cmd.CommandText = "truncate " & db
        Form1.cmd.ExecuteNonQuery()
        refreshHistory()
    End Sub

    Private Sub BtnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

    Private Sub CbxHistory_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbxHistory.SelectedIndexChanged
        db = cbxHistory.SelectedItem.ToString()
        refreshHistory()
    End Sub
End Class