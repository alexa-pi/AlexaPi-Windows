echo off
title AlexaPi for Windows Installation
cls

SET mypath=%~dp0
SET path=%mypath:~0,-8%

echo -------------------------------------------
echo Welcome in AlexaPi installation for Windows
echo -------------------------------------------

set /p pythonpath=Enter your Python path: 

echo Installing dependencies:
%pythonpath%\Scripts\pip.exe install -r %path%requirements.txt

pause
cls

cd ..

copy config.template.yaml config.yaml

%pythonpath%\python.exe auth_web.py

echo =====
echo Done!
echo =====
pause
cls
echo ######################################################################################################
echo IMPORTANT NOTICE:
echo You HAVE TO set up Amazon keys and maybe your system audio.
echo See on our wiki
echo ######################################################################################################
pause