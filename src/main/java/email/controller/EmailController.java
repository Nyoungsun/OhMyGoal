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
		String content = "<div class=\"mail_view_contents_inner\"data-translate-body-10230=\"\"><div><table width=\"800\"cellpadding=\"0\"border=\"0\"cellspacing=\"0\"style=\"font-family:돋움, Dotum; font-size:12px; color:#666666;\"><thead><tr><td colspan=\"3\"width=\"800\"height=\"89\"><img src=\"https://blogattach.naver.com/32a72e9d8cd5d60a26c8a399ad49324dedb846a00f/20230418_71_blogfile/eagle11062_1681807603623_41KK9X_jpg/ohmygoal_email.jpg\"alt=\"헤더 이미지\"border=\"0\"style=\"display:block;\"usemap=\"#email_nh\"loading=\"lazy\"></td></tr></thead><tbody><tr><td width=\"4\"style=\"background:#7da5d4;\"></td><td width=\"792\"><table width=\"792\"cellpadding=\"0\"border=\"0\"cellspacing=\"0\"><thead><tr><td width=\"21\"></td><td align=\"left\"width=\"750\"height=\"50\"><span style=\"color:#679DDA;  font-weight: bold; font-size:21px; font-family:돋움, Dotum; letter-spacing:-2;\">[OhMyGoal!]이메일 인증번호 확인</span></td><td width=\"21\"></td></tr></thead><tbody><tr><td width=\"21\"></td><td align=\"left\"width=\"750\"background=\"https://img.nonghyup.com/images/mail/bg_email_middle.gif\"><table width=\"750\"cellpadding=\"0\"border=\"0\"cellspacing=\"0\"><thead><tr><td width=\"25\"></td><td width=\"700\"style=\"line-height:20px; color:#666666; font-size:12px;padding-bottom:20px;\">안녕하십니까? 회원님<br>저희 OhMyGoal!의 회원가입에 감사드립니다.<br></td><td width=\"25\"></td></tr></thead><tbody><tr><td width=\"25\"></td><td width=\"700\"style=\"color:#666666;font-size:12px; \"><p>인증번호는 <strong>"+randomNumber+"</strong> 입니다.</td><td width=\"25\"></td></tr><tr><td width=\"25\"></td><td width=\"700\"style=\"font-size:12px; color:#666;padding-top:20px;\"><p style=\"line-height:17px;padding-left: 13px; padding-bottom: 5px;background: url('https://img.nonghyup.com/images/mail/icon_email_new01.gif') 0 3px no-repeat;\">본 메일은 개인정보 보호를 위하여 암호화되어 첨부되었습니다.</p></td><td width=\"25\"></td></tr></tbody></table></td><td width=\"21\"></td></tr></tbody></table></td><td width=\"4\"style=\"background:#7da5d4;\"></td></tr><tr><td colspan=\"3\"width=\"800\"style=\"background:#7da5d4; font-size:12px;line-height: 17px;\"><table border=\"0\"cellspacing=\"0\"cellpadding=\"0\"width=\"800\"><thead><tr><td colspan=\"4\"width=\"800\"height=\"10px\"></td></tr></thead><tbody><tr><td width=\"42\"></td><td width=\"10\"style=\"padding-bottom:15px; color:#335278; font-size:12px;\">-</td><td width=\"726\"style=\"font-size:12px; color:#335278;\">본 메일은 정보통신망 이용촉진 및 정보보호 등에 관한법률에 의거 아래 발신기준 고객님을 대상으로 발송하는 <strong>발신전용메일</strong> 이며,제3자가 본인의e-메일주소를 잘못입력하여 타인의 메일이 고객님께 발송될 수 있습니다.</td><td width=\"22\"></td></tr><tr><td colspan=\"4\"width=\"800\"height=\"10\"></td></tr></table></td></tr></tbody></div></div>";
		String email_address = email1 + "@" + email2;
		
		//인증번호 메일로 송신
		Send_Gmail(email_address, content);
		return randomNumber;
	}
	
	public void Send_Gmail(String email_address, String content) {
		String subject = "[모두의 달성과제 OhMyGoal!] 이메일 인증 코드입니다.";
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
