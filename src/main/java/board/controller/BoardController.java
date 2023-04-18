package board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//문의하기, 사이트소개 페이지
@Controller
public class BoardController {
	
	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String about() {
		return "about";
	}
	
	@RequestMapping(value = "qna", method = RequestMethod.GET)
	public String qna() {
		return "qna";
	}
	
}
