package member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	public MemberDAO memberDAO;

	@Override
	public MemberDTO getMember(Map<String, String> map) {
		MemberDTO memberDTO = memberDAO.getMember(map);

		return memberDTO;
	}

	@Override
	public int update(MemberDTO memberDTO) {
		int count = memberDAO.update(memberDTO);

		return count;
	}

	@Override
	public String checkPwd(String id) {
		String pwd = memberDAO.checkPwd(id);

		return pwd;
	}

	@Override
	public String getBoards(String id) {
		String boards = memberDAO.getBoards(id);

		return boards;
	}

	@Override
	public List<BoardDTO> getMyMission(List<String> boardSeq) {
		List<BoardDTO> boardList = memberDAO.getMyMission(boardSeq);

		return boardList;
	}

	@Override
	public int changePwd(Map<String, String> map) {
		int count = memberDAO.changePwd(map);

		return count;
	}

	@Override
	public int withdrawl(String id) {
		int count = memberDAO.withdrawl(id);

		return count;
	}

	@Override
	public void outMembers(String id) {
		memberDAO.outMembers(id);

	}

	@Override
	public void escape(String seq) {
		memberDAO.escape(seq);

	}

	public static String mask(String original) {
		int length = original.length();
		if (length <= 3) {
			return original;
		} else {
			StringBuilder masked = new StringBuilder(original);
			masked.replace(length - 3, length, "***");
			return masked.toString();
		}
	}

	@Override
	public String findId(Map<String, String> map) {
		String id = memberDAO.findId(map);
		String masked = mask(id);

		return masked;

	}

}
