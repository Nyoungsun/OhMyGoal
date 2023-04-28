package member.controller;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.service.AdminService;
import board.bean.BoardDTO;
import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	private AdminService adminService;

	@GetMapping(value = "myPage")
	public String myPage() {
		return "member/myPage";
	}

	@GetMapping(value = "edit")
	public String edit() {
		return "member/edit";
	}

	@GetMapping(value = "findIdPwd")
	public String findId() {
		return "member/findIdPwd";
	}

	@PostMapping(value = "getMember")
	@ResponseBody
	public MemberDTO getMember(HttpSession httpSession) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", (String) httpSession.getAttribute("memId"));
		map.put("pwd", (String) httpSession.getAttribute("memPwd"));

		MemberDTO memberDTO = memberService.getMember(map);

		return memberDTO;
	}

	@PostMapping(value = "update")
	@ResponseBody
	public int update(@ModelAttribute MemberDTO memberDTO) {
		int count = memberService.update(memberDTO);

		return count;
	}

	@PostMapping(value = "checkPwd")
	@ResponseBody
	public String checkPwd(@RequestParam String editCheckPwd, HttpSession httpSession) {
		String id = (String) httpSession.getAttribute("memId");

		String pwd = memberService.checkPwd(id);

		if (pwd.equals(editCheckPwd)) {
			return "match";
		} else {
			return "nonMatch";
		}
	}

	@PostMapping(value = "getMyMission")
	@ResponseBody
	public List<BoardDTO> getMyMission(HttpSession httpSession) {
		String id = (String) httpSession.getAttribute("memId");

		String boards = memberService.getBoards(id); // 멤버테이블에 boards 가져오기
		List<String> boardSeq = Arrays.asList(boards.split(" ")); // split해서 list에 넣기
		System.out.println("boards=" + boardSeq);

		List<BoardDTO> boardList = memberService.getMyMission(boardSeq); // boardSeq 가지고 가서 보드테이블 가져오기

		return boardList;
	}

	@PostMapping(value = "changePwd")
	@ResponseBody
	public int changePwd(@RequestParam("pwd") String pwd, HttpSession httpSession) {
		String id = (String) httpSession.getAttribute("memId");

		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);

		httpSession.invalidate();

		int count = memberService.changePwd(map);

		return count;
	}

	@PostMapping(value = "withdrawl")
	@ResponseBody
	public int withdrawl(HttpSession httpSession) {
		String id = (String) httpSession.getAttribute("memId");

		memberService.outMembers(id); // 탈퇴한 회원 board 테이블의 members에서 빼기
		int count = memberService.withdrawl(id); // 탈퇴

		httpSession.invalidate();

		return count;
	}

	@PostMapping(value = "escape")
	@ResponseBody
	public void escape(@RequestParam("seq") String seq, HttpSession httpSession) {
		String id = (String) httpSession.getAttribute("memId");

		System.out.println("도망가기(id:" + id + ", seq:" + seq + ")");

		memberService.outMembers(id); // 도망가기 누른 회원 board 테이블의 members에서 빼기
		memberService.escape(seq); // 미션 중도 하차하기(도망가기 버튼)

	}

	@PostMapping(value = "getLevel", produces = "application/x-www-form-urlencoded; charset=UTF-8")
	@ResponseBody
	public String getLevel(HttpSession httpSession) {
		String id = (String) httpSession.getAttribute("memId");

		String boards = memberService.getBoards(id); // 멤버테이블에 boards 가져오기
		List<String> boardSeq = Arrays.asList(boards.split(" ")); // split해서 list에 넣기
		System.out.println("미션 개수 = " + boardSeq.size());
		
		if (boardSeq.size() == 1) {
			return "스타터😎";
		} else if (boardSeq.size() > 1 && boardSeq.size() <= 2) {
			return "비기너😎";
		} else if (boardSeq.size() > 2 && boardSeq.size() <= 4) {
			return "아마추어😎";
		} else if (boardSeq.size() > 4 && boardSeq.size() < 10) {
			return "세미프로😎";
		} else if (boardSeq.size() >= 10) {
			return "프로😎";
		} else {
			return "프로😎";
		}
	}

	@PostMapping(value = "findId")
	@ResponseBody
	public String findId(@RequestParam("name") String name, @RequestParam("phone") String phone) {
		String tel1 = phone.substring(0, 3);
		String tel2 = phone.substring(3, 7);
		String tel3 = phone.substring(7, 11);
		System.out.println("tel=" + tel1 + tel2 + tel3);

		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("tel1", tel1);
		map.put("tel2", tel2);
		map.put("tel3", tel3);

		String id = memberService.findId(map);
		System.out.println("아이디 찾기: " + id);

		return id;
	}

	public String getRamdomPassword(int size) {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a',
				'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
				'w', 'x', 'y', 'z', '!', '@', '#', '$', '%', '^', '&' };

		StringBuffer sb = new StringBuffer();
		SecureRandom sr = new SecureRandom();
		sr.setSeed(new Date().getTime());

		int idx = 0;
		int len = charSet.length;
		for (int i = 0; i < size; i++) {
			idx = sr.nextInt(len); // 강력한 난수를 발생시키기 위해 SecureRandom을 사용한다.
			sb.append(charSet[idx]);
		}

		return sb.toString();
	}

	@PostMapping(value = "findPwd")
	@ResponseBody
	public String findPwd(@RequestParam("id") String id) {
		String randomPwd = getRamdomPassword(8); // 임시 비밀번호 생성

		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", randomPwd);

		int count = memberService.changePwd(map); // changePwd 메소드 활용하여 임시 비밀번호로 바꾼다.
		if (count != 1) {
			return "false";
		} else {
			return randomPwd;
		}
	}
}