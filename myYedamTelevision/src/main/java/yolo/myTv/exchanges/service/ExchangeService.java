package yolo.myTv.exchanges.service;

import java.util.List;
import java.util.Map;

public interface ExchangeService {
	
	
	//포인트 환전 등록
	void insertExchange(ExchangeVO vo);

	
	//포인트 내역조회
	List<Map<String, Object>> ExchangeList(ExchangeVO vo);


	Map<String, Object> getExchange(ExchangeVO vo);

}
