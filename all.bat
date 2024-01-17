@echo off
NetSh Advfirewall set allprofiles state off
title All Tools Made By Moaz Elsayed
cls                                                                                

color b

:MENU
echo.
echo.
echo.
echo              00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
echo.
echo              # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
echo              #                                                                                             # 
echo              #    1. Tasklist and Taskkill                 2. Tasklist with Exclusions and Taskkill        #
echo              #                                                                                             #
echo              #                                                                                             #
echo              #    3. Taskkill iCUE.exe                     4. Multiple Taskkill commands                   #
echo              #                                                                                             #
echo              #                                                                                             #
echo              #    5. Windows Activation                    6. Powershell Tweaks                            #
echo              #                                                                                             #
echo              #                                                                                             #
echo              #    7. Exit                                  8. Call For Help                                #
echo              #                                                                                             #
echo              # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
echo.
echo              00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
echo.
echo.
echo.
echo.
echo.
echo.

choice /n /c 12345678 /m "Choose a number (1 to 8) :"
  
rem Check the user's choice and perform the corresponding action
if errorlevel 8 goto option8
if errorlevel 7 goto option7
if errorlevel 6 goto option6
if errorlevel 5 goto option5
if errorlevel 4 goto option4
if errorlevel 3 goto option3
if errorlevel 2 goto option2
if errorlevel 1 goto option1

rem Default action if the user doesn't choose a valid option
echo Invalid choice. Please try again.
goto menu




















:Option1
@echo off
CD /D "%~DP0"
cls
color c
SET tmpfl=process_list.txt
IF EXIST "%tmpfl%" DEL /F /Q "%tmpfl%"
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F "DELIMS=: TOKENS=2" %%A IN ('TASKLIST /FI "USERNAME EQ %Username%" /FO LIST ^| FIND /I "Image name:"') DO (
    SET var=%%~A
    SET var=!var: =!
    ECHO !var! | FINDSTR /I /V /C:"System">>"%tmpfl%"
)
FOR /F "USEBACKQ TOKENS=*" %%A IN ("%tmpfl%") DO (
    TASKKILL /F /FI "USERNAME eq %Username%" /IM %%~A
)
DEL /F /Q "%tmpfl%"
GOTO :EOF

timeout /nobreak /t 3 >nul
echo Done...
cls
color b
    goto MENU

















:Option2
@echo off
CD /D "%~DP0"

cls
color d
SET tmpfl=TaskList_Lite.txt
IF EXIST "%tmpfl%" DEL /F /Q "%tmpfl%"
SET important_processes=conhost.exe lsm.exe winmgmt.exe explorer.exe winlogon.exe lsass.exe services.exe wininit.exe csrss.exe smss.exe System.exe
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F "DELIMS=: TOKENS=2" %%A IN ('TASKLIST /FI "USERNAME EQ %Username%" /FO LIST ^| FIND /I "Image name:"') DO (
    SET var=%%~A
    SET var=!var: =!
    ECHO !var! | FINDSTR /I /V /C:"System" /C:"Idle" /C:"explorer.exe" /C:"wininit.exe" /C:"services.exe" /C:"lsass.exe" /C:"winlogon.exe" /C:"winmgmt.exe" /C:"csrss.exe" /C:"smss.exe" /C:"lsm.exe" /C:"conhost.exe" /C:"sihost.exe">>"%tmpfl%"
)
FOR /F "USEBACKQ TOKENS=*" %%A IN ("%tmpfl%") DO (
    TASKKILL /F /FI "USERNAME eq %Username%" /IM %%~A
)
timeout /nobreak /t 3 >nul
echo Done...
cls
color b
    goto MENU
















:Option3
color e
taskkill /F /IM "iCUE.exe"

timeout /nobreak /t 3 >nul
echo Done...
cls
color b
    goto MENU



























:Option4
@echo off
CD /D "%~DP0"

color f
cls
SET tmpfl=TaskList_HandMade.txt
IF EXIST "%tmpfl%" DEL /F /Q "%tmpfl%"
taskkill /F /IM "CxAudMsg64.exe" >> "%tmpfl%"
taskkill /F /IM "msedge.exe" >> "%tmpfl%"
taskkill /F /IM "ctfmon.exe" >> "%tmpfl%"
taskkill /F /IM "dasHost.exe" >> "%tmpfl%"
taskkill /F /IM "ETDService.exe" >> "%tmpfl%"
taskkill /F /IM "gameinputsvc.exe" >> "%tmpfl%"
taskkill /F /IM "gamingservicesnet.exe" >> "%tmpfl%"
taskkill /F /IM "gamingservices.exe" >> "%tmpfl%"
taskkill /F /IM "GoogleCrashHandler64.exe" >> "%tmpfl%"
taskkill /F /IM "GoogleCrashHandler.exe" >> "%tmpfl%"
taskkill /F /IM "HuaweiHiSuiteService64.exe" >> "%tmpfl%"
taskkill /F /IM "igfxCUIService.exe" >> "%tmpfl%"
taskkill /F /IM "igfxEM.exe" >> "%tmpfl%"
taskkill /F /IM "ibtsiva.exe" >> "%tmpfl%"
taskkill /F /IM "OfficeClickToRun.exe" >> "%tmpfl%"
taskkill /F /IM "SearchIndexer.exe" >> "%tmpfl%"
taskkill /F /IM "MicrosoftWindows.Client.CBS_cw5n1h2txyewy" >> "%tmpfl%"
taskkill /F /IM "RuntimeBroker.exe" >> "%tmpfl%"
taskkill /F /IM "Microsoft.Windows.Search_cw5n1h2txyewy" >> "%tmpfl%"
taskkill /F /IM "SASrv.exe" >> "%tmpfl%"
taskkill /F /IM "spoolsv.exe" >> "%tmpfl%"
taskkill /F /IM "StartMenuExperienceHost.exe" >> "%tmpfl%"
taskkill /F /IM "CptService.exe" >> "%tmpfl%"
taskkill /F /IM "dllhost.exe" >> "%tmpfl%"
taskkill /F /IM "backgroundTaskHost.exe" >> "%tmpfl%"
taskkill /F /IM "RuntimeBroker.exe" >> "%tmpfl%"
taskkill /F /IM "msiexec.exe" >> "%tmpfl%"
taskkill /F /IM "WmiPrvSE.exe" >> "%tmpfl%"
taskkill /F /IM "audiodg.exe" >> "%tmpfl%"
taskkill /F /IM "spoolsv.exe" >> "%tmpfl%"
taskkill /F /IM "KingoSoftService.exe" >> "%tmpfl%"
taskkill /F /IM "OfficeClickToRun.exe" >> "%tmpfl%"
taskkill /F /IM "NVIDIAWebHelper.exe" >> "%tmpfl%"
taskkill /F /IM "RuntimeBroker.exe" >> "%tmpfl%"
taskkill /F /IM "dllhost.exe" >> "%tmpfl%"
taskkill /F /IM "UserOOBEBroker.exe" >> "%tmpfl%"
taskkill /F /IM "ctfmon.exe" >> "%tmpfl%"
taskkill /F /IM "MSI.TerminalServer.exe" >> "%tmpfl%"
taskkill /F /IM "VoiceControl_Engine.exe" >> "%tmpfl%"
taskkill /F /IM "DSATray.exe" >> "%tmpfl%"
taskkill /F /IM "nvsphelper64.exe" >> "%tmpfl%"
taskkill /F /IM "NVIDIAShare.exe" >> "%tmpfl%"
taskkill /F /IM "SecurityHealthSystray.exe" >> "%tmpfl%"
taskkill /F /IM "RtkAudUService64.exe" >> "%tmpfl%"
taskkill /F /IM "Discord.exe" >> "%tmpfl%"
taskkill /F /IM "PresentMon_x64.exe" >> "%tmpfl%"
taskkill /F /IM "nvrla.exe" >> "%tmpfl%"
taskkill /F /IM "iCUE.exe" >> "%tmpfl%"
taskkill /F /IM "iCUEDevicePluginHost.exe" >> "%tmpfl%"
taskkill /F /IM "QmlRenderer.exe" >> "%tmpfl%"
taskkill /F /IM "IDMan.exe" >> "%tmpfl%"
taskkill /F /IM "CCXProcess.exe" >> "%tmpfl%"
taskkill /F /IM "node.exe" >> "%tmpfl%"
taskkill /F /IM "AdobeIPCBroker.exe" >> "%tmpfl%"
taskkill /F /IM "wallpaper32.exe" >> "%tmpfl%"
taskkill /F /IM "EarTrumpet.exe" >> "%tmpfl%"
taskkill /F /IM "TranslucentTB.exe" >> "%tmpfl%"
taskkill /F /IM "LocationNotificationWindows.exe" >> "%tmpfl%"
taskkill /F /IM "WidgetService.exe" >> "%tmpfl%"
taskkill /F /IM "ApplicationFrameHost.exe" >> "%tmpfl%"
taskkill /F /IM "Taskmgr.exe" >> "%tmpfl%"
taskkill /F /IM "GameBar.exe" >> "%tmpfl%"
taskkill /F /IM "XboxGameBarWidgets.exe" >> "%tmpfl%"
taskkill /F /IM "Video.UI.exe" >> "%tmpfl%"
taskkill /F /IM "GameBarFTServer.exe" >> "%tmpfl%"
taskkill /F /IM "XboxPcAppFT.exe" >> "%tmpfl%"
taskkill /F /IM "Telegram.Stub.exe" >> "%tmpfl%"
taskkill /F /IM "smartscreen.exe" >> "%tmpfl%"
taskkill /F /IM "CHXSmartScreen.exe" >> "%tmpfl%"
taskkill /F /IM "nvcontainer.exe" >> "%tmpfl%"
taskkill /F /IM "Telegram.exe" >> "%tmpfl%"
taskkill /F /IM "SearchHost.exe" >> "%tmpfl%"
taskkill /F /IM "StartMenuExperienceHost.exe" >> "%tmpfl%"
taskkill /F /IM "ShellExperienceHost.exe" >> "%tmpfl%"
taskkill /F /IM "Notepad.exe" >> "%tmpfl%"
timeout /nobreak /t 3 >nul
echo Done...
cls
color b
    goto MENU






















:Option5
@echo off
color a
title Activate Windows 10 BY MOAZ ELSAYED (+966 54 206 0259) (ALL versions) for FREE&cls&echo =====================================================================================&echo #Project: Activating Microsoft software products for FREE without additional software&echo =====================================================================================&echo.&echo #Supported products:&echo - Windows 10 Home&echo - Windows 10 Professional&echo - Windows 10 Education&echo - Windows 10 Enterprise&echo.&echo.&echo ============================================================================&echo Moaz is Activating your Windows...&cscript //nologo slmgr.vbs /ckms >nul&cscript //nologo slmgr.vbs /upk >nul&cscript //nologo slmgr.vbs /cpky >nul&set i=1&wmic os | findstr /I "enterprise" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul||cscript //nologo slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul||cscript //nologo slmgr.vbs /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B >nul||cscript //nologo slmgr.vbs /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV >nul||cscript //nologo slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul||cscript //nologo slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul||cscript //nologo slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ >nul||cscript //nologo slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639 >nul||cscript //nologo slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D >nul||cscript //nologo slmgr.vbs /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H >nul&goto skms) else wmic os | findstr /I "home" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul||cscript //nologo slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul||cscript //nologo slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul||cscript //nologo slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul&goto skms) else wmic os | findstr /I "education" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul||cscript //nologo slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul&goto skms) else wmic os | findstr /I "10 pro" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul||cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul||cscript //nologo slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul||cscript //nologo slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul||cscript //nologo slmgr.vbs /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y >nul||cscript //nologo slmgr.vbs /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC >nul&goto skms) else (goto notsupported)
:skms
if %i% GTR 10 goto busy
if %i% EQU 1 set KMS=kms7.MSGuides.com
if %i% EQU 2 set KMS=kms8.MSGuides.com
if %i% EQU 3 set KMS=kms9.MSGuides.com
if %i% GTR 3 goto ato
cscript //nologo slmgr.vbs /skms %KMS%:1688 >nul
:ato
echo ============================================================================&echo.&echo.&cscript //nologo slmgr.vbs /ato | find /i "successfully" && (echo.&echo ============================================================================&echo.&echo #My official number: +966542060259&echo.&echo #How it works: it just does&echo.&echo #Please feel free to contact me at moazelsayed884@gmail.com if you have any questions or concerns.&echo.&echo #my servers running 24/7!&echo.&echo ============================================================================&choice /n /c YN /m "Would you like to Contact me on telegram? [Y,N]?" & if errorlevel 2 pause) || (echo MOAZ SAYS: The connection to my KMS server failed! Trying to connect to another one... & echo MOAZ SAYS: Please wait... & echo. & echo. & set /a i+=1 & goto skms)
explorer "https://t.me/id9p0"&goto halt
:notsupported
echo ============================================================================&echo.&echo MOAZ SAYS: Sorry, your version is not supported.&echo.&goto halt
:busy
echo ============================================================================&echo.&echo MOAZ SAYS: Sorry, the server is busy and can't respond to your request. Please try again.&echo.
:halt
timeout /nobreak /t 3 >nul
echo Done...
cls
color b
    goto MENU











:Option6
color 3
cls

@echo off
:: Check if the script is running with administrative privileges
NET FILE 1>NUL 2>NUL
if %errorlevel% == 0 (
    goto :runPowerShell
) else (
    echo Please run this script as an administrator.
    pause
    exit
)

:runPowerShell
:: Run the PowerShell command
PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& {iwr -useb https://christitus.com/win | iex}"

:: Check the exit code of PowerShell
if %errorlevel% neq 0 (
    echo An error occurred while running PowerShell command.
    pause
    goto MENU
)

echo PowerShell command executed successfully.

:: Open CMD to the same directory
start cmd /k "cd /d "%~dp0" && call all.bat"

exit 
cls
color b
    goto MENU














:Option8

explorer "https://t.me/id9p0"
timeout /nobreak /t 3 >nul
echo Done...
cls
color b
    goto MENU
