package yolo.myTv.boards.service.impl;

import java.util.List;
import java.util.Map;

import yolo.myTv.boards.service.BoardVO;

public interface BoardMapper {
	
	public void insertBoard(BoardVO vo);
	public void updateBoard(BoardVO vo);
	public void deleteBoard(BoardVO vo);
	public BoardVO getBoard(BoardVO vo);
	public List<Map<String,Object>> getBoardList(BoardVO vo);
	public List<BoardVO> getBoardListVO(BoardVO vo);
	public void viewUpdate(BoardVO vo);
}
