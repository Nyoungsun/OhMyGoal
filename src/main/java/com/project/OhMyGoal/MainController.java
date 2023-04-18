package com.project.OhMyGoal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // 일반 java가 아니라 Controller인 환경설정 파일이라는걸 알려줌
public class MainController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index"; // String으므로 주소로 인식 따라서 /WEB-INF/index.jsp 로 이동한다는 의미
	}
}