package email.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="email")
public class EmailController {
	
	@PostMapping(value="send")
	@ResponseBody
	public String send(@RequestParam String email1, @RequestParam String email2) {
		
		//인증번호 생성
		Random random = new Random();
		String randomNumber = String.format("%06d", random.nextInt(1000000));
		
		//보낼 내용 생성
		String content = "<h1>" + randomNumber + "</h1>";
		String email_address = email1 + "@" + email2;
		
		//인증번호 메일로 송신
		Send_Gmail(email_address, content);
		return randomNumber;
	}
	
	public void Send_Gmail(String email_address, String content) {
		String subject = "인증 메일입니다.";
		final String user = "ghost11062@gmail.com";
    	final String password = "lywygttvhacrnhqp";
    	
        Properties prop = System.getProperties();
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "587");
        
        Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
        
        MimeMessage msg = new MimeMessage(session);
        
        try {
            msg.setSentDate(new Date());
            msg.setFrom(new InternetAddress("shxorld@gmail.com", "관리자"));
            InternetAddress to = new InternetAddress(email_address);
            msg.setRecipient(Message.RecipientType.TO, to);
            msg.setSubject(subject, "UTF-8");
            msg.setText(content, "UTF-8", "html");
            
            Transport.send(msg);
        } catch(AddressException ae) {
            System.out.println("AddressException : " + ae.getMessage());
        } catch(MessagingException me) {
            System.out.println("MessagingException : " + me.getMessage());
        } catch(UnsupportedEncodingException e) {
            System.out.println("UnsupportedEncodingException : " + e.getMessage());
        }
	}
}
