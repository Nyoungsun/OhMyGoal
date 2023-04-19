package member.service;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberService {

	public MemberDTO getMember(Map<String, String> map);

	public int update(MemberDTO memberDTO);

	public String checkPwd(String id);

}
