package yolo.myTv.exchanges.service.impl;

import java.util.List;
import java.util.Map;

import yolo.myTv.boards.service.BoardVO;
import yolo.myTv.exchanges.service.ExchangeVO;

public interface ExchangeMapper {
	
	public void insertExchange(ExchangeVO vo);
	public List<Map<String, Object>> ExchangePoint(ExchangeVO vo);
}
