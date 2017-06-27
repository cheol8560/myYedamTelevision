package yolo.myTv.main;

import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yolo.myTv.boards.service.BoardService;
import yolo.myTv.boards.service.BoardVO;
import yolo.myTv.members.service.MemberService;
import yolo.myTv.members.service.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@Autowired
	BoardService boardService;
	@Autowired
	MemberService memberService;
	@Autowired
	MainService mainService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("Welcome main! The client locale is {}.", locale);
		
		return "redirect:/getOnBroadcastList.do";
	}
	
	@RequestMapping("/adminIndex.do")
	public String adminMain(BoardVO boardvo, Model model){
		model.addAttribute("adminQuestion", boardService.getQuestionToday(boardvo));
		return "admin/main/adminIndex";
	}
	@RequestMapping("/sumInfo.do")
	public @ResponseBody MainVO sumInfo(MainVO mainvo){
		mainService.sumInfo(mainvo);
		return mainvo;
	}
	
	
}
