@echo off
set command1=set FORCE_COLOR=1
set command2=echo %FORCE_COLOR%
set command3=yarn gulp

@echo Executing command to inform GULP the terminal supports colors:
@echo %command1%
%command1%

@echo Executing command to check if terminal is informed correctly about color support, it should display 1:
%command2%

@echo Executing command to run: yarn gulp:
@echo %command3%
%command3%
