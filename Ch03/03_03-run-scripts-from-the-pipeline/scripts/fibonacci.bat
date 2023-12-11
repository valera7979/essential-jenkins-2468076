@echo off
setlocal enabledelayedexpansion

set N=%1
if not defined N set N=10

set /a a=0
set /a b=1

echo The Fibonacci series is:

for /l %%i in (0,1,%N%) do (
    echo %%i  !a!
    set /a fn=!a!+!b!
    set a=!b!
    set b=!fn!
)
