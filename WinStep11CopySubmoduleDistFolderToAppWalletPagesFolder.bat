@echo off

@echo ### Win Step 11: Copy submodule dist folder to app walletPages folder: ###

@echo Executing command to copy folder and it's subfolders: vite-web-wallet\\dist\\ to app\\walletPages\\
@echo xcopy vite-web-wallet\\dist\\* app\\walletPages\\ /E /I /H /Y
xcopy vite-web-wallet\\dist\\* app\\walletPages\\ /E /I /H /Y

