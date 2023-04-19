package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.AdminDAO;
import board.bean.BoardDTO;


@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public List<BoardDTO> getBoardList(String pg) {
		int endNum = Integer.parseInt(pg) *5;
		int startNum = endNum -4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return adminDAO.getBoardList(map);
		
	}

}
