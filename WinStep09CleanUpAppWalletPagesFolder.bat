@echo off

@echo ### Win Step 09: Clean up app walletPages folder: ###
@echo Checking for the existance of folder: .\app\walletPages
if exist .\app\walletPages (
	@echo Folder exists: .\app\walletPages
	@echo Removing: .\app\walletPages
	@echo Executing command to remove the folder: .\app\walletPages
	@echo rd /s /q .\app\walletPages
	rd /s /q .\app\walletPages
	@echo Removed: .\app\walletPages
) else (
	@echo Folder did not exist or already removed: .\app\walletPages
)
