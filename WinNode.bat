@echo off
setlocal enabledelayedexpansion

set command1=set FORCE_COLOR=1
set command2=echo !FORCE_COLOR!

set command3=set platform=WIN
set command4=echo !platform!

set command5=set NODE_ENV=prod
set command6=echo !NODE_ENV!

set command7=node build.js

@echo Executing command to inform node the terminal supports colors:
@echo %command1%
%command1%

@echo Executing command to check if terminal is informed correctly about color support, it should display 1:
%command2%

@echo Executing command to inform node the platform is windows:
@echo %command3%
%command3%

@echo Executing command to check if node is informed correctly about platform, it should display WIN:
%command4%

@echo Executing command to inform node the node environment is production:
@echo %command5%
%command5%

@echo Executing command to check if node is informed correctly about node environment, it should display prod:
%command6%

@echo Executing command to run node build.js:
@echo %command7%
%command7%

endlocal
