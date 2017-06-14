package yolo.myTv.translatePoints.service;

import java.util.List;
import java.util.Map;

public interface TranslatePointService {
	public List<Map<String, Object>> totalPoint(TranslatePointVO vo);
	//거래내역 조회
	public List<TranslatePointVO> getTranslatePointList(TranslatePointVO vo);
	//거래내역 수정
	void updateTranslatePoint(TranslatePointVO vo);
	//거래내역 삭제
	void deleteTranslatePoint(TranslatePointVO vo);
	//거래발생 프로시져
	void insertTrans(TransVO vo);
	
	
	
}
