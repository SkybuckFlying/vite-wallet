@echo off

@echo ### Win Step 12: Build main: ###

@echo Executing command to inform node the terminal supports colors:
@echo set FORCE_COLOR=1
set FORCE_COLOR=1

@echo Executing command to check if terminal is informed correctly about color support, it should display 1:
@echo %%FORCE_COLOR%%
echo %FORCE_COLOR%

@echo Executing command to inform node the platform is windows:
@echo set platform=WIN
set platform=WIN

@echo Executing command to check if node is informed correctly about platform, it should display WIN:
@echo %%platform%%
echo %platform%

@echo Executing command to inform node the node environment is production:
@echo set NODE_ENV=prod
set NODE_ENV=prod

@echo Executing command to check if node is informed correctly about node environment, it should display prod:
@echo %%NODE_ENV%%
echo %NODE_ENV%

@echo Executing command to run node build.js:
@echo yarn build:w11
call yarn run windows:batchfiles:npmbuild:windows
