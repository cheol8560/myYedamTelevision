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
import yolo.myTv.exchanges.service.ExchangeService;
import yolo.myTv.exchanges.service.ExchangeVO;
import yolo.myTv.members.service.MemberVO;
import yolo.myTv.translatePoints.service.TransVO;
import yolo.myTv.translatePoints.service.TranslatePointService;
import yolo.myTv.translatePoints.service.TranslatePointVO;
import yolo.myTv.util.PaginationInfo;



@Controller
public class TranslatePointController {

	@Autowired
	TranslatePointService translatePointService;
	@Autowired
	ChargeService chargeService;
	@Autowired
	ExchangeService exchangeService;
	
	// 보유중인 기쁨 페이지
	@RequestMapping("/getHoldingPointList.do")
	public String getHoldingPointList(ChargeVO chargevo ,  //충전내역
			    						TranslatePointVO vo,//선물한 기쁨 내역	
											Model model, HttpSession session	) {
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		
		//총포인트 합산
		List<Map<String, Object>> list = translatePointService.totalPoint(vo);
		model.addAttribute("total", list);
		
		
		//충전내역
		 
		chargevo.setMemberId(member.getMemberId());
		
		//페이징
		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(chargevo.getPageIndex());
		paginationInfo.setRecordCountPerPage(chargevo.getPageUnit());
		paginationInfo.setPageSize(chargevo.getPageSize());
		chargevo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		chargevo.setLastIndex(paginationInfo.getLastRecordIndex());
		paginationInfo.setTotalRecordCount(chargeService.getChargeListCount(chargevo));
		model.addAttribute("paginationInfo", paginationInfo);
		System.out.println("1+++++++"+paginationInfo);
		model.addAttribute("chargeList", chargeService.getChargeList(chargevo));
		
		//--------------------------------------------------------------
		//내가 선물한 포인트 조회
		
		vo.setSendMemberId(member.getMemberId());
		
		//페이징처리
		/** pageing setting */
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(vo.getPageIndex2());
		paginationInfo2.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo2.setPageSize(vo.getPageSize());
		vo.setFirstIndex(paginationInfo2.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo2.getLastRecordIndex());
		paginationInfo2.setTotalRecordCount(translatePointService.sendPresentListCount(vo));
		model.addAttribute("paginationInfo2", paginationInfo2);
		System.out.println("2======="+paginationInfo2);
		
		
		
		model.addAttribute("presentList" , translatePointService.sendPresentList(vo));
		return "translatePoints/holdingPointList";
	} 
	
	// 선물받은 기쁨 페이지
	@RequestMapping("/getPresentedPointList.do")
	public String getPresentedPointList(TranslatePointVO vo, Model model, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		//총포인트
		List<Map<String, Object>> list = translatePointService.accumulatePoint(vo);
		model.addAttribute("accumulatePoint", list);
		
		//환전내역
		ExchangeVO exchangevo = new ExchangeVO();
		exchangevo.setMemberId(member.getMemberId());
		model.addAttribute("exchangeList", exchangeService.ExchangeList(exchangevo));
		
		//선물받은내역
		vo.setMemberId(member.getMemberId());
		
		//페이징
		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo.setPageSize(vo.getPageSize());
		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());
		paginationInfo.setTotalRecordCount(translatePointService.receivePresentedPointListCount(vo));
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("presentedPoint", translatePointService.receivePresentedPointList(vo));
		
		return "translatePoints/presentedPointList";
	}
	
	//거래결과 페이지
	@RequestMapping("/resultInsertTrans.do")
	public String resultInsertTrans(TranslatePointVO vo, Model model){
		
		
		model.addAttribute("result", translatePointService.resultInsertTrans(vo));
		
		return "translatePoints/translatePointResult";
	}

	//거래발생 프로시져
	@RequestMapping("/insertTrans.do")
	public String getTranslatePointList(TransVO vo, Model model){
		translatePointService.insertTrans(vo);
		int translateId = vo.getOutErrorcode();
		return "redirect:/resultInsertTrans.do?translateId="+translateId;
	}
	
	//교환내역 조회
	@RequestMapping("/getTranslatePointList.do")
	public String getTranslatePointList(TranslatePointVO vo, Model model){
		model.addAttribute("translateList", translatePointService.getTranslatePointList(vo));
		return "admin/translates/translate";
		}
		
	
}
