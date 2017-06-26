package yolo.myTv.contents.service;

import java.util.List;


public interface ContentService {

	// CRUD 기능의 메소드
		// 글 등록
		void insertContent(ContentVO vo);

		// 글 수정
		void updateContent(ContentVO vo);

		// 글 삭제
		void deleteContent(ContentVO vo);

		// 글 상세 조회
		ContentVO getContent(ContentVO vo);

		// 글 목록 조회
		List<ContentVO> getContentList(ContentVO vo);
		
		// 컨텐츠 사용 체크
		int countContent(ContentVO contentvo);

}
