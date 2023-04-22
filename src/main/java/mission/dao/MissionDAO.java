package mission.dao;

import board.bean.BoardDTO;
import mission.bean.MissionImageDTO;

public interface MissionDAO {

	public String write(BoardDTO boardDTO);

	public void upload(MissionImageDTO missionImageDTO, String fileName);
  
}
