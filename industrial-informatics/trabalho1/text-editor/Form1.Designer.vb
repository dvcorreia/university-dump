<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.menuFile = New System.Windows.Forms.ToolStripMenuItem()
        Me.menuSave = New System.Windows.Forms.ToolStripMenuItem()
        Me.menuSaveAs = New System.Windows.Forms.ToolStripMenuItem()
        Me.menuOpen = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator2 = New System.Windows.Forms.ToolStripSeparator()
        Me.menuAutoSave = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.menuExit = New System.Windows.Forms.ToolStripMenuItem()
        Me.menuView = New System.Windows.Forms.ToolStripMenuItem()
        Me.viewHour = New System.Windows.Forms.ToolStripMenuItem()
        Me.menuCharactersCounter = New System.Windows.Forms.ToolStripMenuItem()
        Me.viewSaveStatus = New System.Windows.Forms.ToolStripMenuItem()
        Me.textEditor = New System.Windows.Forms.TextBox()
        Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog()
        Me.SaveFileDialog1 = New System.Windows.Forms.SaveFileDialog()
        Me.statusStripBottom = New System.Windows.Forms.StatusStrip()
        Me.statusStripSaveProgressBar = New System.Windows.Forms.ToolStripProgressBar()
        Me.statusHour = New System.Windows.Forms.ToolStripStatusLabel()
        Me.statusCharCount = New System.Windows.Forms.ToolStripStatusLabel()
        Me.VScrollBar1 = New System.Windows.Forms.VScrollBar()
        Me.autosaveTimer = New System.Windows.Forms.Timer(Me.components)
        Me.hourTimer = New System.Windows.Forms.Timer(Me.components)
        Me.MenuStrip1.SuspendLayout()
        Me.statusStripBottom.SuspendLayout()
        Me.SuspendLayout()
        '
        'MenuStrip1
        '
        Me.MenuStrip1.ImageScalingSize = New System.Drawing.Size(32, 32)
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.menuFile, Me.menuView})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(1552, 42)
        Me.MenuStrip1.TabIndex = 0
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'menuFile
        '
        Me.menuFile.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.menuSave, Me.menuSaveAs, Me.menuOpen, Me.ToolStripSeparator2, Me.menuAutoSave, Me.ToolStripSeparator1, Me.menuExit})
        Me.menuFile.Name = "menuFile"
        Me.menuFile.Size = New System.Drawing.Size(72, 38)
        Me.menuFile.Text = "File"
        '
        'menuSave
        '
        Me.menuSave.Name = "menuSave"
        Me.menuSave.Size = New System.Drawing.Size(257, 44)
        Me.menuSave.Text = "Save"
        '
        'menuSaveAs
        '
        Me.menuSaveAs.Name = "menuSaveAs"
        Me.menuSaveAs.Size = New System.Drawing.Size(257, 44)
        Me.menuSaveAs.Text = "Save As"
        '
        'menuOpen
        '
        Me.menuOpen.Name = "menuOpen"
        Me.menuOpen.Size = New System.Drawing.Size(257, 44)
        Me.menuOpen.Text = "Open"
        '
        'ToolStripSeparator2
        '
        Me.ToolStripSeparator2.Name = "ToolStripSeparator2"
        Me.ToolStripSeparator2.Size = New System.Drawing.Size(254, 6)
        '
        'menuAutoSave
        '
        Me.menuAutoSave.Name = "menuAutoSave"
        Me.menuAutoSave.Size = New System.Drawing.Size(257, 44)
        Me.menuAutoSave.Text = "Auto Save"
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(254, 6)
        '
        'menuExit
        '
        Me.menuExit.Name = "menuExit"
        Me.menuExit.Size = New System.Drawing.Size(257, 44)
        Me.menuExit.Text = "Exit"
        '
        'menuView
        '
        Me.menuView.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.viewHour, Me.menuCharactersCounter, Me.viewSaveStatus})
        Me.menuView.Name = "menuView"
        Me.menuView.Size = New System.Drawing.Size(86, 38)
        Me.menuView.Text = "View"
        '
        'viewHour
        '
        Me.viewHour.Checked = True
        Me.viewHour.CheckState = System.Windows.Forms.CheckState.Checked
        Me.viewHour.Name = "viewHour"
        Me.viewHour.Size = New System.Drawing.Size(359, 44)
        Me.viewHour.Text = "Time"
        '
        'menuCharactersCounter
        '
        Me.menuCharactersCounter.Checked = True
        Me.menuCharactersCounter.CheckState = System.Windows.Forms.CheckState.Checked
        Me.menuCharactersCounter.Name = "menuCharactersCounter"
        Me.menuCharactersCounter.Size = New System.Drawing.Size(359, 44)
        Me.menuCharactersCounter.Text = "Characters Counter"
        '
        'viewSaveStatus
        '
        Me.viewSaveStatus.Checked = True
        Me.viewSaveStatus.CheckState = System.Windows.Forms.CheckState.Checked
        Me.viewSaveStatus.Name = "viewSaveStatus"
        Me.viewSaveStatus.Size = New System.Drawing.Size(359, 44)
        Me.viewSaveStatus.Text = "Save Status"
        '
        'textEditor
        '
        Me.textEditor.Location = New System.Drawing.Point(26, 64)
        Me.textEditor.Multiline = True
        Me.textEditor.Name = "textEditor"
        Me.textEditor.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.textEditor.Size = New System.Drawing.Size(1514, 914)
        Me.textEditor.TabIndex = 1
        '
        'OpenFileDialog1
        '
        Me.OpenFileDialog1.FileName = "OpenFileDialog1"
        '
        'statusStripBottom
        '
        Me.statusStripBottom.ImageScalingSize = New System.Drawing.Size(32, 32)
        Me.statusStripBottom.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.statusStripSaveProgressBar, Me.statusHour, Me.statusCharCount})
        Me.statusStripBottom.Location = New System.Drawing.Point(0, 993)
        Me.statusStripBottom.Name = "statusStripBottom"
        Me.statusStripBottom.Size = New System.Drawing.Size(1552, 42)
        Me.statusStripBottom.TabIndex = 2
        Me.statusStripBottom.Text = "StatusStrip1"
        '
        'statusStripSaveProgressBar
        '
        Me.statusStripSaveProgressBar.Name = "statusStripSaveProgressBar"
        Me.statusStripSaveProgressBar.Size = New System.Drawing.Size(100, 30)
        Me.statusStripSaveProgressBar.Value = 10
        '
        'statusHour
        '
        Me.statusHour.Name = "statusHour"
        Me.statusHour.Size = New System.Drawing.Size(130, 32)
        Me.statusHour.Text = "statusHour"
        '
        'statusCharCount
        '
        Me.statusCharCount.Name = "statusCharCount"
        Me.statusCharCount.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.statusCharCount.Size = New System.Drawing.Size(191, 32)
        Me.statusCharCount.Text = "statusCharCount"
        '
        'VScrollBar1
        '
        Me.VScrollBar1.Location = New System.Drawing.Point(2341, 43)
        Me.VScrollBar1.Name = "VScrollBar1"
        Me.VScrollBar1.Size = New System.Drawing.Size(24, 1100)
        Me.VScrollBar1.TabIndex = 3
        '
        'autosaveTimer
        '
        '
        'hourTimer
        '
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(12.0!, 25.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.Window
        Me.ClientSize = New System.Drawing.Size(1552, 1035)
        Me.Controls.Add(Me.VScrollBar1)
        Me.Controls.Add(Me.statusStripBottom)
        Me.Controls.Add(Me.textEditor)
        Me.Controls.Add(Me.MenuStrip1)
        Me.ForeColor = System.Drawing.SystemColors.ActiveCaptionText
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.statusStripBottom.ResumeLayout(False)
        Me.statusStripBottom.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents MenuStrip1 As MenuStrip
    Friend WithEvents menuFile As ToolStripMenuItem
    Friend WithEvents menuOpen As ToolStripMenuItem
    Friend WithEvents menuSave As ToolStripMenuItem
    Friend WithEvents menuExit As ToolStripMenuItem
    Friend WithEvents textEditor As TextBox
    Friend WithEvents OpenFileDialog1 As OpenFileDialog
    Friend WithEvents SaveFileDialog1 As SaveFileDialog
    Friend WithEvents statusStripBottom As StatusStrip
    Friend WithEvents VScrollBar1 As VScrollBar
    Friend WithEvents ToolStripSeparator2 As ToolStripSeparator
    Friend WithEvents statusCharCount As ToolStripStatusLabel
    Friend WithEvents menuView As ToolStripMenuItem
    Friend WithEvents menuCharactersCounter As ToolStripMenuItem
    Friend WithEvents menuAutoSave As ToolStripMenuItem
    Friend WithEvents ToolStripSeparator1 As ToolStripSeparator
    Friend WithEvents statusStripSaveProgressBar As ToolStripProgressBar
    Friend WithEvents autosaveTimer As Timer
    Friend WithEvents menuSaveAs As ToolStripMenuItem
    Friend WithEvents viewSaveStatus As ToolStripMenuItem
    Friend WithEvents statusHour As ToolStripStatusLabel
    Friend WithEvents hourTimer As Timer
    Friend WithEvents viewHour As ToolStripMenuItem
End Class
