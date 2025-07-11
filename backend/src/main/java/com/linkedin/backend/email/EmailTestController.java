package com.linkedin.backend.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmailTestController {

    @Autowired
    private JavaMailSender mailSender;

    @GetMapping("/test-email")
    public String testEmail(@RequestParam String toEmail) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom("basheermahammad7861@gmail.com");
            message.setTo(toEmail);
            message.setSubject("LinkedIn Clone - Email Test");
            message.setText("This is a test email from LinkedIn Clone application. If you receive this, email configuration is working correctly!");
            
            mailSender.send(message);
            return "Email sent successfully to: " + toEmail;
        } catch (Exception e) {
            return "Failed to send email: " + e.getMessage();
        }
    }
}
