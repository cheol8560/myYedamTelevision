package yolo.myTv.exchanges.service;

import java.util.List;
import java.util.Map;

public interface ExchangeService {
	
	
	//포인트 환전 등록
	void insertExchange(ExchangeVO vo);

	
	//포인트 내역조회
	List<Map<String, Object>> ExchangeList(ExchangeVO vo);
	
	//관리자 환전 조회
	List<Map<String, Object>> adminExchangeList(ExchangeVO vo);
	
	Map<String, Object> getExchange(ExchangeVO vo);
	
	//환전 프로시져
	void insertEx(ExVO exvo);
	//count
	int getExchangeListCount (ExchangeVO exchangevo);
	
}
