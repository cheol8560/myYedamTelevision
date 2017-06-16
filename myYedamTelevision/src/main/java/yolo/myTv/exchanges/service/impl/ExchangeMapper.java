package yolo.myTv.exchanges.service.impl;

import java.util.List;
import java.util.Map;

import yolo.myTv.boards.service.BoardVO;
import yolo.myTv.exchanges.service.ExchangeVO;

public interface ExchangeMapper {
	//포인트 환전 등록
	public void insertExchange(ExchangeVO vo);
	
	//환전 포인트 업데이트
	public void updateExchange(ExchangeVO vo);
	
	//포인트 환전 목록
	public List<Map<String, Object>> ExchangeList(ExchangeVO vo);
	
	public Map<String, Object> getExchange(ExchangeVO vo);
}
