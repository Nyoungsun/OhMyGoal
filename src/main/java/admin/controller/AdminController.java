package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 관리자 페이지
@Controller
@RequestMapping("admin")
public class AdminController {

	@RequestMapping(value = "adminMain", method = RequestMethod.GET)
	public String adminMain() {
		return "admin/adminMain";
	}

}
