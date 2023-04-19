package mission.service;

import mission.bean.MissionDTO;
import mission.dao.MissionDAO;

public class MissionServiceImpl implements MissionService {
	
	MissionDAO missionDAO;

	@Override
	public void write(MissionDTO missionDTO) {
		missionDAO.write(missionDTO);
	}

}
