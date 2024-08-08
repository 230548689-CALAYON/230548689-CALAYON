echo off
rem Open five websites
start "" "https://www.photoroom.com"
start "" "https://www.bing.com"
start "" "https://www.imdb.com"
start "" "https://www.reddit.com"
start "" "https://www.lifeatcanva.com"

rem Launch calculator
start calc.exe

rem Launch notepad 
start notepad.exe

rem Initiate system shutdown after a brief delay
shutdown /s /t 60

rem Pause for user to see message before the actual shutting down 
echo System shutdown in 60 seconds. Press any key to stop.
Pause
shutdown /a

