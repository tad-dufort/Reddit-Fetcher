::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdEHlC0uHyEMjOx5AXziLP2S0Opwf5+a15umIwg==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQICLR9QRRDCGm6uBb0Z+og=
::eg0/rx1wNQPfEVWB+kM9LVsJDDaHOG+zEvg67fz45++V7EgFUYI=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIRJltRQAGBKHm1CPUd+Pi7++XHpEgJV+p/ao7V3ruDYOke60LhZtYrxHVX2NkJCB9RanI=
::dhA7uBVwLU+EWG2F8AIUPR1bXhDi
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: setup (set size and UDF 8 text encoding)
TITLE Initializing . . .
chcp 65001
mode 106,30
cls

:: check for admin
net session >nul 2>&1
if %errorLevel% == 0 (
    goto installer
) else (
    goto Not_Admin
)
 
:: no admin error
:Not_Admin
    TITLE Reopen The installer
    echo  [91m█▀▀ █▀█ █▀█ █▀█ █▀█[0m
    echo  [91m██▄ █▀▄ █▀▄ █▄█ █▀▄[0m
    echo.
    echo Please reopen this file as administartor.
    echo.
    echo [90mPress any key to exit . . .[0m
    PAUSE >nul
    exit

:: main code
:installer
cls
:: title screen
TITLE Reddit Fetcher Setup Wizard . . .
echo   ██████╗░███████╗██████╗░██████╗░██╗████████╗  ███████╗███████╗████████╗░█████╗░██╗░░██╗███████╗██████╗░
echo   ██╔══██╗██╔════╝██╔══██╗██╔══██╗██║╚══██╔══╝  ██╔════╝██╔════╝╚══██╔══╝██╔══██╗██║░░██║██╔════╝██╔══██╗
echo   ██████╔╝█████╗░░██║░░██║██║░░██║██║░░░██║░░░  █████╗░░█████╗░░░░░██║░░░██║░░╚═╝███████║█████╗░░██████╔╝
echo   ██╔══██╗██╔══╝░░██║░░██║██║░░██║██║░░░██║░░░  ██╔══╝░░██╔══╝░░░░░██║░░░██║░░██╗██╔══██║██╔══╝░░██╔══██╗
echo   ██║░░██║███████╗██████╔╝██████╔╝██║░░░██║░░░  ██║░░░░░███████╗░░░██║░░░╚█████╔╝██║░░██║███████╗██║░░██║
echo   ╚═╝░░╚═╝╚══════╝╚═════╝░╚═════╝░╚═╝░░░╚═╝░░░  ╚═╝░░░░░╚══════╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝
echo                                       █ █▄ █ █▀ ▀█▀ ▄▀█ █   █   █▀▀ █▀█
echo                                       █ █ ▀█ ▄█  █  █▀█ █▄▄ █▄▄ ██▄ █▀▄
echo                                             (Made by Tad Dufort)
echo.  
echo.  
echo.  
echo.  
echo.  
echo                                            [90mPress any key to start
echo                                                    . . .[0m
PAUSE >nul
cls
:: welcome screen
echo   ██████╗░███████╗██████╗░██████╗░██╗████████╗  ███████╗███████╗████████╗░█████╗░██╗░░██╗███████╗██████╗░
echo   ██╔══██╗██╔════╝██╔══██╗██╔══██╗██║╚══██╔══╝  ██╔════╝██╔════╝╚══██╔══╝██╔══██╗██║░░██║██╔════╝██╔══██╗
echo   ██████╔╝█████╗░░██║░░██║██║░░██║██║░░░██║░░░  █████╗░░█████╗░░░░░██║░░░██║░░╚═╝███████║█████╗░░██████╔╝
echo   ██╔══██╗██╔══╝░░██║░░██║██║░░██║██║░░░██║░░░  ██╔══╝░░██╔══╝░░░░░██║░░░██║░░██╗██╔══██║██╔══╝░░██╔══██╗
echo   ██║░░██║███████╗██████╔╝██████╔╝██║░░░██║░░░  ██║░░░░░███████╗░░░██║░░░╚█████╔╝██║░░██║███████╗██║░░██║
echo   ╚═╝░░╚═╝╚══════╝╚═════╝░╚═════╝░╚═╝░░░╚═╝░░░  ╚═╝░░░░░╚══════╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝
echo.
echo.
echo Welcome to the Reccit Fetcher installer!
echo Reddit Fetcher will now be installed in your program files folder
echo [90mPresss any key to start . . .[0m
PAUSE >nul
cls
:: copy files
xcopy /I /E "%~dp0\build\win\Reddit-Fetcher-win32-x64" "%ProgramFiles%\Reddit Fetcher"
echo.
echo Done copying!
echo.
:: shortcut choices
:choice
set /P c=Do you want to create a start menu folder [90m[Y/N][0m?  
if /I "%c%" EQU "Y" goto :startFolder
if /I "%c%" EQU "N" goto :choice2
goto :choice
:choice2
set /P c=Do you want to create a desktop shortcut [90m[Y/N][0m?  
if /I "%c%" EQU "Y" goto :desktopShortcut
if /I "%c%" EQU "N" goto :end
goto :choice2

:desktopShortcut

:: VBScripts for shortcuts
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Reddit Fetcher.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%ProgramFiles%\Reddit Fetcher\Reddit-Fetcher.exe" >> %SCRIPT%
echo oLink.WorkingDirectory = "%ProgramFiles%\Reddit Fetcher" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%
echo.
echo Desktop shortcut created
goto end

:startFolder
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%AppData%\Microsoft\Windows\Start Menu\Programs\Reddit Fetcher.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%ProgramFiles%\Reddit Fetcher\Reddit-Fetcher.exe" >> %SCRIPT%
echo oLink.WorkingDirectory = "%ProgramFiles%\Reddit Fetcher" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%
echo.
echo Start menu shortcut created
goto choice2

::end
:end
echo.
echo.
echo Installation complete!
echo.
echo [90mPress any key to exit . . .[0m
PAUSE >nul