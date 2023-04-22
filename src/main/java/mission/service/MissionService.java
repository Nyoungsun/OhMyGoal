package mission.service;

import board.bean.BoardDTO;
import mission.bean.MissionImageDTO;

public interface MissionService {

	public void write(BoardDTO boardDTO);

	public void upload(MissionImageDTO missionImageDTO, String fileName);

}
