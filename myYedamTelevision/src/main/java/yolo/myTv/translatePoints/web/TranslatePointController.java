package yolo.myTv.translatePoints.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import yolo.myTv.members.service.MemberVO;
import yolo.myTv.translatePoints.service.TranslatePointService;
import yolo.myTv.translatePoints.service.TranslatePointVO;



@Controller
public class TranslatePointController {

	@Autowired
	TranslatePointService translatePointService;
	
	// 보유중인 기쁨 페이지
	@RequestMapping("/getHoldingPointList.do")
	public String getHoldingPointList(TranslatePointVO vo,
												Model model, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		List<Map<String, Object>> list = translatePointService.totalPoint(vo);
		System.out.println(list != null);
		model.addAttribute("total", list);
		return "translatePoints/holdingPointList";
	} 
	
	// 선물받은 기쁨 페이지
	@RequestMapping("/getPresentedPointList.do")
	public String getPresentedPointList() {
		return "translatePoints/presentedPointList";
	}
	
}
