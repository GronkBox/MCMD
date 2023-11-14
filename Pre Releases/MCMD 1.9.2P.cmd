@echo off
set dev=1
set rn=1.9.12
chcp 65001 >nul
setlocal enabledelayedexpansion
if %dev%==0 goto fail
if %dev%==1 goto auth
title what did you do?
echo i have no idea what happened, press any key to exit
pause >nul
exit

:fail
title Error.
color 40
echo Critical Error: id10t. Press enter to exit
set /p pass=
if "%pass%"=="gronk" goto auth
exit

:auth
color 04 & title MCMD Beta Release %RN% Dev & goto cls & set color=04
:cls
cls
echo                                                ╔═══════════════════════╗                                              
Echo                                                ║  MCMD - Beta Release  ║
echo                                                ╚═══════════════════════╝                                              

:call
@echo off
echo.
set /p response="%CD%>"
if "%response%"=="title" goto devchek
if "%response%"=="goto" goto devchek
if "%response%"=="cmd" goto devchek
if "%response%"=="frog" goto frog
if "%response%"=="cls" goto cls
if "%response%"=="hi" echo Beep boop i am a computer & goto call
if "%response%"=="hello" echo Sup bro? & goto call
if "%response%"=="test" goto test
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
if "%mode%" == "dev" color 04 & set color=04 & goto call
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
echo                          ╔═══════════════════════════════╗                     ░░    ░░████████▓▓    ░░██████████████████████▒▒        
echo                          ║ Made in Australia by GronkBox ║                     ▒▒██░░░░░░████▓▓          ████████████████████          
echo                          ╚═══════════════════════════════╝                      ░░      ▒▒██████    ████████████████████████          
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
color 00 & color 01 & color 02 & color 03 & color 04 & color 05 & color 06 & color 07 & color 08 & color 09 & color 0a & color 0b  & color 0c & color 0d & color 0e & color 0f & color 10 & color 20 & color 30 & color 40 & color 50 & color 60 & color 70 & color 80 & color 90 & color a0 & color b0 & color c0 & color d0 & color e0 & color f0 & color 10 & color 01 & color 11 & color 11 & color 12 & color 21 & color 13 & color 31 & color 14 & color 41 & color 15 & color 51 & color 16 & color 61 & color 17 & color 71 & color 18 & color 81 & color 19 & color 91 & color 1a & color a1 & color 1b & color b1 & color 1c & color c1 & color 1d & color d1 & color 1e & color e1 & color 1f & color f1 & color 20 & color 02 & color 21 & color 12 & color 22 & color 22 & color 23 & color 32 & color 24 & color 42 & color 25 & color 52 & color 26 & color 62 & color 27 & color 72 & color 28 & color 82 & color 29 & color 92 & color 2a & color a2 & color 2b & color b2 & color 2c & color c2 & color 2d & color d2 & color 2e & color e2 & color 2f & color f2 & color 30 & color 03 & color 31 & color 13 & color 32 & color 23 & color 33 & color 33 & color 34 & color 43 & color 35 & color 53 & color 36 & color 63 & color 37 & color 73 & color 38 & color 83 & color 39 & color 93 & color 3a & color a3 & color 3b & color b3 & color 3c & color c3 & color 3d & color d3 & color 3e & color e3 & color 3f & color f3 & color 40 & color 04 & color 41 & color 14 & color 42 & color 24 & color 43 & color 34 & color 44 & color 44 & color 45 & color 54 & color 46 & color 64 & color 47 & color 74 & color 48 & color 84 & color 49 & color 94 & color 4a & color a4 & color 4b & color b4 & color 4c & color c4 & color 4d & color d4 & color 4e & color e4 & color 4f & color f4 & color 50 & color 05 & color 51 & color 15 & color 52 & color 25 & color 53 & color 35 & color 54 & color 45 & color 55 & color 55 & color 56 & color 65 & color 57 & color 75 & color 58 & color 85 & color 59 & color 95 & color 5a & color a5 & color 5b & color b5 & color 5c & color c5 & color 5d & color d5 & color 5e & color e5 & color 5f & color f5 & color 60 & color 06 & color 61 & color 16 & color 62 & color 26 & color 63 & color 36 & color 64 & color 46 & color 65 & color 56 & color 66 & color 66 & color 67 & color 76 & color 68 & color 86 & color 69 & color 96 & color 6a & color a6 & color 6b & color b6 & color 6c & color c6 & color 6d & color d6 & color 6e & color e6 & color 6f & color f6 & color 70 & color 07 & color 71 & color 17 & color 72 & color 27 & color 73 & color 37 & color 74 & color 47 & color 75 & color 57 & color 76 & color 67 & color 77 & color 77 & color 78 & color 87 & color 79 & color 97 & color 7a & color a7 & color 7b & color b7 & color 7c & color c7 & color 7d & color d7 & color 7e & color e7 & color 7f & color f7 & color 80 & color 08 & color 81 & color 18 & color 82 & color 28 & color 83 & color 38 & color 84 & color 48 & color 85 & color 58 & color 86 & color 68 & color 87 & color 78 & color 88 & color 88 & color 89 & color 98 & color 8a & color a8 & color 8b & color b8 & color 8c & color c8 & color 8d & color d8 & color 8e & color e8 & color 8f & color f8 & color 90 & color 09 & color 91 & color 19 & color 92 & color 29 & color 93 & color 39 & color 94 & color 49 & color 95 & color 59 & color 96 & color 69 & color 97 & color 79 & color 98 & color 89 & color 99 & color 99 & color 9a & color a9 & color 9b & color b9 & color 9c & color c9 & color 9d & color d9 & color 9e & color e9 & color 9f & color f9 & color a0 & color 0a & color a1 & color 1a & color a2 & color 2a & color a3 & color 3a & color a4 & color 4a & color a5 & color 5a & color a6 & color 6a & color a7 & color 7a & color a8 & color 8a & color a9 & color 9a & color aa & color aa & color ab & color ba & color ac & color ca & color ad & color da & color ae & color ea & color af & color fa & color b0 & color 0b & color b1 & color 1b & color b2 & color 2b & color b3 & color 3b & color b4 & color 4b & color b5 & color 5b & color b6 & color 6b & color b7 & color 7b & color b8 & color 8b & color b9 & color 9b & color ba & color ab & color bb & color bb & color bc & color cb & color bd & color db & color be & color eb & color bf & color fb & color c0 & color 0c & color c1 & color 1c & color c2 & color 2c & color c3 & color 3c & color c4 & color 4c & color c5 & color 5c & color c6 & color 6c & color c7 & color 7c & color c8 & color 8c & color c9 & color 9c & color ca & color ac & color cb & color bc & color cc & color cc & color cd & color dc & color ce & color ec & color cf & color fc & color d0 & color 0d & color d1 & color 1d & color d2 & color 2d & color d3 & color 3d & color d4 & color 4d & color d5 & color 5d & color d6 & color 6d & color d7 & color 7d & color d8 & color 8d & color d9 & color 9d & color da & color ad & color db & color bd & color dc & color cd & color dd & color dd & color de & color ed & color df & color fd & color e0 & color 0e & color e1 & color 1e & color e2 & color 2e & color e3 & color 3e & color e4 & color 4e & color e5 & color 5e & color e6 & color 6e & color e7 & color 7e & color e8 & color 8e & color e9 & color 9e & color ea & color ae & color eb & color be & color ec & color ce & color ed & color de & color ee & color ee & color ef & color fe & color f0 & color 0f & color f1 & color 1f & color f2 & color 2f & color f3 & color 3f & color f4 & color 4f & color f5 & color 5f & color f6 & color 6f & color f7 & color 7f & color f8 & color 8f & color f9 & color 9f & color fa & color af & color fb & color bf & color fc & color cf & color fd & color df & color fe & color ef & color ff & color ff
color %color%
::just fucking work cunt
color 04
echo test complete.
goto call

:devchek
if %dev%==1 %response% & goto call
echo You where 2 lines of code away from breaking the program, Im going to fix it for you, you're welcome.
pause
@echo on
goto call
 :frog 
                                                                                                                           
echo                                                                                                 ░░░░▒▒░░                  
echo                                                                                               ▒▒▒▒▒▒▒▒▒▒▒▒░░              
echo                                                                                             ░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒              
echo                                                                                       ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░    
echo                                                                               ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  
echo                                                                       ░░░░▒▒▒▒▒▒░░░░░░░░░░░░░░░░▒▒▒▒▒▒░░░░░░▒▒▒▒▓▓▓▓▓▓▓▓▒▒
echo                                                   ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒
echo                                               ░░░░░░░░░░░░░░░░▒▒▒▒░░░░░░░░░░▒▒▒▒░░░░░░░░▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▓▓▓▓▒▒
echo                                           ░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓████▓▓▓▓▓▓▓▓▒▒▒▒▓▓▓▓▒▒▒▒
echo                                       ░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓████▒▒▒▒▓▓▓▓▒▒▒▒▓▓▓▓▒▒▒▒  
echo                                   ░░░░░░░░░░░░▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒    
echo                                 ░░░░░░▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒░░    
echo                               ░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▓▓▒▒▓▓▒▒▒▒▓▓▓▓▒▒▓▓▓▓▓▓▒▒░░▒▒▒▒▒▒░░        
echo                             ░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓▓▓▓▓▒▒░░░░░░▒▒▓▓▒▒            
echo                           ░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓▓▓▒▒░░░░▒▒▓▓▓▓▒▒░░            
echo                         ░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▓▓▒▒▓▓▒▒▓▓▓▓▒▒▒▒▒▒▒▒▓▓▒▒░░░░▒▒▓▓▓▓▒▒░░░░            
echo                   ░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓░░░░░░▒▒▒▒▒▒▒▒▒▒░░░░              
echo     ░░░░░░░░    ░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▓▓▓▓▓▓▓▓▒▒▒▒░░▒▒▓▓▓▓▒▒▒▒▒▒▒▒░░░░░░                
echo   ░░▒▒▒▒░░░░░░░░▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒░░░░░░░░                  
echo ░░▒▒▒▒▒▒▒▒░░░░░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒░░░░░░░░░░                    
echo   ▒▒▒▒▒▒▒▒░░░░░░░░▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒░░▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒░░░░▒▒░░░░░░                      
echo   ▒▒▒▒▒▒▒▒░░░░░░░░▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▓▒▒░░░░░░░░                          
echo   ░░░░▒▒░░░░▒▒░░░░▒▒░░░░▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒░░░░▓▓▒▒                          
echo     ▒▒░░▒▒░░▒▒░░░░░░▒▒░░░░▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓▒▒                        
echo     ░░░░▒▒░░▒▒▒▒░░░░▒▒▒▒░░▒▒▓▓▓▓▓▓▓▓▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒░░▒▒▒▒▒▒▓▓▒▒▒▒░░░░░░▒▒▒▒░░░░▒▒▒▒▒▒░░
echo     ░░▒▒░░▒▒░░▒▒▒▒░░░░▒▒░░▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░
echo     ░░▒▒░░░░░░▒▒▒▒░░░░▒▒▒▒░░▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒░░▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░      
echo     ░░▒▒░░░░░░▒▒▒▒▒▒░░▒▒▒▒░░▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░▒▒▒▒░░          
echo     ░░░░▒▒░░▒▒▒▒▒▒▒▒▒▒░░▒▒░░▒▒▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░▒▒▒▒▓▓▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░▒▒░░        
echo     ░░░░░░▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒░░░░▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒░░░░░░░░▒▒▒▒▒▒▒▒▒▒░░░░    ░░▒▒░░    
echo       ░░░░▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒░░░░░░░░░░░░▒▒▒▒░░
echo       ░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░    ░░▒▒▒▒▒▒▒▒        ░░▒▒▒▒  
echo         ░░░░░░▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓████▓▓▓▓▒▒▒▒▒▒░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒░░░░░░░░░░░░░░░░      ░░░░░░                  
echo         ░░░░▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓████████▓▓▓▓▓▓▓▓▒▒▓▓▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒░░░░░░░░░░░░░░                              
echo           ░░░░▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒▓▓▒▒░░░░░░░░░░░░░░                              
echo           ░░░░▒▒░░▓▓▒▒▒▒▒▒▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓░░░░░░░░░░░░░░                              
echo             ░░░░▒▒▒▒▓▓▓▓▓▓▓▓▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░                              
echo               ░░▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▓▓▓▓▓▓░░░░░░░░░░░░                              
echo               ▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▓▓▓▓▓▓▒▒░░░░░░░░░░                              
echo           ░░▒▒▒▒░░▒▒▒▒▓▓▓▓▓▓▒▒▒▒░░░░░░░░        ░░    ░░░░░░░░░░░░░░▒▒▒▒▒▒▓▓▓▓▓▓▒▒░░░░░░                                  
echo         ░░░░▒▒░░░░▒▒▒▒▓▓▓▓▒▒▒▒░░░░░░░░                            ░░░░▒▒▒▒▓▓▓▓▓▓▒▒░░░░                                    
echo       ░░▒▒▒▒▒▒  ░░▒▒▒▒▓▓▓▓░░░░░░░░░░                                ░░▒▒▒▒▒▒▓▓▓▓▓▓░░░░    ░░░░░░                          
echo         ░░░░░░░░░░▒▒▒▒▓▓▒▒░░░░░░                                      ░░▒▒▒▒▓▓▓▓▒▒▓▓      ▒▒▒▒░░                          
echo                   ░░▒▒▒▒▒▒▒▒                                          ░░░░▒▒▒▒▒▒▒▒▒▒░░░░▒▒▒▒▒▒                            
echo                   ░░▒▒▒▒▒▒▒▒                                          ░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░                              
echo                   ░░░░░░                                              ░░░░░░▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░                            
echo                   ▒▒▒▒▒▒                                              ░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒░░░░░░▒▒▒▒░░░░          
echo                   ▒▒▓▓▒▒                                                ░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒          
echo                                                                             ░░░░░░▒▒▒▒▒▒▒▒▒▒░░░░            ░░░░          
echo                                                                                     ░░░░▒▒▒▒░░                            
echo                                                                                       ░░▒▒▒▒▒▒                            
echo                                                                                         ░░▒▒▒▒░░                          
echo                                                                                             ▒▒▒▒▒▒                        
echo.
color 02
echo forg.
pause
color 04
goto call
::version 1.9.12