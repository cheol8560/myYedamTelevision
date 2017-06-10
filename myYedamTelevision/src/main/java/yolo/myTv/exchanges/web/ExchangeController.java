package yolo.myTv.exchanges.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExchangeController {

	// 환전 신청 폼
	@RequestMapping(value="/insertExchange.do", method=RequestMethod.GET)
	public String insertExchangeForm() {
		return "exchanges/exchangeForm";
	}
	
	// 환전 신청 등록
	@RequestMapping(value="/insertExchange.do", method=RequestMethod.POST)
	public String insertExchange() {
		
		return "";
	}
}
