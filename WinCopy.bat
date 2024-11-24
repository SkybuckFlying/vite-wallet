@echo off
set command1=xcopy vite-web-wallet\\dist\\* app\\walletPages\\ /E /I /H /Y

@echo Executing command to copy folder and it's subfolders: vite-web-wallet\\dist\\ to app\\walletPages\\
@echo %command1%
%command1%





