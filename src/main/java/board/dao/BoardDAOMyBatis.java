package board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

@Repository
@Transactional //commit, close를 대신해준다.
public class BoardDAOMyBatis implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> list(Map<Object, Object> map) {
		System.out.println(map);
		List<BoardDTO> list = sqlSession.selectList("boardSQL.getUserList", map);
		
		return list;
	}
	
	@Override
	public MemberDTO login(Map<Object, Object> map) {
		
		return sqlSession.selectOne("boardSQL.memberLogin", map);
	}
	
	@Override
	public MemberDTO checkId(String id) {
		
		return sqlSession.selectOne("boardSQL.getUser", id);
	}
	
	@Override
	public void sign_up(MemberDTO memberDTO) {
		sqlSession.insert("boardSQL.signUp", memberDTO);
	}
	
	@Override
	public BoardDTO view(String seq) {
		sqlSession.update("boardSQL.views", seq);
		return sqlSession.selectOne("boardSQL.getBoard", seq);
	}
	
	@Override
	public int like(String seq) {
		sqlSession.update("boardSQL.likes", seq);
		BoardDTO boardDTO = sqlSession.selectOne("boardSQL.getBoard", seq);
		return boardDTO.getLikes();
	}
	
	@Override
	public void missionJoin(Map<Object, Object> map) {
		
		BoardDTO tmp = sqlSession.selectOne("boardSQL.getBoard", map.get("seq"));
		MemberDTO tmp2 = sqlSession.selectOne("boardSQL.getUser", map.get("id"));
		if(tmp.getMembers() == null) {map.put("members", map.get("id"));}
		else {map.put("members", tmp.getMembers()+" "+map.get("id"));}
		if(tmp2.getBoards() == null) {map.put("boards", map.get("seq"));}
		else {map.put("boards", tmp2.getBoards()+" "+map.get("seq"));}
		sqlSession.update("boardSQL.missionJoin1", map);
		sqlSession.update("boardSQL.missionJoin2", map);
	}
	
	@Override
	public void boardDel(String seq) {
		String arr[];
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		BoardDTO tmp = sqlSession.selectOne("boardSQL.getBoard", seq);
		MemberDTO tmp2;
		
		arr = tmp.getMembers().split(" "); //보드를 참여하던 사람들
		
		for (String member : arr) {
			tmp2 = sqlSession.selectOne("boardSQL.getUser", member);
			map.put("id", member);
			map.put("boards", tmp2.getBoards().replace(" "+seq, "").replace(seq, ""));
			sqlSession.update("boardSQL.member_boardDel", map);
		}
		sqlSession.delete("boardSQL.boardDel", seq);
	}
	
	@Override
	public String upload(Map<Object, Object> map) {
		
		sqlSession.insert("boardSQL.uploadBoard", map);
		String seq = sqlSession.selectOne("boardSQL.uploadBoardNum");
		
		MemberDTO tmp = sqlSession.selectOne("boardSQL.getUser", map.get("id"));
		if(tmp.getBoards() == null) {map.put("boards", seq);}
		else {map.put("boards", tmp.getBoards()+" "+seq);}
		
		sqlSession.update("boardSQL.missionJoin2", map);
		
		return seq;
	}
	
	@Override
	public void end() {
		
		List<BoardDTO> list = sqlSession.selectList("boardSQL.endList");
		for (BoardDTO boardDTO : list) {
			sqlSession.update("boardSQL.chgEnd", boardDTO);
		}
	}
	
	@Override
	public MemberDTO sign_info(String id) {
		
		MemberDTO memberDTO = sqlSession.selectOne("boardSQL.getUser", id);
		
		return memberDTO;
	}
}
