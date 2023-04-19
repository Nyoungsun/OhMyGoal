package member.controller;

import java.util.HashMap;
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

import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping(value = "myPage")
	public String myPage() {
		return "member/myPage";
	}

	@GetMapping(value = "edit")
	public String edit() {
		return "member/edit";
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

	@PostMapping(value="update")
	@ResponseBody
	public int update(@ModelAttribute MemberDTO memberDTO) {
		int count = memberService.update(memberDTO); //에러 방지를 위해 count를 받아온다.
		
		return count;
	}
	
	@PostMapping(value="checkPwd")
	@ResponseBody
	public String checkPwd(@RequestParam String editCheckPwd, HttpSession httpSession) {
	
		String id = (String) httpSession.getAttribute("memId");
		String pwd = memberService.checkPwd(id); 
		
		if(pwd.equals(editCheckPwd)) {
			return "match";
		} else {
			return "nonMatch";
		}
	}
}
