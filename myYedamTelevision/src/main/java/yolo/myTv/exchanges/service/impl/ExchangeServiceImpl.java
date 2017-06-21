package yolo.myTv.exchanges.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.exchanges.service.ExVO;
import yolo.myTv.exchanges.service.ExchangeService;
import yolo.myTv.exchanges.service.ExchangeVO;

@Service("exchangeService")
public class ExchangeServiceImpl implements ExchangeService{

	@Autowired
	private ExchangeMapper exchangeDAO;
	
	public void insertExchange(ExchangeVO vo){
		exchangeDAO.insertExchange(vo);
		exchangeDAO.updateExchange(vo);
	}
	
	@Override
	public List<Map<String, Object>>ExchangeList(ExchangeVO vo) {
		// TODO Auto-generated method stub
		return exchangeDAO.ExchangeList(vo);
	}

	@Override
	public Map<String, Object> getExchange(ExchangeVO vo) {
		// TODO Auto-generated method stub
		return exchangeDAO.getExchange(vo);
	}

	@Override
	public void insertEx(ExVO exvo) {
		exchangeDAO.insertEx(exvo);
	}

	@Override
	public int getExchangeListCount(ExchangeVO exchangevo) {
		return exchangeDAO.getExchangeListCount(exchangevo);
	}
	
	
}
