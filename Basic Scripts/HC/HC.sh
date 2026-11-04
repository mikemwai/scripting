#!/bin/bash

echo
echo '====== HEALTH CHECK ======'
echo

echo '===== HOSTNAME, DATE, & DISK USAGE'
sudo bash -c '
hostname
date
df -h
'

echo
echo '===== IOSTAT STATUS ====='
sudo bash -c '
iostat -c
'
