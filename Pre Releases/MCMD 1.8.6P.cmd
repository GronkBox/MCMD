set dev=1
@echo off
set rn=1.8.6
chcp 65001 >nul
setlocal enabledelayedexpansion
title MCMD-SE Unfinished Release %RN%
color 40 & set color=f0
if %dev%==1 color 04 & title MCMD-SE Unfinished Release %RN% Dev & goto cls 
cls
echo WARNING, OUTDATED VERSION
echo PRESS ANY KEY TO PROCEED
pause>nul  
color f0
:cls
cls
Echo MCMD - Second Edition
echo Version pre 0.9.12 is available to download.
:call
@echo off
echo.
set /p response="%CD%>"
if "%response%"=="title" goto devchek
if "%response%"=="goto" goto devchek
if "%response%"=="cmd" goto devchek
if "%response%"=="cls" goto cls
if "%response%"=="hi" echo Beep boop i am a computer & goto call
if "%response%"=="hello" echo Sup bro? & goto call
if "%response%"=="test" goto test
if "%response%"=="userlog" goto userlog
set firstword=%response:~0,4%
if "%firstword%" == "goto" goto devchek
if "%firstword%" == "mode" goto setup
%response%
goto call
:setup
set mode=%response:~5%
set spaceword=%response:~4,1%
if not "%spaceword%" == " " goto inv
if "%mode%" == "dark" color 0f & set color=0f & goto call
if "%mode%" == "light" color f0 & set color=f0 & goto call
if "%mode%" == "piss" color 6e & set color=6e  & goto call
if "%mode%" == "hacker" color 0a & set color=0a & goto call
if "%mode%" == "developer" color 04 & set color=04 & goto call
echo Nope try again.
goto call
:inv
echo '%response%' is not recognized as an internal or external command,
echo operable program or batch file.
goto call
:test                                                                                                                                     
echo                                                                                                  ██                                  
echo                                                        ████    ██▒▒        ░░                    ██                                  
echo                                                          ▒▒██▓▓██████████▓▓░░▓▓                ████░░                                
echo                                                        ██████████████████████                  ██████                                
echo                                                        ████████████████████░░                  ██████                                
echo                                          ▒▒▓▓▒▒      ▓▓████████████████████  ░░                ██████░░                              
echo                                        ████████▒▒    ████████████████████                      ██████████                            
echo                                      ▓▓████████  ▒▒▒▒▒▒  ██████████████████░░                  ████████████                          
echo                                      ████████  ▒▒▒▒▒▒    ████████████████████▒▒                ████████████                          
echo                                    ▒▒████▓▓  ▒▒▒▒░░    ▒▒████████████████████████              ████████████                          
echo                              ▒▒▒▒  ████  ▒▒▒▒      ▒▒████████████████████████████████▓▓░░    ██████████████▒▒                        
echo                              ▒▒▒▒  ██░░▒▒▒▒      ██████████████████████████████████████▒▒    ████  ██████████                        
echo                              ▒▒▒▒  ░░▒▒░░    ▒▒██████████████████████████████████████████████  ░░    ████████                        
echo                            ▒▒▒▒▒▒                        ████████████████████████████████████▓▓    ░░████████                        
echo                          ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████████████████████████████████████    ▓▓██████████▒▒                    
echo                    ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████████████████████████████████████████████████████████████▒▒              
echo            ▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████████████████████████████████████████████████████████████              
echo                          ▒▒▒▒▒▒▒▒                        ██████████████████████████████████████████████████████████████▓▓            
echo    ▒▒▓▓████▒▒    ░░▒▒▒▒  ▒▒▒▒▒▒▒▒      ▒▒▒▒  ▓▓██████████████████████████████████████████████████████████████████████████            
echo    ▓▓████▒▒    ▒▒▒▒░░▒▒░░▒▒▒▒▒▒▒▒░░▒▒    ▒▒▒▒░░▒▒██████████████████████████████████████████████████████████████████░░████▓▓▒▒        
echo    ██▓▓    ░░▒▒▒▒  ████  ▒▒▒▒▒▒▒▒░░████      ▒▒▒▒░░░░██████████████████████████████████████████████████████████  ▒▒    ▓▓████        
echo          ▒▒▒▒  ▓▓██████  ▒▒▒▒▒▒▒▒░░██████▓▓      ▒▒▒▒  ▓▓██████████████████████████████████████████████████████        ██████▓▓      
echo      ░░▒▒▒▒░░██████████  ▒▒▒▒▒▒▒▒░░██████████        ▒▒▒▒██████████████████░░████████████████████████████████▓▓▒▒    ░░██████████    
echo    ░░▒▒▒▒  ████████████  ▒▒▒▒▒▒▒▒░░████████████      ░░▒▒██████████████░░▒▒    ██████████████████████████████████  ▒▒  ██████████▒▒  
echo    ▓▓██████████████████▓▓██▓▓▓▓████████████████████▓▓▓▓▓▓██████████████        ████████████████████████████████▓▓████▓▓████████████▒▒
echo  ░░  ████████████████████████████████████████████████████████████████▓▓▒▒    ▓▓████████████████████████████████████████████████████▓▓
echo    ██████████████████████████▓▓████████████████████████████████████████▓▓▒▒▓▓▓▓██████████████████████████████████████████████████████
echo    ▓▓████████████████░░▒▒██    ██▒▒  ████████████████████████████████████████████████████████████████████▓▓████████████████████████▓▓
echo    ░░██████████████████            ▓▓██████████████████████████████████████████████████████████████████░░  ▓▓████████████████████████
echo      ██████████████████            ████████████████████████████████████████████████████████████████████▒▒  ██████████████████████████
echo      ▓▓██████████████▓▓            ▓▓██████████████████████████████████████████████████████████████████▒▒████████████████████████████
echo        ████████████▒▒                ▒▒██████████████████████████████████████████████████████████████████████████████████████████████
echo        ██████████████████        ████████████████████████████████████████████████████████████████████████████████████████████████████
echo        ██████████████████  ▒▒    ██████████████████████████████████████████████████████████████████████████████████████████████████▓▓
echo        ▒▒██████████████▓▓██████▒▒▓▓████████████████████████████████████████████████████████████████████████████████████████████████▒▒
echo          ████████████████████████████████████████▓▓          ██████████████████████████████████████████████████████████████████████  
echo          ██████████████████████████████▓▓                          ▒▒████████████████████████████████████████████████████████████▓▓  
echo          ████████████████████████████                                ██████████▓▓░░████████████████████████████████████████████      
echo        ██████████████  ░░  ░░▒▒░░░░                                    ▓▓████    ████████████████▒▒████████████████████████████      
echo          ████████▒▒                                                    ░░██    ░░▓▓░░████████  ░░    ████████████████████████        
echo                          [-----------------------------]                     ░░    ░░████████▓▓    ░░██████████████████████▒▒        
echo                          [Made in Australia by GronkBox]                    ▒▒██░░░░░░████▓▓          ████████████████████          
echo                          [-----------------------------]                       ░░      ▒▒██████    ████████████████████████          
echo                                                                                          ██████▓▓████████████████████████▓▓          
echo                                                                                          ▒▒██████████████████████████████▓▓          
echo                                                                                            ░░▓▓██████████████████▒▒                  
echo                                                                                                    ████    ▓▓██                      
echo.                                                                                                                                              
echo                                                                                                                    ░░                
echo                                                                                                                    ▒▒                
echo                                                                                                          ██░░  ░░▓▓██                
echo                                                                                                          ████████████                
echo                                                                                                            ████████▓▓                
echo                                                                                                            ████████░░               
color 00
color 01
color 02
color 03
color 04
color 05
color 06
color 07
color 08
color 09
color 0a
color 0b 
color 0c
color 0d
color 0e
color 0f
color 10
color 20
color 30
color 40
color 50
color 60
color 70
color 80
color 90
color a0
color b0
color c0
color d0
color e0 & color f0
color %color% 
echo (if you cant see it make it fullscreen)
echo test complete.
goto call

:devchek
if %dev%==1 %response% & goto call
echo You where 2 lines of code away from breaking the program, Im going to fix it for you, you're welcome.
pause
@echo on
goto call
:userlog
set /p directorylog="Enter the directory>"
echo exporting user log
dir C:\users >%directorylog%\logs.txt

echo %directorylog%\logs.txt
goto call