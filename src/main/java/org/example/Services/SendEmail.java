package org.example.Services;

import java.util.Properties;

import jakarta.mail.*;
import jakarta.mail.internet.*;

public class SendEmail {

    void sendMail(String recipient, String text) throws MessagingException {
        // Recipient's email ID needs to be mentioned.
        String to = recipient;
        // Sender's email ID needs to be mentioned
        String from = "voducminh39@gmail.com";
        final String username = "voducminh39@gmail.com";
        final String password = "hcqm xfsk mwly kxzd";
        Properties prop = new Properties();
        prop.put("mail.smtp.auth", true);
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");


        Session session = Session.getInstance(prop, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));
        message.setRecipients(
                Message.RecipientType.TO, InternetAddress.parse(to));
        message.setSubject("Mail Subject");

        String msg = text;

        MimeBodyPart mimeBodyPart = new MimeBodyPart();
        mimeBodyPart.setContent(msg, "text/html; charset=utf-8");

        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(mimeBodyPart);

        message.setContent(multipart);

        Transport.send(message);
    }

    public static void main(String[] args) throws MessagingException {
        SendEmail s = new SendEmail();
//        s.sendMail("TEST MAIL");
    }
}