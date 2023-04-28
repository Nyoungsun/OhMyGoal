package admin.service;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;

public interface AdminService {
	
	public Map<Object, Object> getBoardList(Map<Object, Object> map);

	public Map<Object, Object> getMemberList(Map<Object, Object> map);
	
	public List<MemberDTO> getRanking();
}
