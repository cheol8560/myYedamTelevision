package yolo.myTv.contents.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import yolo.myTv.contents.service.ContentService;
import yolo.myTv.contents.service.ContentVO;

@Controller
@SessionAttributes("contents")
public class ContentController {
	
	@Autowired	ContentService contentService;
	
	//등록
	@RequestMapping("/insertContent")
	public String insertContent(ContentVO vo){
		contentService.insertContent(vo);
		return "redirect:/getContentList.do";
	}
	
	//수정
	@RequestMapping("/updateContent.do")
	public String updateContent(ContentVO vo){
		
		contentService.updateContent(vo);
		return "redirect:/getContentList.do";
	}
	
	//삭제
	@RequestMapping("/deleteContent.do")
	public String deleteContent(ContentVO vo){
		contentService.deleteContent(vo);
		return "redirect:/getContentList.do";
	}
	
	//단건조회
	@RequestMapping("/getContent.do")
	
	public @ResponseBody ContentVO getContents(ContentVO vo, Model model) throws Exception {
		
		return contentService.getContent(vo);
	}
	
	//다건조회
	@RequestMapping("/getContentList.do")
	public String getContentsList(ContentVO vo, Model model) throws Exception {
		model.addAttribute("contentList", contentService.getContentList(vo));
		return "admin/contents/content";
	}
	
	//아이콘 창 띄우기
	@RequestMapping("/getContentIcon.do")
	public String getContentIcon(){
		return "admin/contents/icon";
	}

}
