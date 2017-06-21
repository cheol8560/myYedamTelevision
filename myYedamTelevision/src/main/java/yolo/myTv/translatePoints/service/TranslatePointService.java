package yolo.myTv.translatePoints.service;

import java.util.List;
import java.util.Map;

public interface TranslatePointService {
	//총 포인트 합산 조회
	public List<Map<String, Object>> totalPoint(TranslatePointVO vo);
	
	//거래내역 조회
	public List<TranslatePointVO> getTranslatePointList(TranslatePointVO vo); 
	
	//거래내역 수정
	void updateTranslatePoint(TranslatePointVO vo);
	
	//거래내역 삭제
	void deleteTranslatePoint(TranslatePointVO vo);
	
	//거래발생 프로시져
	void insertTrans(TransVO vo);
	
	//거래발생 결과 페이지
	public Map<String, Object> resultInsertTrans (TranslatePointVO vo);
	
	//나의 선물 받은 리스트
	public List<TranslatePointVO> receivePresentedPointList (TranslatePointVO vo);

	//
	public List<Map<String, Object>> accumulatePoint(TranslatePointVO vo);

	//나에게 선물 받은 리스트
	public List<Map<String, Object>> sendPresentList(TranslatePointVO vo);
	
	//페이징처리를 위한 COUNT
	int receivePresentedPointListCount(TranslatePointVO vo);
	int sendPresentListCount(TranslatePointVO vo);
	
}
