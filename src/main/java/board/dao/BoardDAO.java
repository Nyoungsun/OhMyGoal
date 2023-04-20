package board.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

public interface BoardDAO {

	public List<BoardDTO> list(Map<Object, Object> map);

	public MemberDTO login(Map<Object, Object> map);

	public MemberDTO checkId(String id);

	public void sign_up(MemberDTO memberDTO);

	public BoardDTO view(String seq);

	public String getUser(String seq);
}
