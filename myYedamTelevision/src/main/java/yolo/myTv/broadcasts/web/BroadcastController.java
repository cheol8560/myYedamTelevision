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
import org.springframework.web.bind.support.SessionStatus;

import yolo.myTv.broadcasts.service.BroadcastService;
import yolo.myTv.broadcasts.service.BroadcastVO;
import yolo.myTv.contents.service.ContentService;
import yolo.myTv.contents.service.ContentVO;
import yolo.myTv.members.service.MemberService;
import yolo.myTv.members.service.MemberVO;

@Controller
// @SessionAttributes("broadcast")
public class BroadcastController {

	@Autowired BroadcastService broadcastService;
	@Autowired ContentService contentService;
	@Autowired MemberService memberService;
	
	@ModelAttribute("broadcast")
	public BroadcastVO broadcast() {
		return new BroadcastVO();
	}
	
    // 컨텐츠 목록 
    @ModelAttribute("contentList")
    public List<ContentVO> searchConditionMap() {
    	List<ContentVO> contentList = contentService.getContentList(new ContentVO());
        return contentList;
    }	
	
	// BJ 방송 페이지
	@RequestMapping("/insUpdBroadcastForm.do")
	public String insUpdBroadcastForm(@ModelAttribute("broadcast") BroadcastVO vo, HttpSession session, Model model) {
		MemberVO bj = (MemberVO) session.getAttribute("login");
		vo.setMemberId(bj.getMemberId());
		BroadcastVO result = broadcastService.getBroadcast(vo);
		if(result != null) {
			model.addAttribute("broadcastResult", result);
		}
		return "blank/broadcasts/bjPage";
	}
	
	// 방송 시작시 정보 등록 및 수정
	@RequestMapping("/insUpdBroadcast.do")
	public @ResponseBody BroadcastVO insUpdBroadcast(@ModelAttribute("broadcast") BroadcastVO vo, 
													 HttpSession session, SessionStatus status) {
		MemberVO bj = (MemberVO) session.getAttribute("login");
		vo.setMemberId(bj.getMemberId());
		BroadcastVO check = broadcastService.getBroadcast(vo);
		// ID 생성 후 첫 방송의 경우
		if(check == null) {		
			broadcastService.insertBroadcast(vo);
		} 
		// 기존 방송이 있는 경우
		else {	
			vo.setBroadcastNo(check.getBroadcastNo());
			// 방송 종료 상태에서 방송 시작의 경우
			if(vo.getBroadcastStatus().equals("e1")) {
				broadcastService.updateBroadcast(vo);
			}
			
			// 방송 종료
			else if(vo.getBroadcastStatus().equals("e3")) {
				vo.setChannelId(null);
				broadcastService.updateBroadcast(vo);
			}
			// 방송 대기
		}
		
		return vo;
	}
	
	// 방송 중 정보 변경
	@RequestMapping("/updateBroadcast.do")
	public @ResponseBody BroadcastVO updBroadcast(@ModelAttribute("broadcast") BroadcastVO vo) {
		vo.setUpdateCheck(true);
		System.out.println("방송 Update : " + vo);
		broadcastService.updateBroadcast(vo);
		vo.setUpdateCheck(false);
		return vo;
	}
	
	// 방송정보 조회 (AJAX)
	@RequestMapping("/ajaxGetBroadcast.do")
	public @ResponseBody BroadcastVO ajaxGetBroadcast(@ModelAttribute("broadcast") BroadcastVO vo) {
		return broadcastService.getBroadcast(vo);
	}
	
	// 방송 입장
	@RequestMapping("/getOnBroadcast.do")
	public String getOnBroadcast(@ModelAttribute("broadcast") BroadcastVO vo, Model model, HttpSession session) {
		BroadcastVO result = broadcastService.getBroadcast(vo);
		
		// 이미 종료된 방송 입장 시 예외처리
		if(result.getBroadcastStatus().equals("e3")) {
			return "blank/broadcasts/disconnectAlert";
		}
		
		MemberVO currMember = (MemberVO) session.getAttribute("login");
		MemberVO searchMember = memberService.getMember(currMember);
		session.setAttribute("login", searchMember);
		model.addAttribute("broadcastResult", result);
		return "blank/broadcasts/viewerPage";
	}
	
	// 방송중인 목록 조회
	@RequestMapping("/getOnBroadcastList.do")
	public String getOnBroadcastList(@ModelAttribute("broadcast") BroadcastVO vo, Model model, HttpSession session) {
		MemberVO bj = (MemberVO) session.getAttribute("login");
		if(bj != null) {
			vo.setMemberId(bj.getMemberId());
		}
		vo.setBroadcastStatus("e1");
		System.out.println(vo);
		List<Map<String, Object>> broadcastList = broadcastService.getBroadcastList(vo);
		model.addAttribute("broadcastList", broadcastList);
		return "broadcasts/mainBroadcastList";
	}

}
