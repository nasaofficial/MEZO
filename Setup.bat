@echo off
setlocal

REM Set the URL for the wget executable
set "wgetURL=https://eternallybored.org/misc/wget/1.20.3/64/wget.exe"

REM Set the destination path for wget installation
set "installPath=%SystemRoot%\System32"

REM Download wget using PowerShell
powershell -command "& { Invoke-WebRequest '%wgetURL%' -OutFile '%installPath%\wget.exe' }"

REM Check if download was successful
if %errorlevel% neq 0 (
    echo Failed to download wget.
    exit /b 1
)

echo wget has been successfully installed.

endlocal


REM Set the URL for the Git installer
set "gitURL=https://github.com/git-for-windows/git/releases/download/v2.34.1.windows.1/Git-2.34.1-64-bit.exe"

REM Set the destination path for Git installation on the desktop
set "installPath=%USERPROFILE%\Desktop"

REM Create a temporary directory to download Git installer
set "tempDir=%TEMP%\git_temp"
md "%tempDir%" 2>nul

REM Download Git installer using PowerShell
powershell -command "& { Invoke-WebRequest '%gitURL%' -OutFile '%tempDir%\GitInstaller.exe' }"

REM Check if download was successful
if %errorlevel% neq 0 (
    echo Failed to download Git.
    exit /b 1
)

REM Install Git silently
start /wait "" "%tempDir%\GitInstaller.exe" /VERYSILENT /NORESTART

REM Check if installation was successful
if %errorlevel% neq 0 (
    echo Failed to install Git.
    exit /b 1
)

REM Clean up temporary directory
rmdir /s /q "%tempDir%"

echo Git has been successfully installed on the desktop.

endlocal
