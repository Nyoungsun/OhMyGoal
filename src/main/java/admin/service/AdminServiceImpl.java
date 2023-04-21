package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.AdminDAO;
import board.bean.BoardDTO;
import board.bean.BoardPaging;
import member.bean.MemberDTO;
import member.bean.MemberPaging;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDAO adminDAO;
    @Autowired
    private BoardPaging boardPaging;
    @Autowired
    private MemberPaging memberPaging;

    @Override
    public Map<String, Object> getBoardList(String pg) {
        int endNum = Integer.parseInt(pg) * 3;
        int startNum = endNum - 2;

        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put("startNum", startNum);
        map.put("endNum", endNum);

        List<BoardDTO> boardList = adminDAO.getBoardList(map);
        int totalA = adminDAO.getTotalA();
        boardPaging.setCurrentPage(Integer.parseInt(pg));
        boardPaging.setPageBlock(3);
        boardPaging.setPageSize(3);
        boardPaging.setTotalA(totalA);
        boardPaging.makePaginHTML();

        Map<String, Object> map2 = new HashMap<String, Object>();
        map2.put("boardList", boardList);
        map2.put("boardPaging", boardPaging);
        return map2;
    }

    @Override
    public Map<String, Object> getMemberList(String pg) {
        int endNum = Integer.parseInt(pg) * 3;
        int startNum = endNum - 2;

        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put("startNum", startNum);
        map.put("endNum", endNum);

        List<MemberDTO> memberList = adminDAO.getMemberList(map);
        int totalB = adminDAO.getTotalB();
        memberPaging.setCurrentPage(Integer.parseInt(pg));
        memberPaging.setPageBlock(3);
        memberPaging.setPageSize(3);
        memberPaging.setTotalA(totalB);
        memberPaging.makePaginHTML();

        Map<String, Object> map2 = new HashMap<String, Object>();
        map2.put("memberList", memberList);
        map2.put("memberPaging", memberPaging);
        return map2;
    }
}
