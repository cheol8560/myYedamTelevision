package yolo.myTv.broadcasts.web;

import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import yolo.myTv.broadcasts.service.BroadcastService;
import yolo.myTv.broadcasts.service.BroadcastVO;
import yolo.myTv.members.service.MemberVO;

@Controller
public class BroadcastController {

	@Autowired
	BroadcastService broadcastService;
	
	// BJ 방송 페이지
	@RequestMapping("/insUpdBroadcastForm.do")
	public String insUpdBroadcastForm(BroadcastVO vo, HttpSession session, Model model) {
		MemberVO bj = (MemberVO) session.getAttribute("login");
		vo.setMemberId(bj.getMemberId());
		System.out.println(vo);
		BroadcastVO result = broadcastService.getBroadcast(vo);
		System.out.println(result);
		if(result != null) {
			model.addAttribute("broadcastResult", result);
		}
		return "blank/broadcasts/bjPage";
	}
	
	// 방송 시작시 정보 등록 및 수정
	@RequestMapping("/insUpdBroadcast.do")
	public @ResponseBody BroadcastVO insUpdBroadcast(@ModelAttribute("broadcast") BroadcastVO vo, HttpSession session) {
		MemberVO bj = (MemberVO) session.getAttribute("login");
		vo.setMemberId(bj.getMemberId());
		System.out.println(vo);
		BroadcastVO check = broadcastService.getBroadcast(vo);
		// ID 생성 후 첫 방송의 경우
		if(check == null) {		
			broadcastService.insertBroadcast(vo);
		} 
		// 기존 방송이 있는 경우
		else {	
			// 방송 종료 상태에서 방송 시작의 경우
			if(vo.getBroadcastStatus().equals("e1")) {	
				
			}
			
			// 방송 종료
			else if(vo.getBroadcastStatus().equals("e3")) {
				
			}
			// 방송 대기
		}
		
		return vo;
	}
	
	// 방송 중 정보 변경
	@RequestMapping("/updBroadcast.do")
	public @ResponseBody BroadcastVO updBroadcast(@ModelAttribute("broadcast") BroadcastVO vo) {
		broadcastService.updateBroadcast(vo);
		return vo;
	}
	
	// 방송정보 조회 (AJAX)
	@RequestMapping("/ajaxGetBroadcast.do")
	public @ResponseBody BroadcastVO ajaxGetBroadcast(BroadcastVO vo) {
		return broadcastService.getBroadcast(vo);
	}
	
	// 방송 입장
	@RequestMapping("/getOnBroadcast.do")
	public String getOnBroadcast() {
		
		return "blank/broadcasts/viewerPage";
	}
	
	// 방송중인 목록 조회
	@RequestMapping("/getOnBroadcastList.do")
	public String getOnBroadcastList(Model model, BroadcastVO vo) {
		vo.setBroadcastStatus("e1");
		List<Map<String, Object>> list = broadcastService.getBroadcastList(vo);
		model.addAttribute("broadcastList", list);
		return "broadcasts/mainBroadcastList";
	}

}
