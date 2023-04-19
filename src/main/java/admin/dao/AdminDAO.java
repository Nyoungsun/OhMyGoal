package admin.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;

public interface AdminDAO {

	public List<BoardDTO> getBoardList(Map<String, Integer> map);

}
