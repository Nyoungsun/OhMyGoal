package member.dao;

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
public class MemberDAOMyBatis implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDTO getMember(Map<String, String> map) {
		return sqlSession.selectOne("memberSQL.getMember", map);
	}

	@Override
	public int update(MemberDTO memberDTO) {
		return sqlSession.update("memberSQL.update", memberDTO);
	}

	@Override
	public String checkPwd(String id) {
		return sqlSession.selectOne("memberSQL.checkPwd", id);
	}

	@Override
	public String getBoards(String id) {
		String boards =  sqlSession.selectOne("memberSQL.getBoards", id);
		
		if(boards == null) {
			return "0";
		} else {
			return boards;
		}
	}

	@Override
	public List<BoardDTO> getMyMission(List<String> boardSeq) {
		return sqlSession.selectList("memberSQL.getMyMission", boardSeq);
	}

	@Override
	public int changePwd(Map<String, String> map) {
		return sqlSession.update("memberSQL.changePwd", map);
	}

	@Override
	public int withdrawl(String id) {
		return sqlSession.delete("memberSQL.withdrawl", id);
	}

	@Override
	public void outMembers(String id) {
		sqlSession.update("memberSQL.outMembers", id);
		sqlSession.update("memberSQL.membersTrim");
	}

	@Override
	public void escape(String seq) {
		sqlSession.update("memberSQL.escape", seq);
		sqlSession.update("memberSQL.boardsTrim");
	}

	@Override
	public String findId(Map<String, String> map) {
		return sqlSession.selectOne("memberSQL.findId", map);
		
	}

}
