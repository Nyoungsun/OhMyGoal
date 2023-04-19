package mission.bean;

public class MissionDTO {
	private int seq;		// 각 미션 고유 번호

	private String url;		// 각 미션 링크
	private String id;		// 작성자 id
	
	private String subject;		// 미션 제목
	private String category;	// 카테고리	
	private String mark;		// 기술 스택  
	private String stratDate;	// 시작 날짜
	private String endDate;		// 종료 날짜
	private int maxMember;		// 최대 참여 인원 수
	private String img;			// 썸네일 이미지
	
	private int members;		// 미션 참여 인원 수
	private int likes;			// 좋아요 수
	private int views;			// 조회수
	
	private String logtime;
	

}
