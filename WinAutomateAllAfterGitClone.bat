@echo off
@echo ### Win Automate All: ###

call WinStep02SubModuleInit.bat
call WinStep03SubModuleUpdate.bat
call WinStep04BuildSubModule.bat
call WinStep04.1ChangeToSubModuleFolder.bat
call WinStep05InstallDependenciesForSubModule.bat
call WinStep06BuildSubModule.bat
call WinStep07ChangeBackToMainFolder.bat
call WinStep08InstallDependenciesForMain.bat
call WinStep09CleanUpAppWalletPagesFolder.bat
call WinStep10RunGulpToCreateAppFolder.bat
call WinStep11CopySubmoduleDistFolderToAppWalletPagesFolder.bat
call WinStep12BuildMain.bat
