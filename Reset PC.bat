@echo off
:begin
set /p choice=Are you sure you want to restart your computer? (y/n)
set choice=%choice:~0,1%
if /i "%choice%"=="y" goto yes
if /i "%choice%"=="n" goto no
echo Invalid input. Please enter yes or no.
goto begin
:yes
shutdown -r -t 0
goto end
:no
exit /b
:end
