package yolo.myTv.translatePoints.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public @ResponseBody TransVO insertTrans(@ModelAttribute("trans") TransVO vo, Model model){
		translatePointService.insertTrans(vo);
		return vo;
	}
	
	//교환내역 조회
	@RequestMapping("/getTranslatePointList.do")
	public String getTranslatePointList(TranslatePointVO vo, Model model){
		model.addAttribute("translateList", translatePointService.getTranslatePointList(vo));
		return "admin/translates/translate";
		}
	
	//222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
	//충전리스트
	@RequestMapping("/getChargeList.do")
	public String getChargeList(ChargeVO chargevo
								, Model model
								, HttpSession session){
		//로그인 세션의 id가져오기
		MemberVO member = (MemberVO) session.getAttribute("login");
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
		
		model.addAttribute("chargeList", translatePointService.listCharge(chargevo));
		return "pointList/getChargeList";
	}
		
	//선물받은리스트
	@RequestMapping("/getReceivePointList.do")
	public String getReceivePointList(TranslatePointVO translatepointvo
										, Model model
										, HttpSession session){
		//로그인 세션의 id가져오기
		MemberVO member = (MemberVO) session.getAttribute("login");
		translatepointvo.setMemberId(member.getMemberId());
		
		//페이징
		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(translatepointvo.getPageIndex());
		paginationInfo.setRecordCountPerPage(translatepointvo.getPageUnit());
		paginationInfo.setPageSize(translatepointvo.getPageSize());
		translatepointvo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		translatepointvo.setLastIndex(paginationInfo.getLastRecordIndex());
		paginationInfo.setTotalRecordCount(translatePointService.getReceivePointListCount(translatepointvo));
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("presentedPoint", translatePointService.getReceivePointList(translatepointvo));
		return "pointList/getReceivePointList";
	}
	//선물보낸리스트
	@RequestMapping("/getSendPointList.do")
	public String getSendPointList(TranslatePointVO translatepointvo
									, Model model
									, HttpSession session){
		//로그인 세션의 id가져오기
		MemberVO member = (MemberVO) session.getAttribute("login");
		translatepointvo.setMemberId(member.getMemberId());
		
		//페이징
		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(translatepointvo.getPageIndex());
		paginationInfo.setRecordCountPerPage(translatepointvo.getPageUnit());
		paginationInfo.setPageSize(translatepointvo.getPageSize());
		translatepointvo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		translatepointvo.setLastIndex(paginationInfo.getLastRecordIndex());
		paginationInfo.setTotalRecordCount(translatePointService.getSendPointListCount(translatepointvo));
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("presentList", translatePointService.getSendPointList(translatepointvo));
		return "pointList/getSendPointList";
	}
	//환전한리스트
	@RequestMapping("/getExchangeList.do")	
	public String getExchangeList(ExchangeVO exchangevo
									, Model model
									, HttpSession session){
		//로그인 세션의 id가져오기
		MemberVO member = (MemberVO) session.getAttribute("login");
		exchangevo.setMemberId(member.getMemberId());
		
		//페이징
		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(exchangevo.getPageIndex());
		paginationInfo.setRecordCountPerPage(exchangevo.getPageUnit());
		paginationInfo.setPageSize(exchangevo.getPageSize());
		exchangevo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		exchangevo.setLastIndex(paginationInfo.getLastRecordIndex());
		paginationInfo.setTotalRecordCount(translatePointService.getExchangeListCount(exchangevo) );
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("exchangeList", translatePointService.getExchangeList(exchangevo));
		return "pointList/getExchangeList";
	}
}
