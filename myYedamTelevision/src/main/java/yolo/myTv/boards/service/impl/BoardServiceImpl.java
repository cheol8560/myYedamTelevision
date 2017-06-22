package yolo.myTv.boards.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.boards.service.BoardService;
import yolo.myTv.boards.service.BoardVO;
import yolo.myTv.comments.service.CommentsDAO;


@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
    //private BoardDAOSpring boardDAO;   
    private BoardMapper boardDAO;
	//private BoardMapper boardDAO;
	
    public void insertBoard(BoardVO vo) {
        boardDAO.insertBoard(vo);
    }

    public void updateBoard(BoardVO vo) {
        boardDAO.updateBoard(vo);
    }


    public void deleteBoard(BoardVO vo) {
        boardDAO.deleteBoard(vo);
    }

    public BoardVO getBoard(BoardVO vo, boolean cnt) {  	
    	if(cnt){
    		boardDAO.viewUpdate(vo);
    	}
    	return boardDAO.getBoard(vo);
    }

    public List<Map<String, Object>> getBoardList(BoardVO vo) {
        return boardDAO.getBoardList(vo);
    }

	@Override
	public List<Map<String, Object>> getQuestionList(BoardVO vo) {
		return boardDAO.getQuestionList(vo);
	}

	@Override
	public int getBoardListCount(BoardVO vo) {
		return boardDAO.getBoardListCount(vo);
	}

	@Override
	public int getQuestionListCount(BoardVO vo) {
		return boardDAO.getQuestionListCount(vo);
	}

	@Override
	public List<Map<String, Object>> adminNoticeList(BoardVO vo) {
		return boardDAO.adminNoticeList(vo);
	}

	@Override
	public BoardVO adminBoard(BoardVO vo, boolean cnt) {
		return boardDAO.adminBoard(vo);
	}

	@Override
	public void updateAdminBoard(BoardVO vo) {
		 boardDAO.updateAdminBoard(vo);
		
	}

	@Override
	public void deleteAdminBoard(BoardVO vo) {
		CommentsDAO.getInstance().deletes(Integer.toString(vo.getBoardNo()));
		boardDAO.deleteAdminBoard(vo);
		
	}
}
