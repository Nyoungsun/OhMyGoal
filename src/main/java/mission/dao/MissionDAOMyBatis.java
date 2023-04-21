	package mission.dao;
	
	import org.apache.ibatis.session.SqlSession;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import org.springframework.transaction.annotation.Transactional;
	
	import board.bean.BoardDTO;
	
	@Repository
	@Transactional		// commit, close 대신 해줌
	public class MissionDAOMyBatis implements MissionDAO {
		@Autowired
		private SqlSession sqlSession;
	
		@Override
		public String write(BoardDTO boardDTO) {
			sqlSession.insert("missionSQL.wirte", boardDTO);
			
			return sqlSession.selectOne("missionSQL.getSeq", boardDTO.getSeq());
			
		}
	
	}
