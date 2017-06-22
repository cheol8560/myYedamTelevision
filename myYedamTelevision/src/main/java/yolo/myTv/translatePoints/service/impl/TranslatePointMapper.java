package yolo.myTv.translatePoints.service.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.charges.service.ChargeVO;
import yolo.myTv.exchanges.service.ExchangeVO;
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
	//리스트 
		//충전리스트
		public List<Map<String, Object>> listCharge(ChargeVO chargevo);
		//선물받은리스트
		public List<Map<String, Object>> getReceivePointList(TranslatePointVO translatepointvo);
		//선물한리스트
		public List<Map<String, Object>>	getSendPointList(TranslatePointVO translatepointvo);
		//환전한리스트
		public List<Map<String, Object>>	getExchangeList(ExchangeVO exchangevo);
		//페이징처리를위한 count
		int listChargeCount(ChargeVO chargevo);
		int getReceivePointListCount(TranslatePointVO translatepointvo);
		int getSendPointListCount(TranslatePointVO translatepointvo);
		int getExchangeListCount(ExchangeVO exchangevo);
	//총 조회
		public Map<String, Object> chargeListPoint (ChargeVO chargevo);
		public Map<String, Object> exchangeListPoint (ExchangeVO exchangevo);
		public Map<String, Object> sendPoint	(TranslatePointVO translatepointvo);
		public Map<String, Object> receivePoint	(TranslatePointVO translatepointvo);

}
