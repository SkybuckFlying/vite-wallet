git clone https://github.com/SkybuckFlying/SkyViteXDesktopWallet.git 
cd SkyViteXDesktopWallet
git checkout 794ef9c0f6f2e70ea9c905b9a53ff33f639e675a
git submodule init
git submodule update
cd vite-web-wallet
call yarn install
call yarn build
cd ..
rd /s /q .\app\walletPages
xcopy vite-web-wallet\\dist\\* app\\walletPages\\ /E /I /H /Y
call yarn install
set FORCE_COLOR=1
call yarn gulp
set FORCE_COLOR=1
set platform=WIN
set NODE_ENV=prod
call yarn build:w11



