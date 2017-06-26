package yolo.myTv.blacklists.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yolo.myTv.blacklists.service.BlacklistService;
import yolo.myTv.blacklists.service.BlacklistVO;

@Controller
public class BlacklistController {

	@Autowired BlacklistService blacklistService;
	
	// 블랙리스트 등록
	@RequestMapping("/insertBlacklist.do")
	public @ResponseBody BlacklistVO insertBlacklist(BlacklistVO vo) {
		blacklistService.insertBlacklist(vo);
		return vo;
	}
	
	// 블랙리스트 삭제
	@RequestMapping("/deleteBlacklist.do")
	public @ResponseBody BlacklistVO deleteBlacklist(BlacklistVO vo) {
		blacklistService.deleteBlacklist(vo);
		return vo;
	}
	
	// 특정 방송 블랙리스트 목록 조회
	@RequestMapping("/getBlacklistInBroadcast.do")
	public @ResponseBody List<BlacklistVO> getBlacklistInBroadcast(BlacklistVO vo) {
		return blacklistService.getBlacklistInBroadcast(vo); 
	}
	
	// 특정 방송 블랙리스트 등록 여부 체크
	@RequestMapping("/getBlacklistCheck.do")
	public @ResponseBody int getBlacklistCheck(BlacklistVO vo) {
		System.out.println("-----blacklistVO : " + vo);
		System.out.println("-----blacklistVO : " + blacklistService.getBlacklistCheck(vo));
		return blacklistService.getBlacklistCheck(vo);
	}
	
}
