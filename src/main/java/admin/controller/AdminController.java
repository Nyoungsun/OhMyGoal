package admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.service.AdminService;
import board.bean.BoardDTO;

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
	public String adminMember() {
		return "admin/adminMember";
	}
	
	@RequestMapping(value = "adminMission", method = RequestMethod.GET)
	public String adminMission() {
		return "admin/adminMission";
	}
	
	@RequestMapping(value = "getBoardList", method = RequestMethod.POST)
	@ResponseBody
	public List<BoardDTO> getBoardList(@RequestParam(value= "pg" , required = false, defaultValue = "1") String pg) {
		System.out.println(pg);
		List<BoardDTO> list = adminService.getBoardList(pg);
		System.out.println(list);
		return list;
		
	}

}
