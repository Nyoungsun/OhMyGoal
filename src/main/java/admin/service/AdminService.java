package admin.service;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

import java.util.List;
import java.util.Map;

public interface AdminService {

	public Map<String , Object> getBoardList(String pg);

	public Map<String, Object> getMemberList(String pg);

}
