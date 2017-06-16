package yolo.myTv.charges.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.charges.service.ChargeService;
import yolo.myTv.charges.service.ChargeVO;

@Service("chargeService")
public class ChargeServiceImpl implements ChargeService {

	@Autowired
	private ChargeMapper ChargeDAO;
	
	@Override
	public void subUpdateCharge(ChargeVO vo) {	
		ChargeDAO.subUpdateCharge(vo);
	}

	@Override
	public void mainUpdateCharge(ChargeVO vo) {
		ChargeDAO.mainUpdateCharge(vo);
	}

	@Override
	public void getCharge(ChargeVO vo) {
		ChargeDAO.getCharge(vo);
	}
	
	@Override
	public void updatePoint(ChargeVO vo) {
		ChargeDAO.updatePoint(vo);
		
	}

	@Override
	public List<Map<String, Object>> getChargeList(ChargeVO vo) {
		return ChargeDAO.getChargeList(vo);
	}

	@Override
	public List<Map<String, Object>> adminChargeList(ChargeVO vo) {
		return ChargeDAO.adminChargeList(vo);
	}
}
