# Gmail Setup Guide for LinkedIn Backend

## Issue: Authentication Failed Error
If you're getting "Authentication failed" errors, follow these steps to fix it:

## Step 1: Enable 2-Factor Authentication
1. Go to: https://myaccount.google.com/
2. Click on **Security** in the left menu
3. Under "Signing in to Google", click **2-Step Verification**
4. Follow the prompts to enable 2FA if not already enabled

## Step 2: Generate a NEW App Password
1. Go to: https://myaccount.google.com/apppasswords
2. **OR** Navigate: Google Account → Security → 2-Step Verification → App passwords
3. Select app: **Mail**
4. Select device: **Windows Computer**
5. Click **Generate**
6. **IMPORTANT**: Copy the 16-character password (it will look like: `abcd efgh ijkl mnop`)
7. **Remove all spaces** from the password before using it

## Step 3: Update Configuration
1. Open `application.properties`
2. Replace the current password with your new App Password (without spaces)
3. Save the file and restart the backend

## Step 4: Test Email Configuration
1. After backend starts, test with: http://localhost:8081/test-email?toEmail=your-email@gmail.com
2. Check your email inbox (and spam folder)

## Common Issues & Solutions:

### "Authentication failed"
- **Cause**: Wrong App Password or spaces in password
- **Solution**: Generate new App Password, remove spaces

### "Less secure app access"
- **Cause**: Old authentication method
- **Solution**: Use App Passwords instead (more secure)

### "Account not verified"
- **Cause**: Gmail account needs phone verification
- **Solution**: Verify your phone number in Google Account

### Still not working?
- Check if 2FA is properly enabled
- Try generating the App Password again
- Make sure you're using Gmail (not other email providers)
- Check Gmail's security settings

## Example Configuration:
```properties
spring.mail.host=smtp.gmail.com
spring.mail.port=587
spring.mail.username=your-email@gmail.com
spring.mail.password=abcdefghijklmnop  # No spaces!
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true
spring.mail.properties.mail.smtp.starttls.required=true
```
