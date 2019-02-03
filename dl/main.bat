title CS:GO Installer
cls
echo ------------
echo CS:GO Installer / Runner
echo ------------
cd bin
curl.exe https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip --output cmd.zip >> null
7za.exe e cmd.zip >> null
set /p Username=username
set /p Password=password
set /p GuardCode=guardcode
set /p updateOrrun=
steamcmd.exe +login %username% %password% %guardcode% +app_%updateOrrun% 730
rem really bad code but it will work for the time being
