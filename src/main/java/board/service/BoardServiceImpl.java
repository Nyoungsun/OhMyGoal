package board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import board.dao.BoardDAO;
import member.bean.MemberDTO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public List<BoardDTO> list(Map<Object, Object> map) {
		
		return boardDAO.list(map);
	}
	
	@Override
	public MemberDTO login(Map<Object, Object> map) {
		
		return boardDAO.login(map);
	}
	
	@Override
	public MemberDTO checkId(String id) {
		
		return boardDAO.checkId(id);
	}
	
	@Override
	public void sign_up(MemberDTO memberDTO) {
		
		boardDAO.sign_up(memberDTO);
	}
	
	@Override
	public BoardDTO view(String seq) {
		
		return boardDAO.view(seq);
	}
	
	@Override
	public int like(String seq) {
		
		return boardDAO.like(seq);
	}
	
	@Override
	public void missionJoin(Map<Object, Object> map) {
		
		boardDAO.missionJoin(map);
	}
	
	@Override
	public void boardDel(String seq) {
		
		boardDAO.boardDel(seq);
	}
	
	@Override
	public String upload(Map<Object, Object> map) {
		
		return boardDAO.upload(map);
	}
	
	@Override
	public void end() {
		
		boardDAO.end();
	}
	
	@Override
	public MemberDTO sign_info(String id) {
		
		return boardDAO.sign_info(id);
	}
}
