package yolo.myTv.translatePoints.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.charges.service.ChargeVO;
import yolo.myTv.exchanges.service.ExchangeVO;
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
	public List<TranslatePointVO> receivePresentedPointList(TranslatePointVO vo) {
		// TODO Auto-generated method stub
		return translatePointDAO.receivePresentedPointList(vo);
	}

	@Override
	public List<Map<String, Object>> accumulatePoint(TranslatePointVO vo) {
		// TODO Auto-generated method stub
		return translatePointDAO.accumulatePoint(vo);
	}

	@Override
	public List<Map<String, Object>> sendPresentList(TranslatePointVO vo) {
		return translatePointDAO.sendPresentList(vo);
	}

	@Override
	public int receivePresentedPointListCount(TranslatePointVO vo) {
		return translatePointDAO.receivePresentedPointListCount(vo);
	}

	@Override
	public int sendPresentListCount(TranslatePointVO vo) {
		return translatePointDAO.sendPresentListCount(vo);
	}

	@Override
	public List<Map<String, Object>> listCharge(ChargeVO chargevo) {
		
		return translatePointDAO.listCharge(chargevo);
	}

	@Override
	public List<Map<String, Object>> getReceivePointList(
			TranslatePointVO translatepointvo) {
		return translatePointDAO.getReceivePointList(translatepointvo);
	}

	@Override
	public List<Map<String, Object>> getSendPointList(
			TranslatePointVO translatepointvo) {
		return translatePointDAO.getSendPointList(translatepointvo);
	}

	@Override
	public List<Map<String, Object>> getExchangeList(ExchangeVO exchangevo) {
		return translatePointDAO.getExchangeList(exchangevo);
	}

	@Override
	public int listChargeCount(ChargeVO chargevo) {
		return translatePointDAO.listChargeCount(chargevo);
	}

	@Override
	public int getReceivePointListCount(TranslatePointVO translatepointvo) {
		return translatePointDAO.getReceivePointListCount(translatepointvo);
	}

	@Override
	public int getSendPointListCount(TranslatePointVO translatepointvo) {
		return translatePointDAO.getSendPointListCount(translatepointvo);
	}

	@Override
	public int getExchangeListCount(ExchangeVO exchangevo) {
		return translatePointDAO.getExchangeListCount(exchangevo);
	}

	@Override
	public Map<String, Object> chargeListPoint(ChargeVO chargevo) {
		return translatePointDAO.chargeListPoint(chargevo);
	}

	@Override
	public Map<String, Object> exchangeListPoint(ExchangeVO exchangevo) {
		return translatePointDAO.exchangeListPoint(exchangevo);
	}

	@Override
	public Map<String, Object> sendPoint(TranslatePointVO translatepointvo) {
		return translatePointDAO.sendPoint(translatepointvo);
	}

	@Override
	public Map<String, Object> receivePoint(TranslatePointVO translatepointvo) {
		return translatePointDAO.receivePoint(translatepointvo);
	}



 
	
}
