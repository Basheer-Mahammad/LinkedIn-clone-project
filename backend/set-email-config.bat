@echo off
echo.
echo ========================================
echo     LinkedIn Backend Email Setup
echo ========================================
echo.
echo This script will help you configure Gmail for sending verification emails.
echo You need:
echo 1. A Gmail account
echo 2. An App Password from your Google Account (see GMAIL_SETUP_GUIDE.md)
echo.

set /p gmail_username="Enter your Gmail address: "
set /p gmail_password="Enter your Gmail App Password (16 characters): "

echo.
echo Updating application.properties with Gmail configuration...

REM Backup original file
copy src\main\resources\application.properties src\main\resources\application.properties.backup

REM Update mail configuration
powershell -Command "(Get-Content src\main\resources\application.properties) -replace 'spring.mail.host=localhost', 'spring.mail.host=smtp.gmail.com' | Set-Content src\main\resources\application.properties"
powershell -Command "(Get-Content src\main\resources\application.properties) -replace 'spring.mail.port=1025', 'spring.mail.port=587' | Set-Content src\main\resources\application.properties"
powershell -Command "(Get-Content src\main\resources\application.properties) -replace 'spring.mail.properties.mail.smtp.auth=false', 'spring.mail.properties.mail.smtp.auth=true' | Set-Content src\main\resources\application.properties"
powershell -Command "(Get-Content src\main\resources\application.properties) -replace 'spring.mail.properties.mail.smtp.starttls.enable=false', 'spring.mail.properties.mail.smtp.starttls.enable=true' | Set-Content src\main\resources\application.properties"

REM Add username and password
echo spring.mail.username=%gmail_username% >> src\main\resources\application.properties
echo spring.mail.password=%gmail_password% >> src\main\resources\application.properties

echo.
echo ✓ Email configuration updated successfully!
echo ✓ Backup saved as application.properties.backup
echo.
echo Next steps:
echo 1. Restart the backend server
echo 2. Test email verification
echo.
pause