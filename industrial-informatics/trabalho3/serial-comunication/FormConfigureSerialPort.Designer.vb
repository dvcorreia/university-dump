<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormConfigureSerialPort
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
        Me.cbxBaurate = New System.Windows.Forms.ComboBox()
        Me.lblBaudrate = New System.Windows.Forms.Label()
        Me.lblParityBits = New System.Windows.Forms.Label()
        Me.cbxParityBits = New System.Windows.Forms.ComboBox()
        Me.lblStopBits = New System.Windows.Forms.Label()
        Me.cbxStopBits = New System.Windows.Forms.ComboBox()
        Me.btnApply = New System.Windows.Forms.Button()
        Me.lblCOM = New System.Windows.Forms.Label()
        Me.cbxCOM = New System.Windows.Forms.ComboBox()
        Me.btnCancel = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'cbxBaurate
        '
        Me.cbxBaurate.Font = New System.Drawing.Font("Microsoft Sans Serif", 13.875!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxBaurate.FormattingEnabled = True
        Me.cbxBaurate.Location = New System.Drawing.Point(18, 99)
        Me.cbxBaurate.Margin = New System.Windows.Forms.Padding(2)
        Me.cbxBaurate.Name = "cbxBaurate"
        Me.cbxBaurate.Size = New System.Drawing.Size(272, 30)
        Me.cbxBaurate.TabIndex = 0
        '
        'lblBaudrate
        '
        Me.lblBaudrate.AutoSize = True
        Me.lblBaudrate.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblBaudrate.Location = New System.Drawing.Point(14, 73)
        Me.lblBaudrate.Name = "lblBaudrate"
        Me.lblBaudrate.Size = New System.Drawing.Size(90, 24)
        Me.lblBaudrate.TabIndex = 1
        Me.lblBaudrate.Text = "Baud rate"
        '
        'lblParityBits
        '
        Me.lblParityBits.AutoSize = True
        Me.lblParityBits.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblParityBits.Location = New System.Drawing.Point(13, 140)
        Me.lblParityBits.Name = "lblParityBits"
        Me.lblParityBits.Size = New System.Drawing.Size(89, 24)
        Me.lblParityBits.TabIndex = 3
        Me.lblParityBits.Text = "Parity Bits"
        '
        'cbxParityBits
        '
        Me.cbxParityBits.Font = New System.Drawing.Font("Microsoft Sans Serif", 13.875!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxParityBits.FormattingEnabled = True
        Me.cbxParityBits.Location = New System.Drawing.Point(18, 166)
        Me.cbxParityBits.Margin = New System.Windows.Forms.Padding(2)
        Me.cbxParityBits.Name = "cbxParityBits"
        Me.cbxParityBits.Size = New System.Drawing.Size(272, 30)
        Me.cbxParityBits.TabIndex = 2
        '
        'lblStopBits
        '
        Me.lblStopBits.AutoSize = True
        Me.lblStopBits.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblStopBits.Location = New System.Drawing.Point(14, 208)
        Me.lblStopBits.Name = "lblStopBits"
        Me.lblStopBits.Size = New System.Drawing.Size(82, 24)
        Me.lblStopBits.TabIndex = 5
        Me.lblStopBits.Text = "Stop Bits"
        '
        'cbxStopBits
        '
        Me.cbxStopBits.Font = New System.Drawing.Font("Microsoft Sans Serif", 13.875!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxStopBits.FormattingEnabled = True
        Me.cbxStopBits.Location = New System.Drawing.Point(17, 234)
        Me.cbxStopBits.Margin = New System.Windows.Forms.Padding(2)
        Me.cbxStopBits.Name = "cbxStopBits"
        Me.cbxStopBits.Size = New System.Drawing.Size(273, 30)
        Me.cbxStopBits.TabIndex = 4
        '
        'btnApply
        '
        Me.btnApply.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnApply.Location = New System.Drawing.Point(136, 291)
        Me.btnApply.Name = "btnApply"
        Me.btnApply.Size = New System.Drawing.Size(154, 40)
        Me.btnApply.TabIndex = 6
        Me.btnApply.Text = "Apply"
        Me.btnApply.UseVisualStyleBackColor = True
        '
        'lblCOM
        '
        Me.lblCOM.AutoSize = True
        Me.lblCOM.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblCOM.Location = New System.Drawing.Point(12, 9)
        Me.lblCOM.Name = "lblCOM"
        Me.lblCOM.Size = New System.Drawing.Size(92, 24)
        Me.lblCOM.TabIndex = 8
        Me.lblCOM.Text = "COM Port"
        '
        'cbxCOM
        '
        Me.cbxCOM.Font = New System.Drawing.Font("Microsoft Sans Serif", 13.875!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbxCOM.FormattingEnabled = True
        Me.cbxCOM.Location = New System.Drawing.Point(16, 35)
        Me.cbxCOM.Margin = New System.Windows.Forms.Padding(2)
        Me.cbxCOM.Name = "cbxCOM"
        Me.cbxCOM.Size = New System.Drawing.Size(274, 30)
        Me.cbxCOM.TabIndex = 7
        '
        'btnCancel
        '
        Me.btnCancel.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnCancel.Location = New System.Drawing.Point(18, 291)
        Me.btnCancel.Name = "btnCancel"
        Me.btnCancel.Size = New System.Drawing.Size(112, 40)
        Me.btnCancel.TabIndex = 9
        Me.btnCancel.Text = "Cancel"
        Me.btnCancel.UseVisualStyleBackColor = True
        '
        'FormConfigureSerialPort
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(306, 343)
        Me.Controls.Add(Me.btnCancel)
        Me.Controls.Add(Me.lblCOM)
        Me.Controls.Add(Me.cbxCOM)
        Me.Controls.Add(Me.btnApply)
        Me.Controls.Add(Me.lblStopBits)
        Me.Controls.Add(Me.cbxStopBits)
        Me.Controls.Add(Me.lblParityBits)
        Me.Controls.Add(Me.cbxParityBits)
        Me.Controls.Add(Me.lblBaudrate)
        Me.Controls.Add(Me.cbxBaurate)
        Me.Margin = New System.Windows.Forms.Padding(2)
        Me.Name = "FormConfigureSerialPort"
        Me.Text = "FormConfigureSerialPort"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents cbxBaurate As ComboBox
    Friend WithEvents lblBaudrate As Label
    Friend WithEvents lblParityBits As Label
    Friend WithEvents cbxParityBits As ComboBox
    Friend WithEvents lblStopBits As Label
    Friend WithEvents cbxStopBits As ComboBox
    Friend WithEvents btnApply As Button
    Friend WithEvents lblCOM As Label
    Friend WithEvents cbxCOM As ComboBox
    Friend WithEvents btnCancel As Button
End Class
