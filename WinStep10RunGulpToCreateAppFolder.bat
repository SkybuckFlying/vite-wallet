@echo off

@echo ### Win Step 10: Run gulp to create app folder: ###

@echo Executing command to inform GULP the terminal supports colors:
@echo set FORCE_COLOR=1
set FORCE_COLOR=1

@echo Executing command to check if terminal is informed correctly about color support, it should display 1:
@echo echo %%FORCE_COLOR%%
echo %FORCE_COLOR%

@echo Executing command to run: yarn gulp:
@echo call yarn gulp
call yarn gulp
