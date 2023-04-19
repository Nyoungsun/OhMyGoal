package admin.service;

import board.bean.BoardDTO;
import java.util.List;

public interface AdminService {

	public List<BoardDTO> getBoardList(String pg);

}
