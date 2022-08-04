Public Class Form1
    Dim result As Double = 0.0
    Dim prevOp As Char = ""
    Dim clsFlag As Boolean = False
    Dim historyEntry As String = ""


    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Config text box for number visualization
        txtNumber.Text = ""
        txtNumber.Enabled = False
        txtNumber.TextAlign = 2

        'Init status strip hour and Timer
        statusHour.Text = Format(Now, "HH:mm:ss")
        timerTime.Interval = 1000
        timerTime.Enabled = True
    End Sub

    Private Sub Btn_Numeric_Handler(sender As Object, e As EventArgs) _
        Handles btn0.Click, btn1.Click, btn2.Click, btn3.Click, btn4.Click, btn5.Click, btn6.Click, btn7.Click, btn8.Click, btn9.Click, btnComma.Click

        'If clear screen flag is up clear screen and put it down
        If clsFlag = True Then
            txtNumber.Text = ""
            clsFlag = False
        End If

        'Update screen
        txtNumber.AppendText(DirectCast(sender, Button).Text)
    End Sub

    Private Sub Btn_Operation_Handler(sender As Object, e As EventArgs) _
        Handles btnPlus.Click, btnMinus.Click, btnMultiply.Click, btnDivide.Click

        'Assert numeric text value
        If Not IsNumeric(txtNumber.Text) Then
            txtNumber.Text = "Error!"
            clsFlag = True
            result = 0
            Exit Sub
        End If

        'Update history entry
        historyEntry += (txtNumber.Text + DirectCast(sender, Button).Text)

        'Calculate previous operation value
        Utils.Calculate(result, CDbl(txtNumber.Text), prevOp)

        'Update previous operation
        prevOp = CChar(DirectCast(sender, Button).Text)

        'Show provisory result and put up clear screen flag
        txtNumber.Text = CStr(result)
        clsFlag = True
    End Sub

    Private Sub BtnEqual_Click(sender As Object, e As EventArgs) Handles btnEqual.Click
        If clsFlag = 1 Or prevOp = "=" Then
            Exit Sub
        End If

        'Assert numeric text value
        If Not IsNumeric(txtNumber.Text) Then
            txtNumber.Text = "Error!"
            clsFlag = True
            result = 0
            Exit Sub
        End If

        'Calculate previous operation value
        Utils.Calculate(result, CDbl(txtNumber.Text), prevOp)

        'Update previous operation
        prevOp = CChar(DirectCast(sender, Button).Text)

        'Save history entry
        historyEntry += (txtNumber.Text + "=" + CStr(result))
        Utils.saveHistory(historyEntry)
        historyEntry = ""

        'Show result and put up clear screen flag
        txtNumber.Text = CStr(result)
        clsFlag = True

        'Reset result
        result = 0
    End Sub

    Private Sub BntC_Click(sender As Object, e As EventArgs) Handles bntC.Click
        txtNumber.Text = ""
        clsFlag = False
    End Sub

    Private Sub BtnCE_Click(sender As Object, e As EventArgs) Handles btnCE.Click
        prevOp = ""
        result = 0
        txtNumber.Text = ""
        historyEntry = ""
        clsFlag = False
    End Sub

    Private Sub TimerTime_Tick(sender As Object, e As EventArgs) Handles timerTime.Tick
        statusHour.Text = Format(Now, "HH:mm:ss")
    End Sub

    Private Sub MenuHistory_Click(sender As Object, e As EventArgs) Handles menuHistory.Click
        Me.Hide()
        FormHistory.Show()
    End Sub
End Class
