package yolo.myTv.translatePoints.service.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.translatePoints.service.TransVO;
import yolo.myTv.translatePoints.service.TranslatePointVO;

@MapperScan
public interface TranslatePointMapper {
	public List<Map<String, Object>> totalPoint(TranslatePointVO vo);
	void updateTranslatePoint (TranslatePointVO vo);
	void deleteTranslatePoint (TranslatePointVO vo);
	public List<TranslatePointVO> getTranslatePointList (TranslatePointVO vo);
	void insertTrans(TransVO vo);
	public Map<String, Object> resultInsertTrans (TranslatePointVO vo);
	public List<TranslatePointVO> receivePresentedPointList (TranslatePointVO vo);
	public List<Map<String, Object>> accumulatePoint(TranslatePointVO vo);
	public List<Map<String, Object>> sendPresentList(TranslatePointVO vo);
	//페이징처리를 위한 COUNT
		int receivePresentedPointListCount(TranslatePointVO vo);
		int sendPresentListCount(TranslatePointVO vo);

}
