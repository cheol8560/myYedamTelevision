package yolo.myTv.members.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import yolo.myTv.members.service.MemberService;
import yolo.myTv.members.service.MemberVO;


@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 등록
	@RequestMapping(value = "/memberInsert.do", method = RequestMethod.POST)
	public String memberInsert(MemberVO memberVO, HttpServletRequest request) throws IllegalStateException, IOException  {
		MultipartFile file = memberVO.getUploadFile();
		if(file != null) {
			String pathSet = request.getSession().getServletContext().getRealPath("/img");
			File savefile = new File( pathSet , file.getOriginalFilename());
			file.transferTo(savefile); //서버에 파일 저장 
			memberVO.setMemberImage(file.getOriginalFilename());
		}
		memberService.insertMember(memberVO);
		return "members/login";
	}

	// 회원탈퇴 페이지
	@RequestMapping("/deleteMemberForm.do")
	public String deleteMemberForm() {
		return "members/memberLeave";
	}
	
	
	// 로그인폼
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginForm() {
		return "blank/members/login";
	}
	
	// 로그인
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MemberVO vo,
			Model model,
			HttpSession session) {
		MemberVO result = memberService.login(vo);
		if (result != null) {
			session.setAttribute("login", result);
			return "redirect:/";
		} else {
			return "members/login";
		}
	}
}
