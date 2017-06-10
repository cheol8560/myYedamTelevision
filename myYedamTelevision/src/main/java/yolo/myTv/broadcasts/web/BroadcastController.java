package yolo.myTv.broadcasts.web;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import yolo.myTv.broadcasts.service.BroadcastService;
import yolo.myTv.broadcasts.service.BroadcastVO;

@Controller
public class BroadcastController {

	@Autowired
	BroadcastService broadcastService;
	
	// 방송정보 입력 페이지
	@RequestMapping("/insertBroadcastForm.do")
	public String insertBroadcastForm() {
		return "blank/broadcasts/bjPage";
	}
	
	// 방송정보 등록
	@RequestMapping("/insertBroadcast.do")
	public String insertBroadcast() {
		return "";
	}
	
	// 방송정보 수정
	
	
	// 방송 입장
	@RequestMapping("/getOnBroadcast.do")
	public String getOnBroadcast() {
		
		return "blank/broadcasts/viewerPage";
	}
	
	// 방송중인 목록 조회
	@RequestMapping("/getOnBroadcastList.do")
	public String getOnBroadcastList(Model model, BroadcastVO vo) {
		vo.setBroadcastStatus("on");
		List<Map<String, Object>> list = broadcastService.getBroadcastList(vo);
		model.addAttribute("broadcastList", list);
		return "broadcasts/mainBroadcastList";
	}
	
	// 테스트페이지 확인
	@RequestMapping("/getTestPage.do")
	public String getTestPage() {
		return "blank/fullFeaturesConfigMute";
	}
}
