@echo off
Title UZ v.1.00.1
color F
mode con: cols=100 lines=30
:home
cls
echo.
echo   Chat Viewer active [%date%]
call "chatlogs.bat"
timeout /t 2 >nul
goto home