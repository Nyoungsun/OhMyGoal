package board.dao;

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
		List<BoardDTO> list22 = sqlSession.selectList("boardSQL.getUserList", map);
		System.out.println(list22);
		return list22;
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
}
