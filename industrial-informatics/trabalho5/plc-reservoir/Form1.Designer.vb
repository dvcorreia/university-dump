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
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.btnConfigurePort = New System.Windows.Forms.Button()
        Me.btnY0 = New System.Windows.Forms.Button()
        Me.btnY1 = New System.Windows.Forms.Button()
        Me.btnY2 = New System.Windows.Forms.Button()
        Me.txtReceivedData = New System.Windows.Forms.TextBox()
        Me.txtSendData = New System.Windows.Forms.TextBox()
        Me.lbReceivedMsg = New System.Windows.Forms.Label()
        Me.lbSendMsg = New System.Windows.Forms.Label()
        Me.lbPump = New System.Windows.Forms.Label()
        Me.lbValvesIN = New System.Windows.Forms.Label()
        Me.lbValvesOUT = New System.Windows.Forms.Label()
        Me.txtWarnings = New System.Windows.Forms.TextBox()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.picY0 = New System.Windows.Forms.PictureBox()
        Me.picY1 = New System.Windows.Forms.PictureBox()
        Me.picY2 = New System.Windows.Forms.PictureBox()
        Me.BindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.cbxX3 = New System.Windows.Forms.CheckBox()
        Me.cbxX2 = New System.Windows.Forms.CheckBox()
        Me.cbxX1 = New System.Windows.Forms.CheckBox()
        Me.cbxX0 = New System.Windows.Forms.CheckBox()
        Me.lbLvl = New System.Windows.Forms.Label()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picY0, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picY1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picY2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.BindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.BackgroundImage = Global.plc_reservoir.My.Resources.Resources.reservoir_no_labels
        Me.PictureBox1.InitialImage = Global.plc_reservoir.My.Resources.Resources.reservoir_no_labels
        Me.PictureBox1.Location = New System.Drawing.Point(22, 43)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(715, 333)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'btnConfigurePort
        '
        Me.btnConfigurePort.Location = New System.Drawing.Point(12, 12)
        Me.btnConfigurePort.Name = "btnConfigurePort"
        Me.btnConfigurePort.Size = New System.Drawing.Size(145, 37)
        Me.btnConfigurePort.TabIndex = 1
        Me.btnConfigurePort.Text = "Configure Serial Port"
        Me.btnConfigurePort.UseVisualStyleBackColor = True
        '
        'btnY0
        '
        Me.btnY0.Location = New System.Drawing.Point(22, 344)
        Me.btnY0.Name = "btnY0"
        Me.btnY0.Size = New System.Drawing.Size(113, 37)
        Me.btnY0.TabIndex = 2
        Me.btnY0.Text = "ON"
        Me.btnY0.UseVisualStyleBackColor = True
        '
        'btnY1
        '
        Me.btnY1.Location = New System.Drawing.Point(184, 266)
        Me.btnY1.Name = "btnY1"
        Me.btnY1.Size = New System.Drawing.Size(113, 37)
        Me.btnY1.TabIndex = 3
        Me.btnY1.Text = "ON"
        Me.btnY1.UseVisualStyleBackColor = True
        '
        'btnY2
        '
        Me.btnY2.Location = New System.Drawing.Point(591, 348)
        Me.btnY2.Name = "btnY2"
        Me.btnY2.Size = New System.Drawing.Size(113, 37)
        Me.btnY2.TabIndex = 4
        Me.btnY2.Text = "ON"
        Me.btnY2.UseVisualStyleBackColor = True
        '
        'txtReceivedData
        '
        Me.txtReceivedData.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtReceivedData.Location = New System.Drawing.Point(188, 23)
        Me.txtReceivedData.Name = "txtReceivedData"
        Me.txtReceivedData.Size = New System.Drawing.Size(261, 26)
        Me.txtReceivedData.TabIndex = 5
        '
        'txtSendData
        '
        Me.txtSendData.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtSendData.Location = New System.Drawing.Point(476, 23)
        Me.txtSendData.Name = "txtSendData"
        Me.txtSendData.Size = New System.Drawing.Size(261, 26)
        Me.txtSendData.TabIndex = 6
        '
        'lbReceivedMsg
        '
        Me.lbReceivedMsg.AutoSize = True
        Me.lbReceivedMsg.Location = New System.Drawing.Point(188, 4)
        Me.lbReceivedMsg.Name = "lbReceivedMsg"
        Me.lbReceivedMsg.Size = New System.Drawing.Size(117, 13)
        Me.lbReceivedMsg.TabIndex = 14
        Me.lbReceivedMsg.Text = "Msg received from PLC"
        '
        'lbSendMsg
        '
        Me.lbSendMsg.AutoSize = True
        Me.lbSendMsg.Location = New System.Drawing.Point(473, 4)
        Me.lbSendMsg.Name = "lbSendMsg"
        Me.lbSendMsg.Size = New System.Drawing.Size(100, 13)
        Me.lbSendMsg.TabIndex = 15
        Me.lbSendMsg.Text = "Msg to send to PLC"
        '
        'lbPump
        '
        Me.lbPump.AutoSize = True
        Me.lbPump.Location = New System.Drawing.Point(50, 143)
        Me.lbPump.Name = "lbPump"
        Me.lbPump.Size = New System.Drawing.Size(61, 13)
        Me.lbPump.TabIndex = 16
        Me.lbPump.Text = "Pumps [Y0]"
        '
        'lbValvesIN
        '
        Me.lbValvesIN.AutoSize = True
        Me.lbValvesIN.Location = New System.Drawing.Point(206, 115)
        Me.lbValvesIN.Name = "lbValvesIN"
        Me.lbValvesIN.Size = New System.Drawing.Size(75, 13)
        Me.lbValvesIN.TabIndex = 17
        Me.lbValvesIN.Text = "Valves IN [Y1]"
        '
        'lbValvesOUT
        '
        Me.lbValvesOUT.AutoSize = True
        Me.lbValvesOUT.Location = New System.Drawing.Point(604, 196)
        Me.lbValvesOUT.Name = "lbValvesOUT"
        Me.lbValvesOUT.Size = New System.Drawing.Size(87, 13)
        Me.lbValvesOUT.TabIndex = 18
        Me.lbValvesOUT.Text = "Valves OUT [Y2]"
        '
        'txtWarnings
        '
        Me.txtWarnings.BackColor = System.Drawing.SystemColors.Window
        Me.txtWarnings.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtWarnings.Font = New System.Drawing.Font("Microsoft Sans Serif", 26.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtWarnings.Location = New System.Drawing.Point(22, 393)
        Me.txtWarnings.Name = "txtWarnings"
        Me.txtWarnings.ReadOnly = True
        Me.txtWarnings.Size = New System.Drawing.Size(715, 40)
        Me.txtWarnings.TabIndex = 19
        Me.txtWarnings.Text = "Warnings"
        Me.txtWarnings.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Timer1
        '
        '
        'picY0
        '
        Me.picY0.Image = Global.plc_reservoir.My.Resources.Resources.led_red
        Me.picY0.Location = New System.Drawing.Point(44, 268)
        Me.picY0.Name = "picY0"
        Me.picY0.Size = New System.Drawing.Size(70, 70)
        Me.picY0.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picY0.TabIndex = 20
        Me.picY0.TabStop = False
        '
        'picY1
        '
        Me.picY1.Image = Global.plc_reservoir.My.Resources.Resources.led_red
        Me.picY1.Location = New System.Drawing.Point(205, 190)
        Me.picY1.Name = "picY1"
        Me.picY1.Size = New System.Drawing.Size(70, 70)
        Me.picY1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picY1.TabIndex = 21
        Me.picY1.TabStop = False
        '
        'picY2
        '
        Me.picY2.Image = Global.plc_reservoir.My.Resources.Resources.led_red
        Me.picY2.Location = New System.Drawing.Point(611, 273)
        Me.picY2.Name = "picY2"
        Me.picY2.Size = New System.Drawing.Size(70, 70)
        Me.picY2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picY2.TabIndex = 22
        Me.picY2.TabStop = False
        '
        'cbxX3
        '
        Me.cbxX3.AutoSize = True
        Me.cbxX3.Enabled = False
        Me.cbxX3.Location = New System.Drawing.Point(493, 109)
        Me.cbxX3.Name = "cbxX3"
        Me.cbxX3.Size = New System.Drawing.Size(91, 17)
        Me.cbxX3.TabIndex = 23
        Me.cbxX3.Text = "X3_AlarmMax"
        Me.cbxX3.UseVisualStyleBackColor = True
        '
        'cbxX2
        '
        Me.cbxX2.AutoSize = True
        Me.cbxX2.Enabled = False
        Me.cbxX2.Location = New System.Drawing.Point(493, 140)
        Me.cbxX2.Name = "cbxX2"
        Me.cbxX2.Size = New System.Drawing.Size(61, 17)
        Me.cbxX2.TabIndex = 24
        Me.cbxX2.Text = "X2_Full"
        Me.cbxX2.UseVisualStyleBackColor = True
        '
        'cbxX1
        '
        Me.cbxX1.AutoSize = True
        Me.cbxX1.Enabled = False
        Me.cbxX1.Location = New System.Drawing.Point(493, 228)
        Me.cbxX1.Name = "cbxX1"
        Me.cbxX1.Size = New System.Drawing.Size(74, 17)
        Me.cbxX1.TabIndex = 25
        Me.cbxX1.Text = "X1_Empty"
        Me.cbxX1.UseVisualStyleBackColor = True
        '
        'cbxX0
        '
        Me.cbxX0.AutoSize = True
        Me.cbxX0.Enabled = False
        Me.cbxX0.Location = New System.Drawing.Point(493, 278)
        Me.cbxX0.Name = "cbxX0"
        Me.cbxX0.Size = New System.Drawing.Size(100, 17)
        Me.cbxX0.TabIndex = 26
        Me.cbxX0.Text = "X0_AlarmEmpty"
        Me.cbxX0.UseVisualStyleBackColor = True
        '
        'lbLvl
        '
        Me.lbLvl.AutoSize = True
        Me.lbLvl.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbLvl.Location = New System.Drawing.Point(375, 59)
        Me.lbLvl.Name = "lbLvl"
        Me.lbLvl.Size = New System.Drawing.Size(69, 29)
        Me.lbLvl.TabIndex = 27
        Me.lbLvl.Text = "XX%"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.Window
        Me.ClientSize = New System.Drawing.Size(761, 445)
        Me.Controls.Add(Me.lbLvl)
        Me.Controls.Add(Me.cbxX0)
        Me.Controls.Add(Me.cbxX1)
        Me.Controls.Add(Me.cbxX2)
        Me.Controls.Add(Me.cbxX3)
        Me.Controls.Add(Me.picY2)
        Me.Controls.Add(Me.picY1)
        Me.Controls.Add(Me.picY0)
        Me.Controls.Add(Me.txtWarnings)
        Me.Controls.Add(Me.lbValvesOUT)
        Me.Controls.Add(Me.lbValvesIN)
        Me.Controls.Add(Me.lbPump)
        Me.Controls.Add(Me.lbSendMsg)
        Me.Controls.Add(Me.lbReceivedMsg)
        Me.Controls.Add(Me.txtSendData)
        Me.Controls.Add(Me.txtReceivedData)
        Me.Controls.Add(Me.btnY2)
        Me.Controls.Add(Me.btnY1)
        Me.Controls.Add(Me.btnY0)
        Me.Controls.Add(Me.btnConfigurePort)
        Me.Controls.Add(Me.PictureBox1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picY0, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picY1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picY2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.BindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents btnConfigurePort As Button
    Friend WithEvents btnY0 As Button
    Friend WithEvents btnY1 As Button
    Friend WithEvents btnY2 As Button
    Friend WithEvents txtReceivedData As TextBox
    Friend WithEvents txtSendData As TextBox
    Friend WithEvents lbReceivedMsg As Label
    Friend WithEvents lbSendMsg As Label
    Friend WithEvents lbPump As Label
    Friend WithEvents lbValvesIN As Label
    Friend WithEvents lbValvesOUT As Label
    Friend WithEvents txtWarnings As TextBox
    Friend WithEvents Timer1 As Timer
    Friend WithEvents picY0 As PictureBox
    Friend WithEvents picY1 As PictureBox
    Friend WithEvents picY2 As PictureBox
    Friend WithEvents BindingSource1 As BindingSource
    Friend WithEvents cbxX3 As CheckBox
    Friend WithEvents cbxX2 As CheckBox
    Friend WithEvents cbxX1 As CheckBox
    Friend WithEvents cbxX0 As CheckBox
    Friend WithEvents lbLvl As Label
End Class
