# Random-Password-Generator
It is used for **generating** random **strings** or **password**.  Then you can use this password to either place a **random password** in a login system. or to make a system more secure by changing its password every 20 mins.  And only admin known where the Password file resides in the system.

![Preview](https://i2.wp.com/www.thebateam.org/wp-content/uploads/2018/12/18-1.png?w=750&ssl=1)

# ABOUT PROGRAM:
Generating **random passwords** is not a difficult task in **batch Programming**. All you need is just a **single variable** that has all possible items that a **Password** can have or we can  **generate password** by repeating those items.

So, in this program I’m using Variable **‘String’** that contains all possible characters that a password can have thus by using The for loop ,we can easily generate **Random passwords**.

here, it is producing a random password, but if the algorithm is enhanced a bit, it can be used to generate a password in certain pattern and then it will be more **advanced program**.


```REM Random Password generator: 
@echo off
cls
setlocal enabledelayedexpansion
title Random password generator by Kvc
set "string=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.,;:'"[{]}()-_+=*^&^%$#@!~`\^^by Kvc..."
REM 
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
```

[Read Full Article](https://www.thebateam.org/2020/01/random-password-generator-by-kvc-on-request/)
