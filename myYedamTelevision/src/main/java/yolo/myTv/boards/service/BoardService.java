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
	
	// 관리자 글 상세조회
	BoardVO adminBoard(BoardVO vo, boolean cnt);
	

	// 글 목록 조회
	List<Map<String, Object>> getBoardList(BoardVO vo);
	
	
	//일대일 문의 전체 조회
	List<Map<String, Object>> getQuestionListAll(BoardVO vo);
	//일대일 문의 (답변이 없는 것 조회)
	List<Map<String, Object>> getQuestionList(BoardVO vo);
	
	//페이징
	int getBoardListCount(BoardVO vo);
	int getQuestionListCount(BoardVO vo);
	int getQuestionListAllCount(BoardVO vo);
	List<Map<String, Object>> adminNoticeList(BoardVO vo);

	//관리자 수정
	void updateAdminBoard(BoardVO vo);
	//관리자 삭제
	void deleteAdminBoard(BoardVO vo);

	
	

	
}
