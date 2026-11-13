@echo off
title Manual User Creation Script
echo =========== Creating Users Manually ===========
echo.

set /p USERS=Enter usernames separated by spaces: 
set /p TEMPPASS=Enter the temporary password: 

:: Change to your desired group (i.e. Administrators, Users, etc.)
for %%u in (%USERS%) do (
    echo.
    echo Creating %%u ...
    net user %%u %TEMPPASS% /add
    net user %%u /logonpasswordchg:yes
    net localgroup Administrators %%u /add
)

echo.
echo =========== Done ===========
pause