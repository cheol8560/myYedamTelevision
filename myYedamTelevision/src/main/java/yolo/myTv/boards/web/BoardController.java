package yolo.myTv.boards.web;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yolo.myTv.boards.service.BoardService;
import yolo.myTv.boards.service.BoardVO;
import yolo.myTv.members.service.MemberVO;
import yolo.myTv.util.PaginationInfo;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "BOARDTITLE");
		conditionMap.put("내용", "BOARDTEXT");
		return conditionMap;
	}

	// 공지사항 등록 폼
	@RequestMapping(value = "/insertNotice.do", method = RequestMethod.GET)
	public String insertNoticeForm() {
		return "admin/questions/noticeForm";
	}

	// 공지사항 등록
	@RequestMapping(value = "/insertNotice.do", method = RequestMethod.POST)
	public String insertNotice(BoardVO vo, HttpServletRequest request)
			throws IllegalStateException, IOException {
		MultipartFile file = vo.getUploadFile();
		if(file != null && file.getSize() > 0 ){
			File savefile = new File("d:/upload/", file.getOriginalFilename());
			file.transferTo(savefile); // 서버에 파일 저장
			vo.setAttachFile(file.getOriginalFilename());
		}
		
		System.out.println(vo);
		vo.setMemberId("admin");
		boardService.insertBoard(vo);
		return "redirect:/adminNoticeList.do";
	}

	// 공지사항 단건조회
	@RequestMapping("/getNotice.do")
	public String getNotice(BoardVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("notice", boardService.getBoard(vo, true));
		return "boards/getNotice";
	}
	

	// 공지사항 전체보기
	@RequestMapping("/getNoticeList.do")
	public String getNoticeList(BoardVO vo, Model model) throws Exception {
		vo.setCategory("d1");
		
		
		//페이징
		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo.setPageSize(vo.getPageSize());
		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());
		paginationInfo.setTotalRecordCount(boardService.getBoardListCount(vo));
		model.addAttribute("paginationInfo", paginationInfo);
		
		
		model.addAttribute("noticeList", boardService.getBoardList(vo));
		return "boards/noticeList";
	}

	// 공지사항 수정폼
	@RequestMapping("/UpdateNoticeForm.do")
	// get
	public String UpdateNoticeForm(@ModelAttribute("notice") BoardVO vo,
			Model model) {
		System.out.println(vo);
		model.addAttribute("notice", boardService.getBoard(vo, false));
		return "boards/noticeUpdate";
	}

	// 공지사항 수정
	@RequestMapping(value = "/updateNotice.do", method = RequestMethod.POST)
	public String updateNotice(@ModelAttribute("notice") BoardVO vo,
			SessionStatus status, HttpServletRequest request)
			throws IllegalStateException, IOException {
		MultipartFile file = vo.getUploadFile();
		File savefile = new File("d:/upload/", file.getOriginalFilename());
		file.transferTo(savefile); // 서버에 파일 저장
		vo.setAttachFile(file.getOriginalFilename());
		System.out.println(vo);
		boardService.updateBoard(vo);
		status.setComplete(); // 세션에 저장된 vo를 삭제
		return "redirect:/getNotice.do?boardNo=" + vo.getBoardNo();
	}

	// 공지사항 삭제
	@RequestMapping("/deleteNotice.do")
	public String deleteNotice(@ModelAttribute("notice") BoardVO vo,
			SessionStatus status) throws Exception {
		boardService.deleteBoard(vo);
		status.setComplete();
		return "forward:/getNoticeList.do";
	}

	// 1:1 문의하기 등록 폼
	@RequestMapping(value = "/insertInquiry.do", method = RequestMethod.GET)
	public String insertInquiryForm() {
		return "boards/inquiryForm";
	}

	// 1:1 문의하기 등록
	@RequestMapping(value = "/insertInquiry.do", method = RequestMethod.POST)
	public String insertInquiry(BoardVO vo, HttpServletRequest request)
			throws IllegalStateException, IOException {
		MultipartFile file = vo.getUploadFile();
		if(file !=null && file.getSize()>0){
			File savefile = new File("d:/upload/", file.getOriginalFilename());
			file.transferTo(savefile); // 서버에 파일 저장
			vo.setAttachFile(file.getOriginalFilename());
		}
		System.out.println(vo);

		boardService.insertBoard(vo);
		return "redirect:/getInquiryList.do";
	}

	// My 문의내역 전체보기
	@RequestMapping("/getInquiryList.do")
	public String getInquiryList(BoardVO vo, Model model, HttpSession session)
			throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("login");
		vo.setMemberId(member.getMemberId());
		
		//페이징
				/** pageing setting */
				PaginationInfo paginationInfo = new PaginationInfo();
				paginationInfo.setCurrentPageNo(vo.getPageIndex());
				paginationInfo.setRecordCountPerPage(vo.getPageUnit());
				paginationInfo.setPageSize(vo.getPageSize());
				vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
				vo.setLastIndex(paginationInfo.getLastRecordIndex());
				paginationInfo.setTotalRecordCount(boardService.myQuestionListCount(vo));
				model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("inquiryList", boardService.myQuestionList(vo));
		return "boards/inquiryList";
	}

	// My 문의내역 단건조회
	@RequestMapping("/getInquiry.do")
	public String getInquiry(BoardVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("inquiry", boardService.getBoard(vo, true));
		return "boards/getInquiry";
	}

	// 문의내역 수정폼
	@RequestMapping("/UpdateInquiryForm.do")
	// get
	public String UpdateInquiryForm(@ModelAttribute("inquiry") BoardVO vo,
			Model model) {
		System.out.println(vo);
		model.addAttribute("inquiry", boardService.getBoard(vo, false));
		return "boards/inquiryUpdate";
	}

	// 문의내역 수정
	@RequestMapping(value = "/updateInquiry.do", method = RequestMethod.POST)
	public String updateInquiry(@ModelAttribute("inquiry") BoardVO vo,
			SessionStatus status, HttpServletRequest request)
			throws IllegalStateException, IOException {
		MultipartFile file = vo.getUploadFile();
		if(file !=null && file.getSize()>0){
			File savefile = new File("d:/upload/", file.getOriginalFilename());
			file.transferTo(savefile); // 서버에 파일 저장
			vo.setAttachFile(file.getOriginalFilename());
		}
		System.out.println(vo);
		boardService.updateBoard(vo);
		status.setComplete(); // 세션에 저장된 vo를 삭제
		return "redirect:/getInquiry.do?boardNo=" + vo.getBoardNo();
	}

	// 문의내역 삭제
	@RequestMapping("/deleteInquiry.do")
	public String deleteInquiry(@ModelAttribute("inquiry") BoardVO vo,
			SessionStatus status) throws Exception {
		boardService.deleteBoard(vo);
		status.setComplete();
		return "forward:/getInquiryList.do";
	}
	
	//댓글 조회
	@RequestMapping("/CommentList.do")
	public ModelAndView CommentList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/comments/commentList");
		return mav;
	}
	
	//관리자 공지사항 조회
	@RequestMapping("/adminNoticeList.do")
	public String adminNoticeList(BoardVO vo, Model model) throws Exception{
		vo.setCategory("d1");
		model.addAttribute("adminNoticeList", boardService.adminNoticeList(vo));
		return "admin/questions/notice";
	}
	
	//관리자 공지사항 상세조회
	@RequestMapping("/adminNotice.do")
	public String adminNotice(BoardVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("adminNotice", boardService.adminBoard(vo, true));
		return "admin/questions/adminNotice";
	}
	
	//관리자 공지사항 수정 폼
	@RequestMapping("/UpdateAdminNoticeForm.do")
	// get
	public String UpdateAdminNoticeForm(@ModelAttribute("adminNotice") BoardVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("adminNotice", boardService.adminBoard(vo, false));
		return "admin/questions/NoticeUpdate";
	}

	// 관리자 공지사항 수정
	@RequestMapping(value = "/updateAdminNotice.do", method = RequestMethod.POST)
	public String updateAdminNotice(@ModelAttribute("adminNotice") BoardVO vo,
			SessionStatus status, HttpServletRequest request)
			throws IllegalStateException, IOException {
		MultipartFile file = vo.getUploadFile();
		if(file !=null && file.getSize()>0){
			File savefile = new File("d:/upload/", file.getOriginalFilename());
			file.transferTo(savefile); // 서버에 파일 저장
			vo.setAttachFile(file.getOriginalFilename());
		}
		System.out.println(vo);
		boardService.updateAdminBoard(vo);
		status.setComplete(); // 세션에 저장된 vo를 삭제
		return "redirect:/adminNotice.do?boardNo=" + vo.getBoardNo();
	}
	
		// 공지사항 삭제
		@RequestMapping("/deleteAdminNotice.do")
		public String deleteAdminNotice(@ModelAttribute("adminNotice") BoardVO vo,
				SessionStatus status) throws Exception {
			boardService.deleteAdminBoard(vo);
			status.setComplete();
			return "forward:/adminNoticeList.do";
		}
		
		//일대일 문의 내역 조회(댓글 없는 것)
		@RequestMapping("/getQuestionList.do")
		public String getQuestionList(BoardVO vo, Model model){
			/*vo.setCategory("d2");*/
			model.addAttribute("adminQuestion", boardService.getQuestionList(vo) );
			
			return "admin/questions/question";
		}
		
		//관리자 문의내역 전체 조회
			@RequestMapping("/getQuestionListAll.do")
			public String getQuestionListAll(BoardVO vo, Model model){
				/*vo.setCategory("d2");*/
				model.addAttribute("adminQuestion", boardService.getQuestionListAll(vo) );
				
				return "admin/questions/questionAll";
			}
		
		
		//관리자 문의내역 상세조회
		@RequestMapping("/adminQuestion.do")
		public String adminQuestion(BoardVO vo, Model model) {
			System.out.println(vo);
			model.addAttribute("adminQuestion", boardService.adminBoard(vo, true));
			return "admin/questions/adminQuestion";
		}
	
		//관리자 문의내역 수정 폼
		@RequestMapping("/UpdateAdminQuestionForm.do")
		// get
		public String UpdateAdminQuestionForm(@ModelAttribute("adminQuestion") BoardVO vo, Model model) {
			System.out.println(vo);
			model.addAttribute("adminQuestion", boardService.adminBoard(vo, false));
			return "admin/questions/QuestionUpdate";
		}
		
		// 관리자 문의내역 수정
		@RequestMapping(value = "/updateAdminQuestion.do", method = RequestMethod.POST)
		public String updateAdminQuestion(@ModelAttribute("adminQuestion") BoardVO vo,
				SessionStatus status, HttpServletRequest request)
				throws IllegalStateException, IOException {
			MultipartFile file = vo.getUploadFile();
			if(file !=null && file.getSize()>0){
				File savefile = new File("d:/upload/", file.getOriginalFilename());
				file.transferTo(savefile); // 서버에 파일 저장
				vo.setAttachFile(file.getOriginalFilename());
			}
			System.out.println(vo);
			boardService.updateAdminBoard(vo);
			status.setComplete(); // 세션에 저장된 vo를 삭제
			return "redirect:/adminQuestion.do?boardNo=" + vo.getBoardNo();
		}
		
		// 문의내역 삭제
				@RequestMapping("/deleteAdminQuestion.do")
				public String deleteAdminQuestion(@ModelAttribute("adminQuestion") BoardVO vo,
						SessionStatus status) throws Exception {
					boardService.deleteAdminBoard(vo);
					status.setComplete();
					return "forward:/getQuestionListAll.do";
				}
	
	
	/**
	 * 첨부파일로 등록된 파일에 대하여 다운로드를 제공한다.
	 *
	 * @param commandMap
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value = "/FileDown.do")
	public void cvplFileDownload(@RequestParam Map<String, Object> commandMap,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String boardNo = (String) commandMap.get("boardNo");

		BoardVO boardVO = new BoardVO();
		boardVO.setBoardNo(Integer.parseInt(boardNo));
		BoardVO result = boardService.getBoard(boardVO, false);

		File uFile = new File("d:/upload/", result.getAttachFile());
		long fSize = uFile.length();

		if (fSize > 0) {
			String mimetype = "application/x-msdownload";

			response.setContentType(mimetype);
			setDisposition(result.getAttachFile(), request, response);

			BufferedInputStream in = null;
			BufferedOutputStream out = null;

			try {
				in = new BufferedInputStream(new FileInputStream(uFile));
				out = new BufferedOutputStream(response.getOutputStream());

				FileCopyUtils.copy(in, out);
				out.flush();
			} catch (IOException ex) {
				ex.printStackTrace();
			} finally {
				in.close();
				out.close();
			}

		} else {
			response.setContentType("application/x-msdownload");

			PrintWriter printwriter = response.getWriter();

			printwriter.println("<html>");
			printwriter.println("<br><br><br><h2>Could not get file name:<br>"
					+ result.getAttachFile() + "</h2>");
			printwriter
					.println("<br><br><br><center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>");
			printwriter.println("<br><br><br>&copy; webAccess");
			printwriter.println("</html>");

			printwriter.flush();
			printwriter.close();
		}
	}

	/**
	 * Disposition 지정하기.
	 *
	 * @param filename
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	private void setDisposition(String filename, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String browser = getBrowser(request);

		String dispositionPrefix = "attachment; filename=";
		String encodedFilename = null;

		if (browser.equals("MSIE")) {
			encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll(
					"\\+", "%20");
		} else if (browser.equals("Trident")) { // IE11 문자열 깨짐 방지
			encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll(
					"\\+", "%20");
		} else if (browser.equals("Firefox")) {
			encodedFilename = "\""
					+ new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Opera")) {
			encodedFilename = "\""
					+ new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Chrome")) {
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < filename.length(); i++) {
				char c = filename.charAt(i);
				if (c > '~') {
					sb.append(URLEncoder.encode("" + c, "UTF-8"));
				} else {
					sb.append(c);
				}
			}
			encodedFilename = sb.toString();
		} else {
			throw new IOException("Not supported browser");
		}

		response.setHeader("Content-Disposition", dispositionPrefix
				+ encodedFilename);

		if ("Opera".equals(browser)) {
			response.setContentType("application/octet-stream;charset=UTF-8");
		}
	}

	/**
	 * 브라우저 구분 얻기.
	 *
	 * @param request
	 * @return
	 */
	private String getBrowser(HttpServletRequest request) {
		String header = request.getHeader("User-Agent");
		if (header.indexOf("MSIE") > -1) {
			return "MSIE";
		} else if (header.indexOf("Trident") > -1) { // IE11 문자열 깨짐 방지
			return "Trident";
		} else if (header.indexOf("Chrome") > -1) {
			return "Chrome";
		} else if (header.indexOf("Opera") > -1) {
			return "Opera";
		}
		return "Firefox";
	}
	
	
	

}
