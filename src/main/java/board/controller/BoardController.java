package board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import board.bean.BoardDTO;
import board.service.BoardService;
import member.bean.MemberDTO;

@Controller
@RequestMapping(value = "board")
public class BoardController {
	@Autowired
	private BoardService boardService;

	@PostMapping(value = "list1")
	@ResponseBody
	public List<BoardDTO> list1(@RequestParam(value = "tag", required = false, defaultValue = "1") String tag,
			@RequestParam(value = "word", required = false, defaultValue = "") String word, HttpSession session) {

		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("tag", tag);
		map.put("word", word);
		map.put("startNum", "1");
		map.put("endNum", "9");

		session.setAttribute("startNum", "1");
		session.setAttribute("endNum", "9");

		return boardService.list(map);
	}

	@PostMapping(value = "list2")
	@ResponseBody // DispatcherServlet로 반환하는걸 막아준다 //알아서 JSON으로 변환시켜준다
	public List<BoardDTO> list2(@RequestParam("tag") String tag,
			@RequestParam(value = "word", required = false, defaultValue = "") String word,
			@RequestParam("startNum") String startNum, @RequestParam("endNum") String endNum, HttpSession session) {

		int new_startNum = Integer.parseInt((String) session.getAttribute("startNum")) + 9;
		int new_endNum = Integer.parseInt((String) session.getAttribute("endNum")) + 9;

		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("tag", tag);
		map.put("word", word);
		map.put("startNum", new_startNum);
		map.put("endNum", new_endNum);

		session.setAttribute("startNum", Integer.toString(new_startNum));
		session.setAttribute("endNum", Integer.toString(new_endNum));

		System.out.println(new_startNum + " * " + new_endNum);

		// UserDTO를 JSON형태로 list에 넣어준 형태가 된다.
		return boardService.list(map);
	}

	@PostMapping(value = "login")
	@ResponseBody
	public String login(@RequestParam String id, @RequestParam String pwd, HttpSession session) {

		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("id", id);
		map.put("pwd", pwd);

		MemberDTO memberDTO = boardService.login(map);

		if (memberDTO != null && memberDTO.getId().equals("admin")) {
			session.setAttribute("memName", memberDTO.getName());
			session.setAttribute("memId", id);
			session.setAttribute("memPwd", pwd);
			session.setAttribute("memEmail", memberDTO.getEmail1() + "@" + memberDTO.getEmail2());

			return "admin";
		} else if(memberDTO != null) {
			session.setAttribute("memName", memberDTO.getName());
			session.setAttribute("memId", id);
			session.setAttribute("memPwd", pwd);
			session.setAttribute("memEmail", memberDTO.getEmail1() + "@" + memberDTO.getEmail2());

			return "true";
		} else {
			return "false";
		}
	}

	@PostMapping(value = "logout")
	@ResponseBody
	public void logout(HttpSession session) {

		session.removeAttribute("memName");
		session.removeAttribute("memId");
		session.removeAttribute("memPwd");
		session.removeAttribute("memEmail");

		session.invalidate();// 무효화
	}

	@PostMapping(value = "checkId")
	@ResponseBody
	public String checkId(@RequestParam String id) {

		MemberDTO memberDTO = boardService.checkId(id);
		if (memberDTO != null) {
			return "exist";
		} else {
			return "non_exist";
		}
	}

	@PostMapping(value = "sign_up")
	@ResponseBody
	public void sign_up(@ModelAttribute MemberDTO memberDTO) {

		boardService.sign_up(memberDTO);
	}
	
	@PostMapping(value = "view")
	@ResponseBody
	public BoardDTO view(@RequestParam String seq) {
		System.out.println(seq);
		return boardService.view(seq);
	}

	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String about() {
		return "board/about";
	}

	@RequestMapping(value = "qna", method = RequestMethod.GET)
	public String qna() {
		return "board/qna";
	}
	
	@PostMapping(value="missionJoin")
	@ResponseBody
	public void missionJoin(@RequestParam("seq") String seq, @RequestParam("id") String id) {
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("seq", seq);
		map.put("id", id);
		
		boardService.missionJoin(map);
	}
	
	@PostMapping(value="boardDel")
	@ResponseBody
	public void boardDel(@RequestParam("seq") String seq) {
		
		boardService.boardDel(seq);
	}
}
