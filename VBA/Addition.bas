Attribute VB_Name = "Addition"
Function addition()
'author: Sara Fernandez
'Date: 13/12/2020
'Script for training mental calculation. Two-digit Addition

'Randomize: Initialize random-number generator.
'Rnd returns a random value less than 1 but greater than or equal to zero.
'Fix remove the fractional part of number and return the resulting integer value

Dim x1, x2, y, yUser, points, i As Integer
Dim start, finish, totalTime, prompt, result

points = 0
result = ""
start = Timer    ' Set start time.
For i = 1 To 5
    Randomize
    x1 = Fix(Rnd * 100)
    Randomize
    x2 = Fix(Rnd * 100)
    y = x1 + x2
    prompt = x1 & " + " & x2 & " ="
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
& "Journey\Project 01 - Mathemagician\Chapt01\sumRegistry.txt"
Open strFile_Path For Append As #1
Write #1, result
Close #1

End Function





