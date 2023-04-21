package mission.bean;

import java.util.Date;

public class MissionDTO {
	private int rn;
    private int seq;
    private String url;
    private String img;
    private String subject;
    private String content;
    private String category;
    private String mark;
    private String id;
    private String maxmember;
    private Date start_date;
    private Date end_date;
    private Date logtime;
	
    
    public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMaxmember() {
		return maxmember;
	}
	public void setMaxmember(String maxmember) {
		this.maxmember = maxmember;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Date getLogtime() {
		return logtime;
	}
	public void setLogtime(Date logtime) {
		this.logtime = logtime;
	}
    
    
	

}
