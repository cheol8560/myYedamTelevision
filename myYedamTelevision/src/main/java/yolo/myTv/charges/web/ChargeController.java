package yolo.myTv.charges.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@ResponseBody
	public void insertPoint(@ModelAttribute("charge")ChargeVO vo, Model model, HttpSession session) {
		model.addAttribute("charge",vo);
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		vo.setRequestDate(new Date());
		if(vo.getPaymentWay().equals("c1")) {
			chargeService.subUpdateCharge(vo);
			chargeService.mainUpdateCharge(vo);
			chargeService.updatePoint(vo);
		} else {
		chargeService.subUpdateCharge(vo);
		}
	}
	
	
	// 관리자 포인트 관리
		@RequestMapping("/adminCharge.do")
		public String adminCharge(ChargeVO vo, Model model) {
			model.addAttribute("adminchargeList", chargeService.adminChargeList(vo));
			return "admin/translates/charge";
		}
		
	// 관리자 포인트 승인
		@RequestMapping(value="/approveAdmin.do", method=RequestMethod.GET)
		public String approveAdmin(ChargeVO vo, Model model) {
			chargeService.mainUpdateCharge(vo);
			chargeService.updatePoint(vo);
			System.out.println(vo);
			return "redirect:/adminCharge.do";
		}
	
	

}
