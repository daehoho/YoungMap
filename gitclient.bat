@echo off
echo author : Daeho Han(supreme2705@gmail.com)
echo title : Git and Chocolatey Install
echo desc : Install chocolatey and git client
pause

choco -v
if not "%ERRORLEVEL%" == "0" goto CHOCO_INSTALL
goto CHOCO_EXIST

:CHOCO_INSTALL
echo. install chocolatey(https://chocolatey.org)
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
goto GIT_CLIENT_INSTALL
goto QUIT


:GIT_CLIENT_INSTALL
choco install git
goto QUIT

:CHOCO_EXIST
echo "choco is already installed !"
goto GIT_CLIENT_INSTALL


:QUIT
