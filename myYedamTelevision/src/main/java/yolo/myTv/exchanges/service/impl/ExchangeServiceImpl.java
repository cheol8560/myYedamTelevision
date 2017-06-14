package yolo.myTv.exchanges.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.exchanges.service.ExchangeService;
import yolo.myTv.exchanges.service.ExchangeVO;

@Service("exchangeService")
public class ExchangeServiceImpl implements ExchangeService{

	@Autowired
	private ExchangeMapper exchangeDAO;
	
	public void insertExchange(ExchangeVO vo){
		exchangeDAO.insertExchange(vo);
	}
	
	@Override
	public List<Map<String, Object>> ExchangePoint(ExchangeVO vo) {
		// TODO Auto-generated method stub
		return exchangeDAO.ExchangePoint(vo);
	}
}
