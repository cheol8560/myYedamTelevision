package yolo.myTv.comments.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import yolo.myTv.comments.service.Comments;
import yolo.myTv.comments.service.CommentsDAO;

import org.json.simple.JSONValue;

@SuppressWarnings("restriction")
@Controller
public class CommentController {

	@RequestMapping("/CommentController")
	public String comment(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		String cmd = request.getParameter("cmd");
		HashMap<String, String> msg ;
		
		 if (cmd.equals("selectAll")) { // 전체조회
			
				List<HashMap<String, Object>> list = CommentsDAO.getInstance().selectAll(request.getParameter("boardNo"));
				return "list";
			 
		} else if (cmd.equals("insert")) {   // 등록
			
				//빈을 생성해서 파라미터를 빈에 담기
				Comments bean = new Comments();
				bean.setCommentText(request.getParameter("commentText"));
				bean.setMemberId(request.getParameter("memberId"));
				bean.setBoardNo(request.getParameter("boardNo"));
				
				
				HashMap<String, Object> map = CommentsDAO.getInstance().insert(bean);
				out.print(toXML("success", map));
			 

		} else if (cmd.equals("update")) {   // 수정
			
				//빈을 생성해서 파라미터를 빈에 담기
				Comments bean = new Comments();
				bean.setMemberId(request.getParameter("memberId"));
				bean.setCommentText(request.getParameter("commentText"));
				bean.setCommentNO(request.getParameter("commentNO"));
				
				HashMap<String, Object> map = CommentsDAO.getInstance().update(bean);
				out.print(toXML("success", map));
			 

		} else if (cmd.equals("delete")) {   // 삭제
			
				//빈을 생성해서 파라미터를 빈에 담기
				Comments bean = new Comments();
				bean.setCommentNO(request.getParameter("commentNO"));
				
				HashMap<String, Object> map = CommentsDAO.getInstance().delete(bean);
				out.print(toXML("success", map));
			

		}
		return "";
	}
	
	private String toXML(String result, HashMap data) throws IOException{
		StringBuffer sb = new StringBuffer();
		sb.append("<result>");
		sb.append("<code>");
		sb.append(result);
		sb.append("</code>");
		sb.append(" <data><![CDATA[ ");
		StringWriter sw = new StringWriter();
		JSONValue.writeJSONString(data, sw);
		sb.append(sw.toString());
		sb.append("]]></data>");
		sb.append("</result>");
		return sb.toString();
		}	
	
}
