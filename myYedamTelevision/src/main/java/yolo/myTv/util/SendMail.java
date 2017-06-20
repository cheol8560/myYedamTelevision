package yolo.myTv.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
    public static String sendMail(String mail,String id, String pass) {
		
      // Recipient's email ID needs to be mentioned.
      String to = mail;//change accordingly
      System.out.println("mail : " + mail);
      // Sender's email ID needs to be mentioned
      String from = "timetokey@gmail.com";//change accordingly
      final String username = "timetokey@gmail.com";//change accordingly
      final String password = "ukgbelyykmzqtynz";//change accordingly

      // Assuming you are sending email through relay.jangosmtp.net
      String host = "smtp.gmail.com";

      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "587");

      // Get the Session object.
      Session session = Session.getInstance(props,
      new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
         }
      });

      try {
         // Create a default MimeMessage object.
         Message message = new MimeMessage(session);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.setRecipients(Message.RecipientType.TO,
         InternetAddress.parse(to));

         // Set Subject: header field
         message.setSubject("MY YEDAM TELEVISION의 아이디와 비밀번호를 알려드립니다.");

         // Now set the actual message
         message.setText("MY YEDAM TELEVISION에서 알려드립니다. 귀하의 ID는 " + id + "입니다. "
            + " 비밀번호는 " + pass + "입니다.");

         // Send message
         Transport.send(message);

         System.out.println("Sent message successfully....");

      } catch (MessagingException e) {
            throw new RuntimeException(e);
      }
	return "redirect:/";
   }
}