Imports MySql.Data.MySqlClient

Public Class Form1
    Inherits System.Windows.Forms.Form

    Dim cn As New MySqlConnection
    Dim cmd As New MySqlCommand
    Dim data_reader As MySqlDataReader

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub BtnConnect_Click(sender As Object, e As EventArgs) Handles btnConnect.Click
        'Connect and Open of the DB
        cn.ConnectionString = "Server=localhost; User Id=root; Password=76608; Database=exercises"

        Try
            If cn.State = ConnectionState.Closed Then
                cn.Open()
                MsgBox("Connection to alunos DB was successful!")
            End If
        Catch ex As Exception
            cn.Close()
            MsgBox("Incorrect Connection to alunos DB ...")
        End Try

        cmd.Connection = cn
    End Sub

    Private Sub BtnReadDB_Click(sender As Object, e As EventArgs) Handles btnReadDB.Click
        Dim str As String = ""

        cmd.CommandText = "select * from dados_al"
        data_reader = cmd.ExecuteReader

        While data_reader.Read
            str = str & data_reader("id") & vbTab & data_reader("nome") & vbTab & data_reader("telefone") & vbCrLf
        End While

        txtData.Text = str
        data_reader.Close()
    End Sub

    Private Sub BtnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        cmd.CommandText = "insert into dados_al(nome,mecanografico,telefone) Values('" & txtName.Text & "','" & txtMecanografico.Text & "','" & txtMobile.Text & "')"
        cmd.ExecuteNonQuery()
    End Sub

    Private Sub BtnRead_Click(sender As Object, e As EventArgs) Handles btnRead.Click
        cmd.CommandText = "select * from dados_al where id='" & txtId.Text & "'"

        data_reader = cmd.ExecuteReader

        data_reader.Read()
        txtName.Text = data_reader("nome")
        txtMecanografico.Text = data_reader("mecanografico")
        txtMobile.Text = data_reader("telefone")
        data_reader.Close()
    End Sub

    Private Sub BtnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        cmd.CommandText = "update dados_al set nome='" & txtName.Text & "', mecanografico='" & txtMecanografico.Text & "', telefone='" & txtMobile.Text & "' where id='" & CInt(txtId.Text) & "'"
        cmd.ExecuteNonQuery()
    End Sub

    Private Sub BtnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        cmd.CommandText = "delete from dados_al where id='" & txtId.Text & "'"
        cmd.ExecuteNonQuery()
    End Sub

    Private Sub BtnMax_Click(sender As Object, e As EventArgs) Handles btnMax.Click
        cmd.CommandText = "select max(id) From dados_al"

        Dim total As Integer = cmd.ExecuteScalar
        txtMaxId.Text = total.ToString()
    End Sub

    Private Sub BtnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        Me.Close()
    End Sub
End Class
