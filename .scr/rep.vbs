'============================================= 
' Замена текста в файле 
' 
' Параметры: 
' {файл} {текст для поиска} {текст для замены} 
'============================================= 
Option Explicit 
Dim FSO, F, Str1, Str2, Text 
Set FSO = CreateObject("Scripting.FileSystemObject") 
With WScript 
  F   = .Arguments(0) 
  Str1 = .Arguments(1) 
  Str2 = .Arguments(2) 
End With 
F = FSO.GetAbsolutePathName(CreateObject("WScript.Shell").ExpandEnvironmentStrings(F)) 
Text = FSO.OpenTextFile(F, 1).ReadAll 
Text = Replace(Text, Str1, Str2, 1, -1, 1)
FSO.OpenTextFile(F, 2).Write Text 
Set FSO = Nothing 
WScript.Quit 0
