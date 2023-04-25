package admin.controller;

import java.util.HashMap;
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
	
	/*
	 * @RequestMapping(value = "adminMain", method = RequestMethod.GET) public
	 * String adminMain() { return "admin/adminMain"; }
	 */
	
	@RequestMapping(value = "adminMember", method = RequestMethod.GET)
	public String adminMember(@RequestParam(value= "pg" , required = false, defaultValue = "1") String pg, @RequestParam(value = "tag", required = false, defaultValue = "id") String tag, @RequestParam(value = "word", required = false, defaultValue = "") String word, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("tag", tag);
		model.addAttribute("word", word);
		return "admin/adminMember";
	}
	
	@RequestMapping(value = "adminMission", method = RequestMethod.GET)
	public String adminMission(@RequestParam(value= "pg" , required = false, defaultValue = "1") String pg, @RequestParam(value = "tag", required = false, defaultValue = "subject") String tag, @RequestParam(value = "word", required = false, defaultValue = "") String word, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("tag", tag);
		model.addAttribute("word", word);
		return "admin/adminMission";
	}
	
	@RequestMapping(value = "getBoardList", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object , Object> getBoardList(@RequestParam String pg, @RequestParam("tag") String tag, @RequestParam("word") String word) {
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("pg", pg);
		map.put("tag", tag);
		map.put("word", word);
		return adminService.getBoardList(map);
		
	}
	
	@RequestMapping(value = "getMemberList", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object , Object> getMemberList(@RequestParam String pg, @RequestParam("tag") String tag, @RequestParam("word") String word) {
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("pg", pg);
		map.put("tag", tag);
		map.put("word", word);
		return adminService.getMemberList(map);
		
	}
	@RequestMapping("adminMain")
	public String dashboard(Model model) {
	    Map<String, Object> map = adminService.getBoardList("1");
	    model.addAttribute("dashboard", map);
	    System.out.println(map);
	    return "admin/adminMain";
	}



}
