@echo off
echo author : Daeho Han(supreme2705@gmail.com)
echo title : Node.Js Install
echo desc : Install Node.Js By Chocolatey
pause

node -v
if not "%ERRORLEVEL%" == "0" goto NODE_INSTALL
goto NODE_EXIST

:NODE_INSTALL
choco install nodejs
goto QUIT

:NODE_EXIST
echo "Node is already installed !"
goto QUIT

:QUIT