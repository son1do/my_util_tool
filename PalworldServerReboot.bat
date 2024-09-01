rem # Palworld Serrver Backup/Update/Reboot batch File for Windows

rem # server taskkill
taskkill /im PalServer-Win64-Test-Cmd.exe
sleep 10

rem # backup
rem # xcopy A B (copy from A to B\date)
rem # Please edit filepath
set now=%date:~-10,4%%date:~-5,2%%date:~-2,2%
xcopy /f /s /e /h "C:\Program Files (x86)\Steam\steamapps\common\PalServer\Pal\Saved" "C:\Palworldbackup"

rem # server update
steamcmd +login anonymous +app_update 2394010 validate +quit
sleep 60

rem # server boot
cd C:\Program Files (x86)\Steam\steamapps\common\PalServer
PalServer.exe

echo Server Backup/Update/Reboot Completed!