@echo off
Title UZ v.1.00.1
color a
:home
cls
mode con: cols=30 lines=20
echo.
echo Welcome to Uazappo
echo.
echo - 1 -- Login account
echo - 2 -- Change color
echo - 3 -- Credit
echo - 4 -- Exit program
echo.
CHOICE /C:1234 /N /M "Press a number -- "
goto %ERRORLEVEL%
:exist
echo.
echo this username has already been used.
pause
goto 1
:1
mode con: cols=50 lines=20
set /a ctr=1;
cls
echo.
echo.
echo   Login account to Chat
echo.
set /p tryuser=- Enter valid username -- 
if not exist "%tryuser%.bat" goto notexist
call "%tryuser%.bat"

:tryagain
if %ctr% == 6 goto home
cls
echo.
set /p trypass=[%logname%] enter valid password: 
if "%trypass%" == "%logpass%" goto chatbox
echo.
echo password incorrect %ctr%/5.
set /a ctr+=1
pause
goto tryagain
:notexist
echo.
echo Username does not exist, contact F1r3 Animator
echo.
echo - 1 -- Go Back 
echo - 2 -- Log in with uuid.
pause
set choice2=
set /p choice2=- Select  -- 
if not '%choice2%'=='' set choice=%choice:~0,2%
if '%choice2%'=='1' (goto home)
if '%choice2%'=='2' (goto uuid)
:uuid 
::Mini database v1 
::53229824-6D6A-6447-7C0B-D45D64A7F0E3
::23DF141A-0045-5540-B892-A525DB857B0C
::
::
for /f "skip=1 delims=" %%a in ('wmic csproduct get uuid') do set "uuid=%%a"&goto scan
:scan
findstr "%uuid%" ChatBox.bat
if %errorlevel% equ 1 goto notsafe
:safe
cls
color a
echo Safe
goto setter 
:notsafe
cls
color 4
echo Hwid not in database!
pause
color a
goto home
:: F1r3 Visibilmente confuso
:setter
mode con: cols=40 lines=15
start ChatViewer.bat 
echo echo someone logs in..>>chatlogs.bat
set /p logname=Select name -- 
goto chatbox1
:2
cls
mode con: cols=50 lines=20
echo 0 = Black           8 = Gray
echo 1 = Dark Blue       9 = Blue
echo 2 = Green           A = Lemon green
echo 3 = Aqua green      B = Light blue
echo 4 = Bordeaux        C = Red
echo 5 = Purple          D = Fuchsia
echo 6 = Olive green     E = Yellow
echo 7 = Light Gray      F = White
echo.

set choice=
set /p choice=- Select color -- 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='0' color 0
if '%choice%'=='1' color 1
if '%choice%'=='2' color 2
if '%choice%'=='3' color 3
if '%choice%'=='4' color 4
if '%choice%'=='5' color 5
if '%choice%'=='6' color 6
if '%choice%'=='7' color 7
if '%choice%'=='8' color 8
if '%choice%'=='9' color 9
if '%choice%'=='a' color a
if '%choice%'=='b' color b
if '%choice%'=='c' color c
if '%choice%'=='d' color d
if '%choice%'=='e' color e
if '%choice%'=='f' color f

goto home
:3
echo ===============================================================================
echo   ______               _ _      
echo  / _____)             | (_)_    
echo | /       ____ ____ _ | |_| |_  
echo | |      / ___) _  ) || | |  _) 
echo | \_____| |  ( (/ ( (_| | | |__ 
echo  \______)_|   \____)____|_|\___)
echo.
echo ===============================================================================
echo My Youtube Channel  -- https://www.youtube.com/c/f1r3animator
echo My Telegram Channel -- https://t.me/F1r3_Animator
echo                     -- https://t.me/FireDisc
echo My Discord Channel  -- https://discord.gg/K4RGed5a5d
echo 
echo.
echo Video where I got the base -- https://www.youtube.com/watch?v=vzfYfMlN3-s
echo ===============================================================================
:4
cls
echo.
echo Exiting Chat...
echo.
timeout /t 3 /nobreak >nul
exit
:chatbox
mode con: cols=40 lines=15
start ChatViewer.bat
echo echo someone logs in..>>chatlogs.bat
set user=
set pass=
:chatbox1
mode con: cols=40 lines=20
cls
echo.
echo active user: %logname%
echo.
echo 1 -- enter chat room (%logname%)
echo 2 -- logout
echo 3 -- Anonymous Account
echo.
CHOICE /C:123 /N /M "Press a number: "
goto A%ERRORLEVEL%
:A1
echo echo    [%logname% /%time%] enters chatroom..>>chatlogs.bat
:A11
cls
echo.
echo    hello [%logname%]
echo.
echo.
echo  type whatever you wish
echo  type 'back' to return to home
echo.
echo.
set /p type= say something: 
if "%type%" == "back" goto nav
if "%type%" == "/help" goto help1
if "%type%" == "/color" goto colorhelp1
if "%type%" == "/youtube" goto youtube1
if "%type%" == "/console" goto console1
echo echo [%logname% /%time%]: %type%>>chatlogs.bat
goto A11
echo.
:nav
echo echo    [%logname% /%time%] temporarily leaves..>>chatlogs.bat
goto chatbox1
:help1
mode con: cols=50 lines=30
echo echo. >>chatlogs.bat
echo echo Here are the various commands >>chatlogs.bat
echo echo /color (Set color) >>chatlogs.bat
echo echo /youtube (My YoutubeChannel9 >>chatlogs.bat
echo echo. >>chatlogs.bat
pause
goto A11
:colorhelp1
echo echo 0 = Black           8 = Gray >>chatlogs.bat
echo echo 1 = Dark Blue       9 = Blue >>chatlogs.bat
echo echo 2 = Green           A = Lemon green >>chatlogs.bat
echo echo 3 = Aqua green      B = Light blue >>chatlogs.bat
echo echo 4 = Bordeaux        C = Red >>chatlogs.bat
echo echo 5 = Purple          D = Fuchsia >>chatlogs.bat
echo echo 6 = Olive green     E = Yellow >>chatlogs.bat
echo echo  7 = Light Gray      F = White >>chatlogs.bat
echo echo. >>chatlogs.bat

set choicehelp1=
set /p choicehelp1=- Select color -- 
echo color %choicehelp1% >>chatlogs.bat
echo echo Color set n.%choicehelp1% >>chatlogs.bat
goto A11
:youtube1
echo echo https://www.youtube.com/c/f1r3animator >>chatlogs.bat
goto A11
:console1
for /f "skip=1 delims=" %%a in ('wmic csproduct get uuid') do set "uuid=%%a"&goto scan1
:scan1
findstr "%uuid%" ChatBox.bat
if %errorlevel% equ 1 goto notsafe1
:safe1
cls
color a
set /p consolecommand= Write the command -- 
echo %consolecommand% >>chatlogs.bat
echo echo chatlog re-created >>chatlogs.bat
echo del chatlogs.bat >>chatlogs.bat
timeout /t 3 /nobreak >nul
echo echo chatlog re-created >>chatlogs.bat
goto A11 
:notsafe1
echo echo /console >>chatlogs.bat
goto A11
:A3
set Hider=Anonymous_%random%
echo echo    [%Hider% /%time%] enters chatroom..>>chatlogs.bat
goto :A13
:a13
cls
echo.
echo    hello [%Hider%]
echo.
echo.
echo  type whatever you wish
echo  type 'back' to return to home
echo.
echo.
set /p type= say something: 
if "%type%" == "back" goto nav3
if "%type%" == "/help" goto help3
if "%type%" == "/color" goto colorhelp3
if "%type%" == "/youtube" goto youtube3
if "%type%" == "/console" goto console3
echo echo [%Hider% /%time%]: %type%>>chatlogs.bat
goto A13
echo.
:nav3
echo echo    [%Hider% /%time%] temporarily leaves..>>chatlogs.bat
goto chatbox2
:help3
mode con: cols=50 lines=30
echo echo. >>chatlogs.bat
echo echo Here are the various commands >>chatlogs.bat
echo echo /color (Set color) >>chatlogs.bat
echo echo /youtube (My YoutubeChannel9 >>chatlogs.bat
echo echo. >>chatlogs.bat
pause
goto A13
:colorhelp3
echo echo 0 = Black           8 = Gray >>chatlogs.bat
echo echo 1 = Dark Blue       9 = Blue >>chatlogs.bat
echo echo 2 = Green           A = Lemon green >>chatlogs.bat
echo echo 3 = Aqua green      B = Light blue >>chatlogs.bat
echo echo 4 = Bordeaux        C = Red >>chatlogs.bat
echo echo 5 = Purple          D = Fuchsia >>chatlogs.bat
echo echo 6 = Olive green     E = Yellow >>chatlogs.bat
echo echo  7 = Light Gray      F = White >>chatlogs.bat
echo echo. >>chatlogs.bat

set choicehelp1=
set /p choicehelp1=- Select color -- 
echo color %choicehelp1% >>chatlogs.bat
echo echo Color set n.%choicehelp1% >>chatlogs.bat
goto A13
:youtube3
echo echo https://www.youtube.com/c/f1r3animator >>chatlogs.bat
goto A13
:console3
for /f "skip=1 delims=" %%a in ('wmic csproduct get uuid') do set "uuid=%%a"&goto scan3
:scan3
findstr "%uuid%" ChatBox.bat
if %errorlevel% equ 1 goto notsafe3
:safe3
cls
color a
set /p consolecommand= Write the command -- 
echo %consolecommand% >>chatlogs.bat
echo echo chatlog re-created >>chatlogs.bat
echo del chatlogs.bat >>chatlogs.bat
timeout /t 3 /nobreak >nul
echo echo chatlog re-created >>chatlogs.bat
goto A13 
:notsafe3
echo echo /console >>chatlogs.bat
goto A13
:chatbox2
cls
echo.
echo active user: %Hider%
echo.
echo 1 -- enter chat room (%logname%)
echo 2 -- logout
echo 3 -- Anonymous Account
echo.
CHOICE /C:123 /N /M "Press a number: "
goto B%ERRORLEVEL%
:B2
echo echo    [%Hider% /%time%] logs out...>>chatlogs.bat
cls
echo.
echo  %Hider% logging out..
timeout /t 2 >nul
goto home
:B1
echo echo    [%logname% /%time%] enters chatroom..>>chatlogs.bat
goto A11
:B3
echo echo    [%Hider% /%time%] enters chatroom..>>chatlogs.bat
goto :A13
:A2
echo echo    [%logname% /%time%] logs out...>>chatlogs.bat
cls
echo.
echo  %logname% logging out..
timeout /t 2 >nul
goto home
