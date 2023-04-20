package board.bean;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	private int rn;
    private int seq;
    private String url;
    private String img;
    private String subject;
    private String content;
    private String category;
    private String mark;
    private String id;
    private String members;
    private String maxmember;
    private int likes;
    private int views;
    private Date start_date;
    private Date end_date;
    private Date logtime;
}
