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
        Me.btnONOFF = New System.Windows.Forms.Button()
        Me.gbxInputs = New System.Windows.Forms.GroupBox()
        Me.cbxY2 = New System.Windows.Forms.CheckBox()
        Me.lbVelocity = New System.Windows.Forms.Label()
        Me.lbDescritpionControlVelocity = New System.Windows.Forms.Label()
        Me.cbxY1 = New System.Windows.Forms.CheckBox()
        Me.cbxY0 = New System.Windows.Forms.CheckBox()
        Me.tbxVelocity = New System.Windows.Forms.TextBox()
        Me.gbxOutputs = New System.Windows.Forms.GroupBox()
        Me.cbxX3 = New System.Windows.Forms.CheckBox()
        Me.lbDescritpionRealVelocity = New System.Windows.Forms.Label()
        Me.cbxX2 = New System.Windows.Forms.CheckBox()
        Me.cbxX1 = New System.Windows.Forms.CheckBox()
        Me.cbxX0 = New System.Windows.Forms.CheckBox()
        Me.TimerReceive = New System.Windows.Forms.Timer(Me.components)
        Me.tbxHistory = New System.Windows.Forms.TextBox()
        Me.TimerSend = New System.Windows.Forms.Timer(Me.components)
        Me.TimerVerifyConnection = New System.Windows.Forms.Timer(Me.components)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.tbxClientStatus = New System.Windows.Forms.TextBox()
        Me.gbxInputs.SuspendLayout()
        Me.gbxOutputs.SuspendLayout()
        Me.SuspendLayout()
        '
        'btnONOFF
        '
        Me.btnONOFF.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnONOFF.Location = New System.Drawing.Point(12, 160)
        Me.btnONOFF.Name = "btnONOFF"
        Me.btnONOFF.Size = New System.Drawing.Size(346, 33)
        Me.btnONOFF.TabIndex = 0
        Me.btnONOFF.Text = "Ligar"
        Me.btnONOFF.UseVisualStyleBackColor = True
        '
        'gbxInputs
        '
        Me.gbxInputs.Controls.Add(Me.cbxY2)
        Me.gbxInputs.Controls.Add(Me.lbVelocity)
        Me.gbxInputs.Controls.Add(Me.lbDescritpionControlVelocity)
        Me.gbxInputs.Controls.Add(Me.cbxY1)
        Me.gbxInputs.Controls.Add(Me.cbxY0)
        Me.gbxInputs.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.gbxInputs.Location = New System.Drawing.Point(12, 12)
        Me.gbxInputs.Name = "gbxInputs"
        Me.gbxInputs.Size = New System.Drawing.Size(346, 64)
        Me.gbxInputs.TabIndex = 2
        Me.gbxInputs.TabStop = False
        '
        'cbxY2
        '
        Me.cbxY2.AutoSize = True
        Me.cbxY2.Enabled = False
        Me.cbxY2.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxY2.Location = New System.Drawing.Point(137, 25)
        Me.cbxY2.Name = "cbxY2"
        Me.cbxY2.Size = New System.Drawing.Size(44, 22)
        Me.cbxY2.TabIndex = 2
        Me.cbxY2.Text = "Y2"
        Me.cbxY2.UseVisualStyleBackColor = True
        '
        'lbVelocity
        '
        Me.lbVelocity.AutoSize = True
        Me.lbVelocity.BackColor = System.Drawing.SystemColors.Window
        Me.lbVelocity.Location = New System.Drawing.Point(264, 23)
        Me.lbVelocity.Name = "lbVelocity"
        Me.lbVelocity.Padding = New System.Windows.Forms.Padding(3)
        Me.lbVelocity.Size = New System.Drawing.Size(44, 24)
        Me.lbVelocity.TabIndex = 5
        Me.lbVelocity.Text = "XXX"
        Me.lbVelocity.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbDescritpionControlVelocity
        '
        Me.lbDescritpionControlVelocity.AutoSize = True
        Me.lbDescritpionControlVelocity.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbDescritpionControlVelocity.Location = New System.Drawing.Point(194, 25)
        Me.lbDescritpionControlVelocity.Name = "lbDescritpionControlVelocity"
        Me.lbDescritpionControlVelocity.Size = New System.Drawing.Size(64, 20)
        Me.lbDescritpionControlVelocity.TabIndex = 4
        Me.lbDescritpionControlVelocity.Text = "Velocity"
        '
        'cbxY1
        '
        Me.cbxY1.AutoSize = True
        Me.cbxY1.Enabled = False
        Me.cbxY1.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxY1.Location = New System.Drawing.Point(87, 25)
        Me.cbxY1.Name = "cbxY1"
        Me.cbxY1.Size = New System.Drawing.Size(44, 22)
        Me.cbxY1.TabIndex = 1
        Me.cbxY1.Text = "Y1"
        Me.cbxY1.UseVisualStyleBackColor = True
        '
        'cbxY0
        '
        Me.cbxY0.AutoSize = True
        Me.cbxY0.Enabled = False
        Me.cbxY0.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxY0.Location = New System.Drawing.Point(37, 25)
        Me.cbxY0.Name = "cbxY0"
        Me.cbxY0.Size = New System.Drawing.Size(44, 22)
        Me.cbxY0.TabIndex = 0
        Me.cbxY0.Text = "Y0"
        Me.cbxY0.UseVisualStyleBackColor = True
        '
        'tbxVelocity
        '
        Me.tbxVelocity.Location = New System.Drawing.Point(285, 22)
        Me.tbxVelocity.Name = "tbxVelocity"
        Me.tbxVelocity.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.tbxVelocity.Size = New System.Drawing.Size(47, 24)
        Me.tbxVelocity.TabIndex = 5
        Me.tbxVelocity.Text = "XXX"
        Me.tbxVelocity.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'gbxOutputs
        '
        Me.gbxOutputs.Controls.Add(Me.tbxVelocity)
        Me.gbxOutputs.Controls.Add(Me.cbxX3)
        Me.gbxOutputs.Controls.Add(Me.lbDescritpionRealVelocity)
        Me.gbxOutputs.Controls.Add(Me.cbxX2)
        Me.gbxOutputs.Controls.Add(Me.cbxX1)
        Me.gbxOutputs.Controls.Add(Me.cbxX0)
        Me.gbxOutputs.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.gbxOutputs.Location = New System.Drawing.Point(12, 82)
        Me.gbxOutputs.Name = "gbxOutputs"
        Me.gbxOutputs.Size = New System.Drawing.Size(346, 65)
        Me.gbxOutputs.TabIndex = 4
        Me.gbxOutputs.TabStop = False
        '
        'cbxX3
        '
        Me.cbxX3.AutoSize = True
        Me.cbxX3.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxX3.Location = New System.Drawing.Point(164, 23)
        Me.cbxX3.Name = "cbxX3"
        Me.cbxX3.Size = New System.Drawing.Size(45, 22)
        Me.cbxX3.TabIndex = 6
        Me.cbxX3.Text = "X3"
        Me.cbxX3.UseVisualStyleBackColor = True
        '
        'lbDescritpionRealVelocity
        '
        Me.lbDescritpionRealVelocity.AutoSize = True
        Me.lbDescritpionRealVelocity.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbDescritpionRealVelocity.Location = New System.Drawing.Point(215, 24)
        Me.lbDescritpionRealVelocity.Name = "lbDescritpionRealVelocity"
        Me.lbDescritpionRealVelocity.Size = New System.Drawing.Size(64, 20)
        Me.lbDescritpionRealVelocity.TabIndex = 4
        Me.lbDescritpionRealVelocity.Text = "Velocity"
        '
        'cbxX2
        '
        Me.cbxX2.AutoSize = True
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
        Me.cbxX0.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxX0.Location = New System.Drawing.Point(14, 23)
        Me.cbxX0.Name = "cbxX0"
        Me.cbxX0.Size = New System.Drawing.Size(45, 22)
        Me.cbxX0.TabIndex = 0
        Me.cbxX0.Text = "X0"
        Me.cbxX0.UseVisualStyleBackColor = True
        '
        'TimerReceive
        '
        '
        'tbxHistory
        '
        Me.tbxHistory.Location = New System.Drawing.Point(12, 223)
        Me.tbxHistory.Multiline = True
        Me.tbxHistory.Name = "tbxHistory"
        Me.tbxHistory.ReadOnly = True
        Me.tbxHistory.Size = New System.Drawing.Size(346, 149)
        Me.tbxHistory.TabIndex = 5
        '
        'TimerSend
        '
        '
        'TimerVerifyConnection
        '
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(61, 4)
        '
        'tbxClientStatus
        '
        Me.tbxClientStatus.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tbxClientStatus.Location = New System.Drawing.Point(76, 196)
        Me.tbxClientStatus.Name = "tbxClientStatus"
        Me.tbxClientStatus.Size = New System.Drawing.Size(223, 24)
        Me.tbxClientStatus.TabIndex = 8
        Me.tbxClientStatus.Text = "Connection Status"
        Me.tbxClientStatus.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(371, 391)
        Me.Controls.Add(Me.tbxClientStatus)
        Me.Controls.Add(Me.tbxHistory)
        Me.Controls.Add(Me.gbxOutputs)
        Me.Controls.Add(Me.gbxInputs)
        Me.Controls.Add(Me.btnONOFF)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Name = "Form1"
        Me.Text = "Motor Server"
        Me.gbxInputs.ResumeLayout(False)
        Me.gbxInputs.PerformLayout()
        Me.gbxOutputs.ResumeLayout(False)
        Me.gbxOutputs.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents btnONOFF As Button
    Friend WithEvents gbxInputs As GroupBox
    Friend WithEvents cbxY2 As CheckBox
    Friend WithEvents cbxY1 As CheckBox
    Friend WithEvents cbxY0 As CheckBox
    Friend WithEvents gbxOutputs As GroupBox
    Friend WithEvents cbxX3 As CheckBox
    Friend WithEvents lbVelocity As Label
    Friend WithEvents lbDescritpionRealVelocity As Label
    Friend WithEvents cbxX2 As CheckBox
    Friend WithEvents cbxX1 As CheckBox
    Friend WithEvents cbxX0 As CheckBox
    Friend WithEvents TimerReceive As Timer
    Friend WithEvents tbxVelocity As TextBox
    Friend WithEvents lbDescritpionControlVelocity As Label
    Friend WithEvents tbxHistory As TextBox
    Friend WithEvents TimerSend As Timer
    Friend WithEvents TimerVerifyConnection As Timer
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents tbxClientStatus As TextBox
End Class
