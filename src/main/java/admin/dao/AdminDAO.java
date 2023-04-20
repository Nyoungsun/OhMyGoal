package admin.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

public interface AdminDAO {

	public List<BoardDTO> getBoardList(Map<String, Integer> map);

	public int getTotalA();

	public List<MemberDTO> getMemberList(Map<String, Integer> map);

	public int getTotalB();

}
