package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {

	public MemberDTO getMember(Map<String, String> map);

	public int update(MemberDTO memberDTO);

	public String checkPwd(String id);

}
