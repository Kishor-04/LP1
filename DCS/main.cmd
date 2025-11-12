@echo off
title DCS File Downloader

:menu
cls
echo ========================================
echo    DCS Assignment File Downloader
echo ========================================
echo.
echo Select an assignment to download:
echo.
echo [1] Assignment 1 - RMI (All 4 Files)
echo [2] Assignment 3 - MPI (1 File)
echo [3] Assignment 4 - Berkeley_Bully_Ring (All 4 Files)
echo [4] Assignment 5 - WebService (All 2 Files)
echo.
echo [5] Download ALL Assignments
echo [0] Exit
echo.
echo ========================================
set /p choice="Enter your choice (0-5): "

if "%choice%"=="1" goto assign1
if "%choice%"=="2" goto assign3
if "%choice%"=="3" goto assign4
if "%choice%"=="4" goto assign5
if "%choice%"=="5" goto download_all
if "%choice%"=="0" goto exit
goto invalid

:assign1
echo.
echo ========================================
echo Downloading Assignment 1 - RMI Files...
echo ========================================
if not exist "Assign1_RMI" mkdir Assign1_RMI
echo.
echo [1/4] Downloading ArithmeticClient.java...
curl -L -o "Assign1_RMI\ArithmeticClient.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticClient.java" && echo [SUCCESS] ArithmeticClient.java downloaded!
echo.
echo [2/4] Downloading ArithmeticImplementation.java...
curl -L -o "Assign1_RMI\ArithmeticImplementation.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticImplementation.java" && echo [SUCCESS] ArithmeticImplementation.java downloaded!
echo.
echo [3/4] Downloading ArithmeticInterface.java...
curl -L -o "Assign1_RMI\ArithmeticInterface.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticInterface.java" && echo [SUCCESS] ArithmeticInterface.java downloaded!
echo.
echo [4/4] Downloading ArithmeticServer.java...
curl -L -o "Assign1_RMI\ArithmeticServer.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticServer.java" && echo [SUCCESS] ArithmeticServer.java downloaded!
echo.
echo ========================================
echo Assignment 1 - All Files Downloaded Successfully!
echo ========================================
goto done

:assign3
echo.
echo ========================================
echo Downloading Assignment 3 - MPI Files...
echo ========================================
if not exist "Assign3_MPI" mkdir Assign3_MPI
echo.
echo [1/1] Downloading mpi.cpp...
curl -L -o "Assign3_MPI\mpi.cpp" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign3_MPI/mpi.cpp" && echo [SUCCESS] mpi.cpp downloaded!
echo.
echo ========================================
echo Assignment 3 - All Files Downloaded Successfully!
echo ========================================
goto done

:assign4
echo.
echo ========================================
echo Downloading Assignment 4 - Berkeley_Bully_Ring Files...
echo ========================================
if not exist "Assign4_Berkeley_Bully_ring" mkdir Assign4_Berkeley_Bully_ring
if not exist "Assign4_Berkeley_Bully_ring\Berkeley" mkdir Assign4_Berkeley_Bully_ring\Berkeley
echo.
echo [1/4] Downloading BullyAlgorithm.java...
curl -L -o "Assign4_Berkeley_Bully_ring\BullyAlgorithm.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/BullyAlgorithm.java" && echo [SUCCESS] BullyAlgorithm.java downloaded!
echo.
echo [2/4] Downloading ring.java...
curl -L -o "Assign4_Berkeley_Bully_ring\ring.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/ring.java" && echo [SUCCESS] ring.java downloaded!
echo.
echo [3/4] Downloading Berkeley/client.java...
curl -L -o "Assign4_Berkeley_Bully_ring\Berkeley\client.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/Berkeley/client.java" && echo [SUCCESS] Berkeley/client.java downloaded!
echo.
echo [4/4] Downloading Berkeley/server.java...
curl -L -o "Assign4_Berkeley_Bully_ring\Berkeley\server.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/Berkeley/server.java" && echo [SUCCESS] Berkeley/server.java downloaded!
echo.
echo ========================================
echo Assignment 4 - All Files Downloaded Successfully!
echo ========================================
goto done

:assign5
echo.
echo ========================================
echo Downloading Assignment 5 - WebService Files...
echo ========================================
if not exist "Assign5_WebService" mkdir Assign5_WebService
echo.
echo [1/2] Downloading Client.java...
curl -L -o "Assign5_WebService\Client.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign5_WebService/Client.java" && echo [SUCCESS] Client.java downloaded!
echo.
echo [2/2] Downloading Server.java...
curl -L -o "Assign5_WebService\Server.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign5_WebService/Server.java" && echo [SUCCESS] Server.java downloaded!
echo.
echo ========================================
echo Assignment 5 - All Files Downloaded Successfully!
echo ========================================
goto done

:download_all
echo.
echo ========================================
echo Downloading ALL Assignment Files...
echo ========================================
echo.

REM Create all directories
if not exist "Assign1_RMI" mkdir Assign1_RMI
if not exist "Assign3_MPI" mkdir Assign3_MPI
if not exist "Assign4_Berkeley_Bully_ring" mkdir Assign4_Berkeley_Bully_ring
if not exist "Assign4_Berkeley_Bully_ring\Berkeley" mkdir Assign4_Berkeley_Bully_ring\Berkeley
if not exist "Assign5_WebService" mkdir Assign5_WebService

echo ----------------------------------------
echo Downloading Assignment 1 Files (4 files)...
echo ----------------------------------------
curl -L -o "Assign1_RMI\ArithmeticClient.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticClient.java" && echo [SUCCESS] ArithmeticClient.java
curl -L -o "Assign1_RMI\ArithmeticImplementation.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticImplementation.java" && echo [SUCCESS] ArithmeticImplementation.java
curl -L -o "Assign1_RMI\ArithmeticInterface.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticInterface.java" && echo [SUCCESS] ArithmeticInterface.java
curl -L -o "Assign1_RMI\ArithmeticServer.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign1_RMI/ArithmeticServer.java" && echo [SUCCESS] ArithmeticServer.java

echo.
echo ----------------------------------------
echo Downloading Assignment 3 Files (1 file)...
echo ----------------------------------------
curl -L -o "Assign3_MPI\mpi.cpp" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign3_MPI/mpi.cpp" && echo [SUCCESS] mpi.cpp

echo.
echo ----------------------------------------
echo Downloading Assignment 4 Files (4 files)...
echo ----------------------------------------
curl -L -o "Assign4_Berkeley_Bully_ring\BullyAlgorithm.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/BullyAlgorithm.java" && echo [SUCCESS] BullyAlgorithm.java
curl -L -o "Assign4_Berkeley_Bully_ring\ring.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/ring.java" && echo [SUCCESS] ring.java
curl -L -o "Assign4_Berkeley_Bully_ring\Berkeley\client.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/Berkeley/client.java" && echo [SUCCESS] Berkeley/client.java
curl -L -o "Assign4_Berkeley_Bully_ring\Berkeley\server.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign4_Berkeley_Bully_ring/Berkeley/server.java" && echo [SUCCESS] Berkeley/server.java

echo.
echo ----------------------------------------
echo Downloading Assignment 5 Files (2 files)...
echo ----------------------------------------
curl -L -o "Assign5_WebService\Client.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign5_WebService/Client.java" && echo [SUCCESS] Client.java
curl -L -o "Assign5_WebService\Server.java" "https://raw.githubusercontent.com/Kishor-04/LP1/main/DCS/Assign5_WebService/Server.java" && echo [SUCCESS] Server.java

echo.
echo ========================================
echo All Files Downloaded Successfully!
echo Total: 11 files downloaded
echo ========================================
goto done

:invalid
echo.
echo Invalid choice! Please select a valid option (0-5).
timeout /t 2 >nul
goto menu

:done
echo.
pause
goto menu

:exit
echo.
echo ========================================
echo Thank you for using DCS File Downloader!
echo ========================================
timeout /t 2 >nul
exit