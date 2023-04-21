package mission.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import board.bean.BoardDTO;
import mission.service.MissionService;

@Controller
@RequestMapping(value="mission")
public class MissionController {
	@Autowired
	private MissionService missionService;
	
	@RequestMapping(value = "missionWrite", method = RequestMethod.GET)
	public String missionWrite() {
		
		return "mission/missionWrite";
	}
	
	@GetMapping(value="write")
	@ResponseBody				// 디스패처로 가는 것 방지
	public void write(@ModelAttribute BoardDTO boardDTO) {
		missionService.write(boardDTO);
	}
	
	
	
	
	
	
	@RequestMapping(value = "missionBoard", method = RequestMethod.GET)
	public String missionBoard() {
		return "mission/missionBoard";
	}
	

}
