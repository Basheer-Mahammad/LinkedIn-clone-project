@echo off
cd /d "%~dp0"
echo Starting LinkedIn Backend with Gmail Configuration...
echo Backend will be available at: http://localhost:8081
echo Email test endpoint: http://localhost:8081/test-email?toEmail=your-email@gmail.com
echo.
gradlew.bat bootRun
pause