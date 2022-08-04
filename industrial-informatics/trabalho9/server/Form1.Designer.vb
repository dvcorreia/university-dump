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
        Me.tbxHistory = New System.Windows.Forms.TextBox()
        Me.TimerConnection = New System.Windows.Forms.Timer(Me.components)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.tbxClientStatus = New System.Windows.Forms.TextBox()
        Me.TimerFacon = New System.Windows.Forms.Timer(Me.components)
        Me.SuspendLayout()
        '
        'btnONOFF
        '
        Me.btnONOFF.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnONOFF.Location = New System.Drawing.Point(12, 12)
        Me.btnONOFF.Name = "btnONOFF"
        Me.btnONOFF.Size = New System.Drawing.Size(346, 33)
        Me.btnONOFF.TabIndex = 0
        Me.btnONOFF.Text = "Ligar"
        Me.btnONOFF.UseVisualStyleBackColor = True
        '
        'tbxHistory
        '
        Me.tbxHistory.Location = New System.Drawing.Point(12, 78)
        Me.tbxHistory.Multiline = True
        Me.tbxHistory.Name = "tbxHistory"
        Me.tbxHistory.ReadOnly = True
        Me.tbxHistory.Size = New System.Drawing.Size(346, 219)
        Me.tbxHistory.TabIndex = 5
        '
        'TimerConnection
        '
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.ImageScalingSize = New System.Drawing.Size(32, 32)
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(61, 4)
        '
        'tbxClientStatus
        '
        Me.tbxClientStatus.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tbxClientStatus.Location = New System.Drawing.Point(76, 49)
        Me.tbxClientStatus.Name = "tbxClientStatus"
        Me.tbxClientStatus.Size = New System.Drawing.Size(223, 24)
        Me.tbxClientStatus.TabIndex = 8
        Me.tbxClientStatus.Text = "Connection Status"
        Me.tbxClientStatus.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'TimerFacon
        '
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(371, 310)
        Me.Controls.Add(Me.tbxClientStatus)
        Me.Controls.Add(Me.tbxHistory)
        Me.Controls.Add(Me.btnONOFF)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents btnONOFF As Button
    Friend WithEvents tbxHistory As TextBox
    Friend WithEvents TimerConnection As Timer
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents tbxClientStatus As TextBox
    Friend WithEvents TimerFacon As Timer
End Class
