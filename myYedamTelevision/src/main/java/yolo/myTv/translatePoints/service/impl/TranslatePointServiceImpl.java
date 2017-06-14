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
	private TranslatePointMapper TranslatePointDAO;
	
	@Override
	public List<Map<String, Object>> totalPoint(TranslatePointVO vo) {	
		return TranslatePointDAO.totalPoint(vo);
	}

	@Override
	public List<TranslatePointVO> getTranslatePointList(TranslatePointVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateTranslatePoint(TranslatePointVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteTranslatePoint(TranslatePointVO vo) {
		// TODO Auto-generated method stub
		
	}

	//거래발생 프로시져
	@Override
	public void insertTrans(TransVO vo) {
		TranslatePointDAO.insertTrans(vo);
	}
 
}
