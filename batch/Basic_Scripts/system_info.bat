@echo off
Title System Information

echo ====== System Information ======
hostname
systeminfo | find "System Boot Time"
pause