package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDTO;
import member.bean.MemberDTO;

@Repository
@Transactional
public class AdminDAOMyBatis implements AdminDAO{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<BoardDTO> getBoardList(Map<Object, Object> map) {
		
		return sqlSession.selectList("adminSQL.getBoardList",map);
		
	}
	
	@Override
	public List<MemberDTO> getMemberList(Map<Object, Object> map) {
		return sqlSession.selectList("adminSQL.getMemberList",map);
	}
	
	@Override
	public int getTotalA(Map<Object, Object> map) {
		
		return sqlSession.selectOne("adminSQL.getTotalA", map);
	}

	public int getTotalB(Map<Object, Object> map) {
		
		return sqlSession.selectOne("adminSQL.getTotalB", map);
	}

	@Override
	public int getJob() {
		return sqlSession.selectOne("adminSQL.getJob");
	}

	@Override
	public int getLang() {
		return sqlSession.selectOne("adminSQL.getLang");
	}

	@Override
	public int getHealth() {
		return sqlSession.selectOne("adminSQL.getHealth");
	}

	@Override
	public int getEtc() {
		return sqlSession.selectOne("adminSQL.getEtc");
	}
	
	@Override
	public int getHobby() {
		return sqlSession.selectOne("adminSQL.getHobby");
	}

	@Override
	public List<MemberDTO> getRanking() {
		return sqlSession.selectList("adminSQL.getRanking");
	}

	

	


	

	
}