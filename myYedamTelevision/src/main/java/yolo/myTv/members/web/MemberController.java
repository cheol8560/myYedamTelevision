package yolo.myTv.members.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	//회원탈퇴
	@RequestMapping(value = "/deleteMember.do", method=RequestMethod.POST)
	public String deleteMember(MemberVO vo,HttpSession session){
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		session.getAttribute("login");
		memberService.deleteMember(vo);
		System.out.println(vo);
		session.invalidate();
		return "redirect:/";
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
			HttpSession session) throws Exception {
		
		MemberVO result = memberService.login(vo);
		
		if (result != null) {
			session.setAttribute("login", result);
			return "redirect:/";
		}
		else {
			System.out.println("1");
			return "blank/members/login";
		}
	}

	 @RequestMapping(value = "/chkDupId.do")
	 public void checkId(HttpServletRequest req, HttpServletResponse res,
	   ModelMap model) throws Exception {
	  PrintWriter out = res.getWriter();
	  try {

	   // 넘어온 ID를 받는다.
	   String paramId = (req.getParameter("prmId") == null) ? "" : String
	     .valueOf(req.getParameter("prmId"));

	   MemberVO vo = new MemberVO();
	   vo.setMemberId(paramId.trim());
	   int chkPoint = memberService.chkDupId(vo);

	   out.print(chkPoint);
	   out.flush();
	   out.close();
	  } catch (Exception e) {
	   e.printStackTrace();
	   out.print("1");
	  }
	 }
	 
	 
	 
	 
	 @RequestMapping(value = "/chkDupNick.do")
	 public void checkNick(HttpServletRequest req, HttpServletResponse res,
	   ModelMap model) throws Exception {
	  PrintWriter out = res.getWriter();
	  try {

	   // 넘어온 ID를 받는다.
	   String paramNick = (req.getParameter("prmNick") == null) ? "" : String
	     .valueOf(req.getParameter("prmNick"));

	   MemberVO vo = new MemberVO();
	   vo.setNickName(paramNick.trim());
	   int chkPoint = memberService.chkDupNick(vo);

	   out.print(chkPoint);
	   out.flush();
	   out.close();
	  } catch (Exception e) {
	   e.printStackTrace();
	   out.print("1");
	  }
	 }
	 
	 
	 
	 @RequestMapping(value = "/chkDupMail.do")
	 public void checkMail(HttpServletRequest req, HttpServletResponse res,
	   ModelMap model) throws Exception {
	  PrintWriter out = res.getWriter();
	  try {

	   // 넘어온 ID를 받는다.
	   String paramMail = (req.getParameter("prmMail") == null) ? "" : String
	     .valueOf(req.getParameter("prmMail"));

	   MemberVO vo = new MemberVO();
	   vo.setEmail(paramMail.trim());
	   int chkPoint = memberService.chkDupMail(vo);

	   out.print(chkPoint);
	   out.flush();
	   out.close();
	  } catch (Exception e) {
	   e.printStackTrace();
	   out.print("1");
	  }
	 }
	 
	 
	 
	//관리자 회원 관리 페이지폼
		@RequestMapping("/adminMemberForm.do")
		public String adminMemberForm(MemberVO vo, Model model) throws Exception {
			model.addAttribute("member", memberService.getMemberList(vo));
			return "admin/members/member";
		}
		
	//관리자 회원 수정 페이지
		@RequestMapping("/getMemberForm.do")
		public String getMemberForm(@ModelAttribute("member")MemberVO vo, Model model) {
			model.addAttribute("member", memberService.getMember(vo));
			return "admin/members/updateMember";
		}
	 
	//관리자 회원 수정
		@RequestMapping(value = "/updateMember.do", method=RequestMethod.POST)
		public String updateNotice(@ModelAttribute("member") MemberVO vo){
			memberService.updateAdmin(vo);
			System.out.println(vo);
			return "redirect:/adminMemberForm.do";
		}

}