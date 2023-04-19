package mission.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mission.bean.MissionDTO;

@Repository
@Transactional		// commit, close 대신 해줌
public class MissionDAOMyBatis implements MissionDAO {
	
	private SqlSession sqlSession;

	@Override
	public void write(MissionDTO missionDTO) {
		sqlSession.insert("missionSQL.wirte", missionDTO);
	}

}
