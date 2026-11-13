@echo off
title Automated User and Group Creation Script
cd /d "%~dp0"
echo =========== Creating Users Automatically ===========
echo.

if not exist users.txt (
    echo ERROR: users.txt not found in %cd%
    pause
    exit /b
)

set /p TEMPPASS=Enter the temporary password: 

:ASKSRC
set "SRC="
set /p SRC=Enter the existing username to copy groups from (or q to quit): 

if /i "%SRC%"=="q" exit /b
if "%SRC%"=="" goto ASKSRC

net user "%SRC%" >nul 2>&1
if errorlevel 1 (
    echo ERROR: user "%SRC%" not found. Try again, or press q to quit.
    echo.
    goto ASKSRC
)

:: Collect the source user's local groups into a temp file
powershell -NoProfile -Command "Get-LocalGroup | Where-Object { (Get-LocalGroupMember -Group $_.Name -ErrorAction SilentlyContinue).Name -like '*\%SRC%' } | Select-Object -ExpandProperty Name" > groups.tmp

echo.
echo %SRC% is a member of:
type groups.tmp
echo.
echo New users will be added to ALL of the groups above.
pause

for /f %%u in (users.txt) do (
    echo.
    echo Creating %%u ...
    net user %%u %TEMPPASS% /add
    net user %%u /logonpasswordchg:yes
    for /f "usebackq delims=" %%g in ("groups.tmp") do (
        net localgroup "%%g" %%u /add
    )
)

del groups.tmp
echo.
echo =========== Done ===========
pause