Attribute VB_Name = "Multiplication"
Function multiplication()
'author: Sara Fernandez
'Date: 13/12/2020
'Script for training mental calculation. Two-digit Multiplication

Dim x1, x2, y, yUser, points, i As Integer
Dim start, finish, totalTime, prompt, result, resulWin

points = 0
result = ""
resulWin = ""
start = Timer    ' Set start time.
For i = 1 To 5
    x1 = 0
    x2 = 0
    While x1 < 2
        Randomize
        x1 = Fix(Rnd * 10)
    Wend
    While x2 < 2
        Randomize
        x2 = Fix(Rnd * 10)
    Wend
    y = x1 * x2
    prompt = x1 & " × " & x2 & " ="
    yUser = InputBox(prompt, "Enter result", 0)
    If y - yUser = 0 Then
        points = points + 1
    End If
    result = result & _
    Date & Chr(9) & Time & Chr(9) & _
    " it " & i & Chr(9) _
    & x1 & " × " & x2 & " = " & y & Chr(9) _
    & ", uin: " & yUser & Chr(13)
    resulWin = resulWin & _
    " it " & i & Chr(9) _
    & x1 & " × " & x2 & " = " & y & Chr(9) _
    & "uin: " & yUser & Chr(13)
Next i

finish = Timer
totalTime = finish - start

MsgBox "You had " & points & " rights and " _
        & (points * 1000) / totalTime & " points in" _
        & totalTime & " seconds"
MsgBox resulWin

Dim strFile_Path As String

strFile_Path = "C:\Users\saraf\OneDrive\Documents\Data Science\00 - Coding " _
& "Journey\Project 01 - Mathemagician\Chapt01\multRegistry.txt"
Open strFile_Path For Append As #1
Write #1, result
Close #1

End Function

