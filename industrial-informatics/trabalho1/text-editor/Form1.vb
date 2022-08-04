Imports System.IO
Public Class Form1
    ' Application variables
    Private sizeForm = New System.Drawing.Size(800, 600)
    Private currentFilePath As String = ""
    Private sreader As StreamReader
    Private swriter As StreamWriter
    Private autosave As Boolean = False

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        With Me
            .Text = "vbcode"
            .MinimumSize = sizeForm
            .MaximumSize = sizeForm
            .Size = sizeForm
            .Icon = New Icon("assets/vscode.ico")
        End With

        With textEditor
            .Location = New Point(21, 42)
            .Size = New Size(sizeForm.Width - 42 - 21, sizeForm.Height - 42 * 3)
            .ScrollBars = 3
        End With

        'Init menu check states
        menuAutoSave.Checked = False
        menuCharactersCounter.Checked = True
        viewHour.Checked = True

        'Init status trip values
        statusCharCount.Text = CStr(Len(textEditor.Text)) + "Bytes"
        statusStripSaveProgressBar.Value = 0
        statusHour.Text = TimeOfDay.ToString()

        'Init Timers
        autosaveTimer.Interval = 1000
        hourTimer.Interval = 1000
        hourTimer.Start()
    End Sub

    Private Sub OpenToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles menuOpen.Click
        Dim openStatus As Byte = OpenFileDialog1.ShowDialog()
        If openStatus = 1 Then
            sreader = New StreamReader(OpenFileDialog1.FileName)
            textEditor.Text = sreader.ReadToEnd()
            sreader.Close()

            statusStripSaveProgressBar.Value = 100

            'Update current file path
            currentFilePath = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub SaveToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles menuSave.Click
        If currentFilePath = "" Then
            Dim saveStatus As Byte = SaveFileDialog1.ShowDialog()
            If saveStatus = 1 Then
                currentFilePath = SaveFileDialog1.FileName
            End If
        End If

        swriter = New StreamWriter(currentFilePath)
        swriter.Write(textEditor.Text)
        swriter.Close()
        statusStripSaveProgressBar.Value = 100
    End Sub

    Private Sub MenuSaveAs_Click(sender As Object, e As EventArgs) Handles menuSaveAs.Click
        Dim saveStatus As Byte = SaveFileDialog1.ShowDialog()
        If saveStatus = 1 Then
            swriter = New StreamWriter(SaveFileDialog1.FileName)
            swriter.Write(textEditor.Text)
            swriter.Close()
            statusStripSaveProgressBar.Value = 100
        End If
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles menuExit.Click
        End
    End Sub

    Private Sub TextEditor_TextChanged(sender As Object, e As EventArgs) Handles textEditor.TextChanged
        If autosave = True Then
            autosaveTimer.Stop()
            autosaveTimer.Start()
        End If

        statusStripSaveProgressBar.Value = 0
        statusCharCount.Text = CStr(Len(textEditor.Text)) + " characters"
    End Sub

    Private Sub MenuCharactersCounter_Click(sender As Object, e As EventArgs) Handles menuCharactersCounter.Click
        If menuCharactersCounter.CheckState = 1 Then
            menuCharactersCounter.Checked = False
            statusCharCount.Visible = False
        Else
            menuCharactersCounter.Checked = True
            statusCharCount.Visible = True
        End If
    End Sub

    Private Sub AutoSaveToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles menuAutoSave.Click
        If menuAutoSave.CheckState = 1 Then
            menuAutoSave.Checked = False
            autosave = False
            autosaveTimer.Stop()
        Else
            menuAutoSave.Checked = True
            autosave = True
            autosaveTimer.Start()
        End If
    End Sub

    Private Sub ViewSaveStatus_Click(sender As Object, e As EventArgs) Handles viewSaveStatus.Click
        If viewSaveStatus.CheckState = 1 Then
            viewSaveStatus.Checked = False
            statusStripSaveProgressBar.Visible = False
        Else
            viewSaveStatus.Checked = True
            statusStripSaveProgressBar.Visible = True
        End If
    End Sub

    Private Sub ViewHour_Click(sender As Object, e As EventArgs) Handles viewHour.Click
        If viewHour.CheckState = 1 Then
            viewHour.Checked = False
            statusHour.Visible = False
            hourTimer.Stop()
        Else
            viewHour.Checked = True
            statusHour.Visible = True
            hourTimer.Start()
        End If
    End Sub

    Private Sub AutosaveTimer_Tick(sender As Object, e As EventArgs) Handles autosaveTimer.Tick
        If currentFilePath <> "" And autosave = True Then
            swriter = New StreamWriter(currentFilePath)
            swriter.Write(textEditor.Text)
            swriter.Close()
            statusStripSaveProgressBar.Value = 100
        End If

        autosaveTimer.Stop()
    End Sub

    Private Sub HourTimer_Tick(sender As Object, e As EventArgs) Handles hourTimer.Tick
        statusHour.Text = TimeOfDay.ToString()
    End Sub
End Class
