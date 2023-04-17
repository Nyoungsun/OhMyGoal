package mission.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MissionController {
	
	@RequestMapping(value = "missionWrite", method = RequestMethod.GET)
	public String missionWrite() {
		return "missionWrite";
	}
	
	@RequestMapping(value = "missionBoard", method = RequestMethod.GET)
	public String missionBoard() {
		return "missionBoard";
	}

}
