package yolo.myTv.boards.service;

import java.util.List;
import java.util.Map;

public interface BoardService {

	// CRUD 기능의 메소드
	// 글 등록
	void insertBoard(BoardVO vo);

	// 글 수정
	void updateBoard(BoardVO vo);

	// 글 삭제
	void deleteBoard(BoardVO vo);

	// 글 상세 조회
	BoardVO getBoard(BoardVO vo, boolean cnt);
	
	

	// 글 목록 조회
	List<Map<String, Object>> getBoardList(BoardVO vo);
	
	//일대일 문의 전체 조회
	
	//일대일 문의 (답변이 없는 것 조회)
	List<Map<String, Object>> getQuestionList(BoardVO vo);

	
}
