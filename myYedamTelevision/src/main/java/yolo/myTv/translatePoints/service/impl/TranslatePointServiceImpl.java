package yolo.myTv.translatePoints.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
 
}
