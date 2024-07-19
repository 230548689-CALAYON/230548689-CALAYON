@echo off
rem BSCRIPT03.bat: Windows Utilities Execution Script

:main
cls
echo Choose a Windows utility to execute:
echo 1: ipconfig
echo 2: tasklist
echo 3: taskkill
echo 4: chkdsk
echo 5: format
echo 6: defrag
echo 7: find
echo 8: attrib

set /p choice="Enter chosen number (1/2/3/4/5/6/7/8): "

if "%choice%"=="1" (
    call :ipconfig
) else if "%choice%"=="2" (
    call :tasklist
) else if "%choice%"=="3" (
    call :taskkill
) else if "%choice%"=="4" (
    call :chkdsk
) else if "%choice%"=="5" (
    call :format
) else if "%choice%"=="6" (
    call :defrag
) else if "%choice%"=="7" (
    call :find
) else if "%choice%"=="8" (
    call :attrib
) else (
    echo Invalid choice. Please choose a number between 1 and 8.
    pause
    goto main
)

goto end

:ipconfig
echo Running ipconfig...
ipconfig
pause
goto main

:tasklist
echo Running tasklist...
tasklist
pause
goto main

:taskkill
set /p pid="Enter the PID of the process to kill: "
if "%pid%"=="" (
    echo PID cannot be empty.
) else (
    taskkill /PID %pid%
    if errorlevel 1 (
        echo Failed to kill process with PID %pid%.
    ) else (
        echo Process with PID %pid% killed successfully.
    )
)
pause
goto main

:chkdsk
set /p drive="Enter the drive letter to check (e.g., C:): "
if "%drive%"=="" (
    echo Drive letter cannot be empty.
) else (
    chkdsk %drive%
)
pause
goto main

:format
set /p drive="Enter the drive letter to format (e.g., E:): "
if "%drive%"=="" (
    echo Drive letter cannot be empty.
) else (
    echo WARNING: Formatting will erase all data on %drive%
    pause
    format %drive%
)
pause
goto main

:defrag
set /p drive="Enter the drive letter to defragment (e.g., C:): "
if "%drive%"=="" (
    echo Drive letter cannot be empty.
) else (
    defrag %drive%
)
pause
goto main

:find
set /p search="Enter the string to find: "
set /p file="Enter the file to search in: "
if "%search%"=="" (
    echo Search string cannot be empty.
) else if "%file%"=="" (
    echo File cannot be empty.
) else (
    find "%search%" "%file%"
)
pause
goto main

:attrib
set /p file="Enter the file or directory to change attributes: "
set /p attrs="Enter the attributes to set (e.g., +r -h): "
if "%file%"=="" (
    echo File or directory cannot be empty.
) else if "%attrs%"=="" (
    echo Attributes cannot be empty.
) else (
    attrib %attrs% "%file%"
)
pause
goto main

:end
echo Exiting script.
pause
goto :eof