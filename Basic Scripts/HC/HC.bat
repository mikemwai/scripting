@echo off
Title Health Check

echo ==== Health Check ====
ssh username@ip_address "echo ==== IOSTATUS ====; iostat -c; echo ==== File system usage ====; df -h; echo; echo ==== User2 File system Usage ====; sudo -iu user2 df -h;"
pause