package yolo.myTv.translatePoints.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import yolo.myTv.charges.service.ChargeService;
import yolo.myTv.charges.service.ChargeVO;
import yolo.myTv.members.service.MemberVO;
import yolo.myTv.translatePoints.service.TransVO;
import yolo.myTv.translatePoints.service.TranslatePointService;
import yolo.myTv.translatePoints.service.TranslatePointVO;



@Controller
public class TranslatePointController {

	@Autowired
	TranslatePointService translatePointService;
	@Autowired
	ChargeService chargeService;
	
	// 보유중인 기쁨 페이지
	@RequestMapping("/getHoldingPointList.do")
	public String getHoldingPointList(TranslatePointVO vo,
												Model model, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		
		//총포인트
		List<Map<String, Object>> list = translatePointService.totalPoint(vo);
		model.addAttribute("total", list);
		//충전내역
		ChargeVO chargevo = new ChargeVO();
		chargevo.setMemberId(member.getMemberId());
		model.addAttribute("chargeList", chargeService.getChargeList(chargevo));
		
		return "translatePoints/holdingPointList";
	} 
	
	// 선물받은 기쁨 페이지
	@RequestMapping("/getPresentedPointList.do")
	public String getPresentedPointList() {
		return "translatePoints/presentedPointList";
	}
	
	//거래발생 프로시져
	@RequestMapping("/insertTrans.do")
	public String getTranslatePointList(TransVO vo, Model model){
		translatePointService.insertTrans(vo);
		return "redirect:/getTranslatePointList.do";
	}
	
	//교환내역 조회
		@RequestMapping("/getTranslatePointList.do")
		public String getTranslatePointList(TranslatePointVO vo, Model model){
			
			model.addAttribute("translateList", translatePointService.getTranslatePointList(vo));
			return "admin/translates/translate";
		}
		
	
}