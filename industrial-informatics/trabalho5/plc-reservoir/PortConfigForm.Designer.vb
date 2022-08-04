<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class PortConfigForm
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
        Me.cbxCOM = New System.Windows.Forms.ComboBox()
        Me.lbCOM = New System.Windows.Forms.Label()
        Me.lbBaud = New System.Windows.Forms.Label()
        Me.cbxBaud = New System.Windows.Forms.ComboBox()
        Me.lbStopBits = New System.Windows.Forms.Label()
        Me.cbxStopBits = New System.Windows.Forms.ComboBox()
        Me.lbParityBits = New System.Windows.Forms.Label()
        Me.cbxParityBits = New System.Windows.Forms.ComboBox()
        Me.btnCancel = New System.Windows.Forms.Button()
        Me.btnApply = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'cbxCOM
        '
        Me.cbxCOM.FormattingEnabled = True
        Me.cbxCOM.Location = New System.Drawing.Point(12, 36)
        Me.cbxCOM.Name = "cbxCOM"
        Me.cbxCOM.Size = New System.Drawing.Size(167, 21)
        Me.cbxCOM.TabIndex = 0
        '
        'lbCOM
        '
        Me.lbCOM.AutoSize = True
        Me.lbCOM.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbCOM.Location = New System.Drawing.Point(12, 15)
        Me.lbCOM.Name = "lbCOM"
        Me.lbCOM.Size = New System.Drawing.Size(76, 18)
        Me.lbCOM.TabIndex = 1
        Me.lbCOM.Text = "COM Port"
        '
        'lbBaud
        '
        Me.lbBaud.AutoSize = True
        Me.lbBaud.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbBaud.Location = New System.Drawing.Point(12, 72)
        Me.lbBaud.Name = "lbBaud"
        Me.lbBaud.Size = New System.Drawing.Size(77, 18)
        Me.lbBaud.TabIndex = 3
        Me.lbBaud.Text = "Baud Rate"
        '
        'cbxBaud
        '
        Me.cbxBaud.FormattingEnabled = True
        Me.cbxBaud.Location = New System.Drawing.Point(12, 93)
        Me.cbxBaud.Name = "cbxBaud"
        Me.cbxBaud.Size = New System.Drawing.Size(167, 21)
        Me.cbxBaud.TabIndex = 2
        '
        'lbStopBits
        '
        Me.lbStopBits.AutoSize = True
        Me.lbStopBits.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbStopBits.Location = New System.Drawing.Point(12, 130)
        Me.lbStopBits.Name = "lbStopBits"
        Me.lbStopBits.Size = New System.Drawing.Size(68, 18)
        Me.lbStopBits.TabIndex = 5
        Me.lbStopBits.Text = "Stop Bits"
        '
        'cbxStopBits
        '
        Me.cbxStopBits.FormattingEnabled = True
        Me.cbxStopBits.Location = New System.Drawing.Point(12, 151)
        Me.cbxStopBits.Name = "cbxStopBits"
        Me.cbxStopBits.Size = New System.Drawing.Size(167, 21)
        Me.cbxStopBits.TabIndex = 4
        '
        'lbParityBits
        '
        Me.lbParityBits.AutoSize = True
        Me.lbParityBits.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbParityBits.Location = New System.Drawing.Point(12, 189)
        Me.lbParityBits.Name = "lbParityBits"
        Me.lbParityBits.Size = New System.Drawing.Size(74, 18)
        Me.lbParityBits.TabIndex = 7
        Me.lbParityBits.Text = "Parity Bits"
        '
        'cbxParityBits
        '
        Me.cbxParityBits.FormattingEnabled = True
        Me.cbxParityBits.Location = New System.Drawing.Point(12, 210)
        Me.cbxParityBits.Name = "cbxParityBits"
        Me.cbxParityBits.Size = New System.Drawing.Size(167, 21)
        Me.cbxParityBits.TabIndex = 6
        '
        'btnCancel
        '
        Me.btnCancel.Location = New System.Drawing.Point(12, 250)
        Me.btnCancel.Name = "btnCancel"
        Me.btnCancel.Size = New System.Drawing.Size(75, 23)
        Me.btnCancel.TabIndex = 8
        Me.btnCancel.Text = "Cancel"
        Me.btnCancel.UseVisualStyleBackColor = True
        '
        'btnApply
        '
        Me.btnApply.Location = New System.Drawing.Point(104, 250)
        Me.btnApply.Name = "btnApply"
        Me.btnApply.Size = New System.Drawing.Size(75, 23)
        Me.btnApply.TabIndex = 9
        Me.btnApply.Text = "Apply"
        Me.btnApply.UseVisualStyleBackColor = True
        '
        'PortConfigForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(191, 285)
        Me.Controls.Add(Me.btnApply)
        Me.Controls.Add(Me.btnCancel)
        Me.Controls.Add(Me.lbParityBits)
        Me.Controls.Add(Me.cbxParityBits)
        Me.Controls.Add(Me.lbStopBits)
        Me.Controls.Add(Me.cbxStopBits)
        Me.Controls.Add(Me.lbBaud)
        Me.Controls.Add(Me.cbxBaud)
        Me.Controls.Add(Me.lbCOM)
        Me.Controls.Add(Me.cbxCOM)
        Me.Name = "PortConfigForm"
        Me.Text = "PortConfigForm"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents cbxCOM As ComboBox
    Friend WithEvents lbCOM As Label
    Friend WithEvents lbBaud As Label
    Friend WithEvents cbxBaud As ComboBox
    Friend WithEvents lbStopBits As Label
    Friend WithEvents cbxStopBits As ComboBox
    Friend WithEvents lbParityBits As Label
    Friend WithEvents cbxParityBits As ComboBox
    Friend WithEvents btnCancel As Button
    Friend WithEvents btnApply As Button
End Class
