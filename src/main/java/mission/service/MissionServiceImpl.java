package mission.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import mission.bean.MissionImageDTO;
import mission.dao.MissionDAO;

@Service
public class MissionServiceImpl implements MissionService {
	@Autowired
	MissionDAO missionDAO;

	@Override
	public void write(BoardDTO boardDTO) {
		missionDAO.write(boardDTO);
	}

	@Override
	public void upload(MissionImageDTO missionImageDTO, String fileName) {
		missionDAO.upload(missionImageDTO, fileName);
	}

}
