package admin.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.service.AdminService;

// 관리자 페이지
@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "adminMain", method = RequestMethod.GET)
	public String adminMain() {
		return "admin/adminMain";
	}
	
	@RequestMapping(value = "adminMember", method = RequestMethod.GET)
	public String adminMember(@RequestParam(value= "pg" , required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		return "admin/adminMember";
	}
	
	@RequestMapping(value = "adminMission", method = RequestMethod.GET)
	public String adminMission(@RequestParam(value= "pg" , required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		return "admin/adminMission";
	}
	
	@RequestMapping(value = "getBoardList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String , Object> getBoardList(@RequestParam(value= "pg" , required = false, defaultValue = "1") String pg) {
		System.out.println(pg);
		return adminService.getBoardList(pg);
		
	}
	
	@RequestMapping(value = "getMemberList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String , Object> getMemberList(@RequestParam(value= "pg" , required = false, defaultValue = "1") String pg) {
		System.out.println(pg);
		return adminService.getMemberList(pg);
		
		
	}

}
