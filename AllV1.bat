git clone https://github.com/SkybuckFlying/SkyViteXDesktopWallet.git 
cd SkyViteXDesktopWallet
git checkout 6129609f9646dbc5d47f760a77da08251129fee4
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



