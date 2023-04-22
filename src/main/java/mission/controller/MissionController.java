package mission.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import board.bean.BoardDTO;
import mission.bean.MissionImageDTO;
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
	
	
	// 이미지 데이터 저장 
	@GetMapping(value="upload", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String upload(@RequestParam MultipartFile img,
						 @ModelAttribute MissionImageDTO missionImageDTO,
						 HttpSession session) {
		//가상폴더
		//String filePath_lier = "D:/Spring/workspace/chapter06_SpringMaven/src/main/webapp/WEB-INF/storage";

		String filePath = session.getServletContext().getRealPath("/WEB-INF/img/thumbnail");
		System.out.println("실제 폴더 = " + filePath);
		
		String fileName = img.getOriginalFilename();
		System.out.println("파일명 = " + fileName);
		
		File file = new File(filePath, fileName); //파일 생성
		//File file_lier = new File(filePath_lier, fileName);
		
		try {
			//FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file_lier)); //파일 복사
			img.transferTo(file);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		missionImageDTO.setImage1(fileName);
		
		missionService.upload(missionImageDTO, fileName);
		
		//UserService -> UserDAO -> userMapper.xml
		
		return "<img src='/OhMyGoal/img/thumbnail" + fileName + "' width='300' height='300' />";
	}
	

}
