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
        Me.txtSendData = New System.Windows.Forms.TextBox()
        Me.txtReceivedData = New System.Windows.Forms.TextBox()
        Me.lbSendData = New System.Windows.Forms.Label()
        Me.lbReceivedData = New System.Windows.Forms.Label()
        Me.btnConfigPort = New System.Windows.Forms.Button()
        Me.btnCommunication = New System.Windows.Forms.Button()
        Me.btnSendData = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.txtHistoty = New System.Windows.Forms.TextBox()
        Me.btnClearHistoty = New System.Windows.Forms.Button()
        Me.lblHistory = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'txtSendData
        '
        Me.txtSendData.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtSendData.Location = New System.Drawing.Point(12, 34)
        Me.txtSendData.Multiline = True
        Me.txtSendData.Name = "txtSendData"
        Me.txtSendData.Size = New System.Drawing.Size(219, 323)
        Me.txtSendData.TabIndex = 0
        '
        'txtReceivedData
        '
        Me.txtReceivedData.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtReceivedData.Location = New System.Drawing.Point(248, 34)
        Me.txtReceivedData.Multiline = True
        Me.txtReceivedData.Name = "txtReceivedData"
        Me.txtReceivedData.Size = New System.Drawing.Size(219, 323)
        Me.txtReceivedData.TabIndex = 1
        '
        'lbSendData
        '
        Me.lbSendData.AutoSize = True
        Me.lbSendData.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbSendData.Location = New System.Drawing.Point(8, 7)
        Me.lbSendData.Name = "lbSendData"
        Me.lbSendData.Size = New System.Drawing.Size(97, 24)
        Me.lbSendData.TabIndex = 2
        Me.lbSendData.Text = "Send Data"
        '
        'lbReceivedData
        '
        Me.lbReceivedData.AutoSize = True
        Me.lbReceivedData.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbReceivedData.Location = New System.Drawing.Point(244, 7)
        Me.lbReceivedData.Name = "lbReceivedData"
        Me.lbReceivedData.Size = New System.Drawing.Size(132, 24)
        Me.lbReceivedData.TabIndex = 3
        Me.lbReceivedData.Text = "Received Data"
        '
        'btnConfigPort
        '
        Me.btnConfigPort.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnConfigPort.Location = New System.Drawing.Point(486, 34)
        Me.btnConfigPort.Name = "btnConfigPort"
        Me.btnConfigPort.Size = New System.Drawing.Size(219, 63)
        Me.btnConfigPort.TabIndex = 4
        Me.btnConfigPort.Text = "Configure Port"
        Me.btnConfigPort.UseVisualStyleBackColor = True
        '
        'btnCommunication
        '
        Me.btnCommunication.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnCommunication.Location = New System.Drawing.Point(486, 112)
        Me.btnCommunication.Name = "btnCommunication"
        Me.btnCommunication.Size = New System.Drawing.Size(219, 63)
        Me.btnCommunication.TabIndex = 5
        Me.btnCommunication.Text = "Begin Communication"
        Me.btnCommunication.UseVisualStyleBackColor = True
        '
        'btnSendData
        '
        Me.btnSendData.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnSendData.Location = New System.Drawing.Point(12, 363)
        Me.btnSendData.Name = "btnSendData"
        Me.btnSendData.Size = New System.Drawing.Size(219, 63)
        Me.btnSendData.TabIndex = 6
        Me.btnSendData.Text = "Send Data"
        Me.btnSendData.UseVisualStyleBackColor = True
        '
        'Timer1
        '
        '
        'txtHistoty
        '
        Me.txtHistoty.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtHistoty.Location = New System.Drawing.Point(486, 214)
        Me.txtHistoty.Multiline = True
        Me.txtHistoty.Name = "txtHistoty"
        Me.txtHistoty.Size = New System.Drawing.Size(219, 210)
        Me.txtHistoty.TabIndex = 7
        '
        'btnClearHistoty
        '
        Me.btnClearHistoty.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnClearHistoty.Location = New System.Drawing.Point(248, 363)
        Me.btnClearHistoty.Name = "btnClearHistoty"
        Me.btnClearHistoty.Size = New System.Drawing.Size(219, 63)
        Me.btnClearHistoty.TabIndex = 8
        Me.btnClearHistoty.Text = "Clear History"
        Me.btnClearHistoty.UseVisualStyleBackColor = True
        '
        'lblHistory
        '
        Me.lblHistory.AutoSize = True
        Me.lblHistory.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblHistory.Location = New System.Drawing.Point(482, 187)
        Me.lblHistory.Name = "lblHistory"
        Me.lblHistory.Size = New System.Drawing.Size(67, 24)
        Me.lblHistory.TabIndex = 9
        Me.lblHistory.Text = "History"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(718, 436)
        Me.Controls.Add(Me.lblHistory)
        Me.Controls.Add(Me.btnClearHistoty)
        Me.Controls.Add(Me.txtHistoty)
        Me.Controls.Add(Me.btnSendData)
        Me.Controls.Add(Me.btnCommunication)
        Me.Controls.Add(Me.btnConfigPort)
        Me.Controls.Add(Me.lbReceivedData)
        Me.Controls.Add(Me.lbSendData)
        Me.Controls.Add(Me.txtReceivedData)
        Me.Controls.Add(Me.txtSendData)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents txtSendData As TextBox
    Friend WithEvents txtReceivedData As TextBox
    Friend WithEvents lbSendData As Label
    Friend WithEvents lbReceivedData As Label
    Friend WithEvents btnConfigPort As Button
    Friend WithEvents btnCommunication As Button
    Friend WithEvents btnSendData As Button
    Friend WithEvents Timer1 As Timer
    Friend WithEvents txtHistoty As TextBox
    Friend WithEvents btnClearHistoty As Button
    Friend WithEvents lblHistory As Label
End Class
