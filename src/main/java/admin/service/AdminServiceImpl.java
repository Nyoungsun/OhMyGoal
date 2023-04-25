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
    public Map<Object, Object> getBoardList(Map<Object, Object> map) {
        int endNum = Integer.parseInt((String) map.get("pg")) * 5;
        int startNum = endNum - 4;
        
        map.put("startNum", startNum);
        map.put("endNum", endNum);

        List<BoardDTO> boardList = adminDAO.getBoardList(map);
        int totalA = adminDAO.getTotalA(map);
        boardPaging.setCurrentPage(Integer.parseInt((String) map.get("pg")));
        boardPaging.setTag((String) map.get("tag"));
        boardPaging.setWord((String) map.get("word"));
        boardPaging.setPageBlock(5);
        boardPaging.setPageSize(5);
        boardPaging.setTotalA(totalA);
        boardPaging.makePaginHTML();

        Map<Object, Object> map2 = new HashMap<Object, Object>();
        map2.put("boardList", boardList);
        map2.put("boardPaging", boardPaging);
        return map2;
    }

    @Override
    public Map<Object, Object> getMemberList(Map<Object, Object> map) {
        int endNum = Integer.parseInt((String) map.get("pg")) * 5;
        int startNum = endNum - 4;

        map.put("startNum", startNum);
        map.put("endNum", endNum);

        List<MemberDTO> memberList = adminDAO.getMemberList(map);
        int totalB = adminDAO.getTotalB(map);
        memberPaging.setCurrentPage(Integer.parseInt((String) map.get("pg")));
        memberPaging.setTag((String) map.get("tag"));
        memberPaging.setWord((String) map.get("word"));
        memberPaging.setPageBlock(5);
        memberPaging.setPageSize(5);
        memberPaging.setTotalA(totalB);
        memberPaging.makePaginHTML();

        Map<Object, Object> map2 = new HashMap<Object, Object>();
        map2.put("memberList", memberList);
        map2.put("memberPaging", memberPaging);
        return map2;
    }
}
