@echo off
title Automated User Creation Script
cd /d "%~dp0"
echo =========== Creating Users Automatically ===========
echo.

set /p TEMPPASS=Enter the temporary password: 

for /f %%u in (users.txt) do (
    echo.
    echo Creating %%u ...
    net user %%u %TEMPPASS% /add
    net user %%u /logonpasswordchg:yes
    net localgroup Administrators %%u /add
)

echo.
echo =========== Done ===========
pause