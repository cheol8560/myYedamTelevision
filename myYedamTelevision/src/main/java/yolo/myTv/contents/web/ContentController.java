package yolo.myTv.contents.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import yolo.myTv.contents.service.ContentService;
import yolo.myTv.contents.service.ContentVO;

@Controller
@SessionAttributes("contents")
public class ContentController {
	
	@Autowired	ContentService contentService;
	
	//등록
	@RequestMapping("contentsInsert.do")
	public String insertContent(ContentVO vo){
		contentService.insertContent(vo);
		return"";
	}
	
	//수정
	@RequestMapping("contentsUpdate.do")
	public String updateContent(ContentVO vo){
		
		contentService.updateContent(vo);
		return"";
	}
	
	//삭제
	@RequestMapping("contentsDelete.do")
	public String deleteContent(ContentVO vo){
		contentService.deleteContent(vo);
		return"";
	}
	
	//단건조회
	@RequestMapping("getContent.do")
	public String getContents(ContentVO vo, Model model) throws Exception {
		model.addAttribute("contents", contentService.getContent(vo));
		return "";
	}
	
	//다건조회
	@RequestMapping("/getContentList.do")
	public String getContentsList(ContentVO vo, Model model) throws Exception {
		model.addAttribute("contentList", contentService.getContentList(vo));
		return "/admin/contents/content";
	}
	

}
