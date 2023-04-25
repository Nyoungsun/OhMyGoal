package admin.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

public interface AdminDAO {

	public List<MemberDTO> getMemberList(Map<Object, Object> map);

	public List<BoardDTO> getBoardList(Map<Object, Object> map);

	public int getTotalA(Map<Object, Object> map);

	public int getTotalB(Map<Object, Object> map);

}
