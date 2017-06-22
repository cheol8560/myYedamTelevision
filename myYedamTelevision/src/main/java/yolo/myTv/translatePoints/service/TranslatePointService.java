package yolo.myTv.translatePoints.service;

import java.util.List;
import java.util.Map;

import com.sun.mail.handlers.message_rfc822;

import yolo.myTv.charges.service.ChargeVO;
import yolo.myTv.exchanges.service.ExchangeVO;

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
	
	//2222222222
	//목록처리
	
	//충전리스트
	public List<Map<String, Object>> listCharge(ChargeVO chargevo);
	//선물받은리스트
	public List<Map<String, Object>> getReceivePointList(TranslatePointVO translatepointvo);
	//선물한리스트
	public List<Map<String, Object>>	getSendPointList(TranslatePointVO translatepointvo);
	//환전한리스트
	public List<Map<String, Object>>	getExchangeList(ExchangeVO exchangevo);
	
	//목록처리의 count
	int listChargeCount(ChargeVO chargevo);
	int getReceivePointListCount(TranslatePointVO translatepointvo);
	int getSendPointListCount(TranslatePointVO translatepointvo);
	int getExchangeListCount(ExchangeVO exchangevo);
	
	//총 포인트 조회
	//총 충전포인트, 현재 달 충전포인트, 현재 보유 포인트
	public Map<String, Object> chargeListPoint (ChargeVO chargevo);
	public Map<String, Object> exchangeListPoint (ExchangeVO exchangevo);
	public Map<String, Object> sendPoint	(TranslatePointVO translatepointvo);
	public Map<String, Object> receivePoint	(TranslatePointVO translatepointvo);
}
