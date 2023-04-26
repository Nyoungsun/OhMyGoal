package member.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

public interface MemberDAO {

	public MemberDTO getMember(Map<String, String> map);

	public int update(MemberDTO memberDTO);

	public String checkPwd(String id);

	public String getBoards(String id);

	public List<BoardDTO> getMyMission(List<String> boardSeq);

	public int changePwd(Map<String, String> map);

	public int withdrawl(String id);

	public void outMembers(String id);

	public void escape(String seq);

	public String findId(Map<String, String> map);

}
