@echo off
REM Set .xml files to open with Notepad

REM Check if the script is run as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires administrative privileges. Please run as administrator.
    pause
    exit /b
)

REM Set the default program for .xml files to Notepad
assoc .xml=xmlfile
ftype xmlfile="%SystemRoot%\System32\NOTEPAD.EXE" "%%1"

echo .xml files will now open with Notepad.
pause
