@echo off
COLOR 0A
echo                  -- D i s c o r d     L i s t e n e r    B o t  --
echo                                 B y     A d B 
echo   
echo 
echo                    --   E N T E R    K E Y W O R D S  -- 
set tab=	
echo {>keywords.json
echo %tab%"keys": [ A0h@dcToBlk#, ">>keywords.json
:while1
	if %key% leq "END" (
		set /p key=Enter Keyword : 
		echo %key%>>keywords.json
		goto :while1
	)
endlocal
