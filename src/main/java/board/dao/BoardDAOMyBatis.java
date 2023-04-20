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
}
