@echo off
COLOR 0A
echo               -- D I S C O R D     L I S T E N E R  -- 
echo                          B y   A d B 
set tab=	
set /p uid=Enter USER ID : 
set /p token=Enter BOT Token : 
echo {>cred.json
echo %tab%"token":"%token%",>>cred.json
echo %tab%"uid":"%uid%">>cred.json
echo }>>cred.json
call npm init
call npm install discord.js --save
echo      --- B O T    I N I T I A L I Z A T I O N   C O M P L E T E  ----
