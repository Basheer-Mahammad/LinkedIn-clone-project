# Email Setup Instructions

## Quick Setup (Recommended)

### Step 1: Run the Configuration Script
```bash
# From the backend folder, run:
set-email-config.bat
```
This script will guide you through setting up Gmail credentials.

### Step 2: Start Backend with Email
```bash
# Use one of these methods:
start-backend-gmail.bat
# OR
.\start-backend-with-email.ps1
```

## Manual Setup

### Option 1: Environment Variables
Set these environment variables in Windows:
```
GMAIL_USERNAME=your-email@gmail.com
GMAIL_APP_PASSWORD=your-16-character-app-password
```

### Option 2: Direct Configuration
Edit `src/main/resources/application.properties`:
```properties
spring.mail.username=your-email@gmail.com
spring.mail.password=your-app-password
```

## Getting Gmail App Password

1. **Enable 2-Factor Authentication**
   - Go to [Google Account Security](https://myaccount.google.com/security)
   - Enable 2-Step Verification

2. **Generate App Password**
   - Go to [Google Account Security](https://myaccount.google.com/security)
   - Click "2-Step Verification"
   - Scroll down and click "App passwords"
   - Select "Mail" and your device
   - Copy the 16-character password

## Testing

1. Start the backend with email configuration
2. Register a new account on the frontend
3. Check your email for the verification code
4. Enter the code on the verification page

## Troubleshooting

- **535 Authentication Failed**: Wrong credentials or 2FA not enabled
- **Connection refused**: Firewall blocking port 587
- **No email received**: Check spam folder, verify email address

## Alternative Email Providers

### Outlook/Hotmail
```properties
spring.mail.host=smtp-mail.outlook.com
spring.mail.port=587
spring.mail.username=your-email@outlook.com
spring.mail.password=your-password
```

### Yahoo Mail
```properties
spring.mail.host=smtp.mail.yahoo.com
spring.mail.port=587
spring.mail.username=your-email@yahoo.com
spring.mail.password=your-app-password
```

For detailed Gmail setup, see `GMAIL_SETUP_GUIDE.md`.