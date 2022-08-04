<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
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
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.btnConnection = New System.Windows.Forms.Button()
        Me.gbxInputs = New System.Windows.Forms.GroupBox()
        Me.tbxVelocity = New System.Windows.Forms.TextBox()
        Me.lbDescritpionInputsVelocity = New System.Windows.Forms.Label()
        Me.tbVelocity = New System.Windows.Forms.TrackBar()
        Me.cbxY2 = New System.Windows.Forms.CheckBox()
        Me.cbxY1 = New System.Windows.Forms.CheckBox()
        Me.cbxY0 = New System.Windows.Forms.CheckBox()
        Me.gbxOutputs = New System.Windows.Forms.GroupBox()
        Me.cbxX3 = New System.Windows.Forms.CheckBox()
        Me.lbVelocity = New System.Windows.Forms.Label()
        Me.lbDescritpionOutputsVelocity = New System.Windows.Forms.Label()
        Me.cbxX2 = New System.Windows.Forms.CheckBox()
        Me.cbxX1 = New System.Windows.Forms.CheckBox()
        Me.cbxX0 = New System.Windows.Forms.CheckBox()
        Me.TimerReception = New System.Windows.Forms.Timer(Me.components)
        Me.gbxInputs.SuspendLayout()
        CType(Me.tbVelocity, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.gbxOutputs.SuspendLayout()
        Me.SuspendLayout()
        '
        'btnConnection
        '
        Me.btnConnection.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnConnection.Location = New System.Drawing.Point(14, 15)
        Me.btnConnection.Name = "btnConnection"
        Me.btnConnection.Size = New System.Drawing.Size(221, 33)
        Me.btnConnection.TabIndex = 0
        Me.btnConnection.Text = "Connect"
        Me.btnConnection.UseVisualStyleBackColor = True
        '
        'gbxInputs
        '
        Me.gbxInputs.Controls.Add(Me.tbxVelocity)
        Me.gbxInputs.Controls.Add(Me.lbDescritpionInputsVelocity)
        Me.gbxInputs.Controls.Add(Me.tbVelocity)
        Me.gbxInputs.Controls.Add(Me.cbxY2)
        Me.gbxInputs.Controls.Add(Me.cbxY1)
        Me.gbxInputs.Controls.Add(Me.cbxY0)
        Me.gbxInputs.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.gbxInputs.Location = New System.Drawing.Point(243, 7)
        Me.gbxInputs.Name = "gbxInputs"
        Me.gbxInputs.Size = New System.Drawing.Size(346, 132)
        Me.gbxInputs.TabIndex = 2
        Me.gbxInputs.TabStop = False
        Me.gbxInputs.Text = "Inputs"
        '
        'tbxVelocity
        '
        Me.tbxVelocity.Location = New System.Drawing.Point(285, 77)
        Me.tbxVelocity.MaxLength = 3
        Me.tbxVelocity.Name = "tbxVelocity"
        Me.tbxVelocity.ReadOnly = True
        Me.tbxVelocity.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.tbxVelocity.Size = New System.Drawing.Size(47, 24)
        Me.tbxVelocity.TabIndex = 5
        Me.tbxVelocity.Text = "XXX"
        Me.tbxVelocity.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'lbDescritpionInputsVelocity
        '
        Me.lbDescritpionInputsVelocity.AutoSize = True
        Me.lbDescritpionInputsVelocity.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbDescritpionInputsVelocity.Location = New System.Drawing.Point(138, 53)
        Me.lbDescritpionInputsVelocity.Name = "lbDescritpionInputsVelocity"
        Me.lbDescritpionInputsVelocity.Size = New System.Drawing.Size(64, 20)
        Me.lbDescritpionInputsVelocity.TabIndex = 4
        Me.lbDescritpionInputsVelocity.Text = "Velocity"
        '
        'tbVelocity
        '
        Me.tbVelocity.Location = New System.Drawing.Point(11, 74)
        Me.tbVelocity.Maximum = 100
        Me.tbVelocity.Name = "tbVelocity"
        Me.tbVelocity.Size = New System.Drawing.Size(267, 45)
        Me.tbVelocity.TabIndex = 3
        '
        'cbxY2
        '
        Me.cbxY2.AutoSize = True
        Me.cbxY2.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxY2.Location = New System.Drawing.Point(203, 19)
        Me.cbxY2.Name = "cbxY2"
        Me.cbxY2.Size = New System.Drawing.Size(44, 22)
        Me.cbxY2.TabIndex = 2
        Me.cbxY2.Text = "Y2"
        Me.cbxY2.UseVisualStyleBackColor = True
        '
        'cbxY1
        '
        Me.cbxY1.AutoSize = True
        Me.cbxY1.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxY1.Location = New System.Drawing.Point(153, 19)
        Me.cbxY1.Name = "cbxY1"
        Me.cbxY1.Size = New System.Drawing.Size(44, 22)
        Me.cbxY1.TabIndex = 1
        Me.cbxY1.Text = "Y1"
        Me.cbxY1.UseVisualStyleBackColor = True
        '
        'cbxY0
        '
        Me.cbxY0.AutoSize = True
        Me.cbxY0.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxY0.Location = New System.Drawing.Point(103, 19)
        Me.cbxY0.Name = "cbxY0"
        Me.cbxY0.Size = New System.Drawing.Size(44, 22)
        Me.cbxY0.TabIndex = 0
        Me.cbxY0.Text = "Y0"
        Me.cbxY0.UseVisualStyleBackColor = True
        '
        'gbxOutputs
        '
        Me.gbxOutputs.Controls.Add(Me.cbxX3)
        Me.gbxOutputs.Controls.Add(Me.lbVelocity)
        Me.gbxOutputs.Controls.Add(Me.lbDescritpionOutputsVelocity)
        Me.gbxOutputs.Controls.Add(Me.cbxX2)
        Me.gbxOutputs.Controls.Add(Me.cbxX1)
        Me.gbxOutputs.Controls.Add(Me.cbxX0)
        Me.gbxOutputs.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.gbxOutputs.Location = New System.Drawing.Point(14, 54)
        Me.gbxOutputs.Name = "gbxOutputs"
        Me.gbxOutputs.Size = New System.Drawing.Size(221, 85)
        Me.gbxOutputs.TabIndex = 4
        Me.gbxOutputs.TabStop = False
        Me.gbxOutputs.Text = "Outputs"
        '
        'cbxX3
        '
        Me.cbxX3.AutoSize = True
        Me.cbxX3.Enabled = False
        Me.cbxX3.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxX3.Location = New System.Drawing.Point(164, 23)
        Me.cbxX3.Name = "cbxX3"
        Me.cbxX3.Size = New System.Drawing.Size(45, 22)
        Me.cbxX3.TabIndex = 6
        Me.cbxX3.Text = "X3"
        Me.cbxX3.UseVisualStyleBackColor = True
        '
        'lbVelocity
        '
        Me.lbVelocity.AutoSize = True
        Me.lbVelocity.BackColor = System.Drawing.SystemColors.Window
        Me.lbVelocity.Location = New System.Drawing.Point(121, 52)
        Me.lbVelocity.Name = "lbVelocity"
        Me.lbVelocity.Padding = New System.Windows.Forms.Padding(3)
        Me.lbVelocity.Size = New System.Drawing.Size(44, 24)
        Me.lbVelocity.TabIndex = 5
        Me.lbVelocity.Text = "XXX"
        Me.lbVelocity.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbDescritpionOutputsVelocity
        '
        Me.lbDescritpionOutputsVelocity.AutoSize = True
        Me.lbDescritpionOutputsVelocity.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbDescritpionOutputsVelocity.Location = New System.Drawing.Point(47, 52)
        Me.lbDescritpionOutputsVelocity.Name = "lbDescritpionOutputsVelocity"
        Me.lbDescritpionOutputsVelocity.Size = New System.Drawing.Size(64, 20)
        Me.lbDescritpionOutputsVelocity.TabIndex = 4
        Me.lbDescritpionOutputsVelocity.Text = "Velocity"
        '
        'cbxX2
        '
        Me.cbxX2.AutoSize = True
        Me.cbxX2.Enabled = False
        Me.cbxX2.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxX2.Location = New System.Drawing.Point(114, 23)
        Me.cbxX2.Name = "cbxX2"
        Me.cbxX2.Size = New System.Drawing.Size(45, 22)
        Me.cbxX2.TabIndex = 2
        Me.cbxX2.Text = "X2"
        Me.cbxX2.UseVisualStyleBackColor = True
        '
        'cbxX1
        '
        Me.cbxX1.AutoSize = True
        Me.cbxX1.Enabled = False
        Me.cbxX1.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxX1.Location = New System.Drawing.Point(64, 23)
        Me.cbxX1.Name = "cbxX1"
        Me.cbxX1.Size = New System.Drawing.Size(45, 22)
        Me.cbxX1.TabIndex = 1
        Me.cbxX1.Text = "X1"
        Me.cbxX1.UseVisualStyleBackColor = True
        '
        'cbxX0
        '
        Me.cbxX0.AutoSize = True
        Me.cbxX0.Enabled = False
        Me.cbxX0.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxX0.Location = New System.Drawing.Point(14, 23)
        Me.cbxX0.Name = "cbxX0"
        Me.cbxX0.Size = New System.Drawing.Size(45, 22)
        Me.cbxX0.TabIndex = 0
        Me.cbxX0.Text = "X0"
        Me.cbxX0.UseVisualStyleBackColor = True
        '
        'TimerReception
        '
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(605, 152)
        Me.Controls.Add(Me.gbxOutputs)
        Me.Controls.Add(Me.gbxInputs)
        Me.Controls.Add(Me.btnConnection)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Name = "Form1"
        Me.Text = "Motor Client"
        Me.gbxInputs.ResumeLayout(False)
        Me.gbxInputs.PerformLayout()
        CType(Me.tbVelocity, System.ComponentModel.ISupportInitialize).EndInit()
        Me.gbxOutputs.ResumeLayout(False)
        Me.gbxOutputs.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents btnConnection As Button
    Friend WithEvents gbxInputs As GroupBox
    Friend WithEvents tbVelocity As TrackBar
    Friend WithEvents cbxY2 As CheckBox
    Friend WithEvents cbxY1 As CheckBox
    Friend WithEvents cbxY0 As CheckBox
    Friend WithEvents lbDescritpionInputsVelocity As Label
    Friend WithEvents gbxOutputs As GroupBox
    Friend WithEvents cbxX3 As CheckBox
    Friend WithEvents lbVelocity As Label
    Friend WithEvents lbDescritpionOutputsVelocity As Label
    Friend WithEvents cbxX2 As CheckBox
    Friend WithEvents cbxX1 As CheckBox
    Friend WithEvents cbxX0 As CheckBox
    Friend WithEvents TimerReception As Timer
    Friend WithEvents tbxVelocity As TextBox
End Class
