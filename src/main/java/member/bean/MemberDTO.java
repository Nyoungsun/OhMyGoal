package member.bean;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberDTO {
	private int seq;
	private String name;
	private String id;
	private String pwd;
	private String email1;
	private String email2;
	private String tel1;
	private String tel2;
	private String tel3;
	private String zipcode;
	private String addr1;
	private String addr2;
	private int grade;
	private String boards;
	private Date logtime;   
}
