package yolo.myTv.exchanges.web;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yolo.myTv.exchanges.service.ExchangeService;
import yolo.myTv.exchanges.service.ExchangeVO;
import yolo.myTv.members.service.MemberService;
import yolo.myTv.members.service.MemberVO;

@Controller
public class ExchangeController {

	@Autowired
	ExchangeService exchangeService;
	MemberService memberService;
	
	// 환전 신청 폼
	@RequestMapping(value ="/insertExchange.do", method = RequestMethod.GET)
	public String insertExchangeForm() {
		return "exchanges/exchangeForm";
	}
	
	// 환전 신청 등록
	@RequestMapping(value ="/insertExchange.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertExchange(ExchangeVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		exchangeService.insertExchange(vo);		
		return exchangeService.getExchange(vo);
	
	}
	
	//환전 조회 목록
	@RequestMapping("/ExchangeList.do")
	public String ExchangeList(ExchangeVO vo, Model model) throws Exception{
		model.addAttribute("ExchangeList", exchangeService.ExchangeList(vo));
		return "exchanges/exchangeList";
	}
	
	
	
	
}
