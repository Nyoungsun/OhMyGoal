package board.bean;

import lombok.Data;

@Data
public class BoardDTO {
	private int rn;
	private int seq;
	private String url;
	private String img;
	private String subject;
	private String content;
	private String mark;
	private String name;
	private int likes;
	private int views;
	private String members;
}
