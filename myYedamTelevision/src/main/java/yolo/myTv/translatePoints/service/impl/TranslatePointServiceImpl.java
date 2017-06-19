package yolo.myTv.translatePoints.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.translatePoints.service.TransVO;
import yolo.myTv.translatePoints.service.TranslatePointService;
import yolo.myTv.translatePoints.service.TranslatePointVO;


@Service("translatePointService")
public class TranslatePointServiceImpl implements TranslatePointService {
	
	@Autowired
	private TranslatePointMapper translatePointDAO;
	
	@Override
	public List<Map<String, Object>> totalPoint(TranslatePointVO vo) {	
		return translatePointDAO.totalPoint(vo);
	}

	//거래 조회 
	@Override
	public List<TranslatePointVO> getTranslatePointList(TranslatePointVO vo) {
		return translatePointDAO.getTranslatePointList(vo);
	}
 
	@Override
	public void updateTranslatePoint(TranslatePointVO vo) {
		translatePointDAO.updateTranslatePoint(vo);
	}

	@Override
	public void deleteTranslatePoint(TranslatePointVO vo) {
		translatePointDAO.deleteTranslatePoint(vo);
	}

	//거래발생 프로시져
	@Override
	public void insertTrans(TransVO vo) {
		translatePointDAO.insertTrans(vo);
	}

	@Override
	public Map<String, Object> resultInsertTrans(TranslatePointVO vo) {
		return translatePointDAO.resultInsertTrans(vo);
	}

	@Override
	public List<TranslatePointVO> PresentedPointList(TranslatePointVO vo) {
		// TODO Auto-generated method stub
		return translatePointDAO.PresentedPointList(vo);
	}

	@Override
	public List<Map<String, Object>> accumulatePoint(TranslatePointVO vo) {
		// TODO Auto-generated method stub
		return translatePointDAO.accumulatePoint(vo);
	}
 
	
}
