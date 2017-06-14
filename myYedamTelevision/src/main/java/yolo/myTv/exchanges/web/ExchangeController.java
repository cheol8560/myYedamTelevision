package yolo.myTv.exchanges.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yolo.myTv.exchanges.service.ExchangeService;
import yolo.myTv.exchanges.service.ExchangeVO;

@Controller
public class ExchangeController {

	@Autowired
	ExchangeService exchangeService;
	
	// 환전 신청 폼
	@RequestMapping(value="/insertExchange.do", method=RequestMethod.GET)
	public String insertExchangeForm() {
		return "exchanges/exchangeForm";
	}
	
	// 환전 신청 등록
	@RequestMapping(value="/insertExchange.do", method=RequestMethod.POST)
	public String insertExchange(ExchangeVO vo,  HttpServletRequest request) {
		System.out.println(vo);
		exchangeService.insertExchange(vo);
		return "redirect:/translatePoints/presentedPointList";
	}
}
