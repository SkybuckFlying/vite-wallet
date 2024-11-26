@echo off
set command=rd /s /q .\app\walletPages

@echo Checking for the existance of folder: .\app\walletPages
if exist .\app\walletPages (
	@echo Folder exists: .\app\walletPages
	@echo Removing: .\app\walletPages
	@echo Executing command to remove the folder: .\app\walletPages
	@echo %command% 
	%command%
	@echo Removed: .\app\walletPages
) else (
	@echo Folder did not exist or already removed: .\app\walletPages
)
