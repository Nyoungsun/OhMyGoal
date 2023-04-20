package member.service;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

public interface MemberService {

	public MemberDTO getMember(Map<String, String> map);

	public int update(MemberDTO memberDTO);

	public String checkPwd(String id);

	public String getBoards(String id);

	public List<BoardDTO> getMyMission(List<String> boardSeq);

}
