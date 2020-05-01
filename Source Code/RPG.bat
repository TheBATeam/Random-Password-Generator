REM Random Password generator ... by Kvc 
@echo off
cls
setlocal enabledelayedexpansion
title Random password generator by Kvc
set "string=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.,;:'"[{]}()-_+=*^&^%$#@!~`\^^by Kvc..."
REM "
:loop
set rnd[1]=!string:~%random:~1,2%,1!
set rnd[2]=!string:~%random:~0,1%,1!
set rnd[3]=!string:~%random:~1,2%,1!
set rnd[4]=!string:~%random:~0,2%,%random:~0,1%!
set rnd[5]=!string:~%random:~0,1%,1!
set rnd[6]=!string:~%random:~0,1%,%random:~0,1%!
set rnd[7]=!string:~%random:~0,2%,%random:~0,1%!
set rnd[8]=!string:~%random:~1,1%,1!
set rnd[9]=!string:~%random:~0,2%,%random:~0,1%!
set rnd[0]=!string:~%random:~2,1%,%random:~0,1%!
for /l %%a in (0,1,9) do (if /i "!rnd[%%a]!" == "" (goto loop))
set for_loop_repetition=%random:~0,1%
set password=
for /l %%a in (0,1,!for_loop_repetition!) do (
	set "password=!password!!rnd[%%a]!"
	)
echo. Password generated : !password!
pause >nul
goto loop