package yolo.myTv.charges.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import yolo.myTv.charges.service.ChargeService;
import yolo.myTv.charges.service.ChargeVO;
import yolo.myTv.members.service.MemberService;
import yolo.myTv.members.service.MemberVO;

@Controller
@SessionAttributes("charge")
public class ChargeController {
	
	
	@Autowired 
	ChargeService chargeService;
	MemberService memberService;
	
	// 기쁨 페이지
	@RequestMapping("/chargeIntro.do")
	public String chargeIntro() {
		return "charges/chargeIntro";
	}
	
	// 결제 페이지
	@RequestMapping("/payment.do")
	public String payment(ChargeVO vo, Model model) {
		model.addAttribute("charge",vo);
		return "charges/payment";
	}
	
	// 결제 페이지
	@RequestMapping("/insertPoint.do")
	public String insertPoint(@ModelAttribute("charge")ChargeVO vo, Model model, HttpSession session) {
		model.addAttribute("charge",vo);
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		vo.setRequestDate(new Date());
		chargeService.subUpdateCharge(vo);
		chargeService.mainUpdateCharge(vo);
		chargeService.updatePoint(vo);
		return "redirect:getHoldingPointList.do";
	}

}
