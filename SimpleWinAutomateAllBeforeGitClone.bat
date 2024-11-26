REM Easy setup for this repository:

REM Steps:
REM Step 1. Only download this batchfile from github to a new local empty folder. 
REM Step 2. Then run the batchfile in the local folder.
REM Do not run in an already cloned repository otherwise it will create another subfolder with same repository, resulting in duplicated repository.

@echo off
@echo This batch file will clone into SkyViteXDesktopWallet subfolder, proceed with batch file ? (Y/N)
@echo Choose Yes, if no git clone was done yet.
@echo Choose No, if git clone was already done.

choice /M "Press Y to proceed or N to terminate:"

if %errorlevel%==1 (

@echo Proceeding with the batch file...
git clone https://github.com/SkybuckFlying/SkyViteXDesktopWallet.git 
cd SkyViteXDesktopWallet
git submodule init
git submodule update
cd vite-web-wallet
call yarn install
call yarn build
cd ..
call yarn install
set FORCE_COLOR=1
call yarn gulp
rd /s /q .\app\walletPages
xcopy vite-web-wallet\\dist\\* app\\walletPages\\ /E /I /H /Y
set FORCE_COLOR=1
set platform=WIN
set NODE_ENV=prod
call yarn build:w11
) else (
@echo Terminating the batch file...
exit /B
)




