<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>댓글</title>
<style>
	.date{
		float:right;
	}
	.button{
		float:right;
		font-size:10px;
	}
</style>
<script src="${pageContext.request.contextPath}/assets/scripts/ajax.js"></script>
<script>

$(function () {
	$("#enter").keydown(function(e){
		if(e.keyCode == 13){
			addComment(); 
			return false;
		}
		});
	
	$("#Uenter").keydown(function(e){
		if(e.keyCode == 13){
			updateComment(); 
			return false;
		}
		});
})



window.onload = function() {
	loadCommentList();  // 목록조회 ajax 요청
}
//목록조회 요청
function loadCommentList() {
	
	var param = "cmd=selectAll&boardNo=<%=request.getParameter("boardNo")%>";
	
	new ajax.xhr.Request("${pageContext.request.contextPath}/CommentController", param, loadCommentResult, 'GET');
}
//목록조회 콜백함수
function loadCommentResult(req) {
	if (req.readyState == 4) {    //응답이 완료
		if (req.status == 200) {  //정상실행  
			var xmlDoc = req.responseXML;   // 응답결과가 XML 
			var code = xmlDoc.getElementsByTagName('code').item(0)
			                 .firstChild.nodeValue;
			if (code == 'success') {
				// data 태그의 태그바디값(string)을  json 객체로 변환 
				console.log(xmlDoc.getElementsByTagName('data').item(0).firstChild.nodeValue);
				var commentList = eval( "(" +
						 xmlDoc.getElementsByTagName('data').item(0).firstChild.nodeValue +")" );
				var listDiv = document.getElementById('commentList');
				for (var i = 0 ; i < commentList.length ; i++) {
					var commentDiv = makeCommentView(commentList[i]);//댓글div 태그생성
					listDiv.appendChild(commentDiv);  // div목록에 댓글div 추가
				}
				
			} else if (code == 'error') {
				var message = xmlDoc.getElementsByTagName('data')
				                    .item(0).firstChild.nodeValue;
				alert("에러 발생:"+message);
			}
		} else {  	alert("댓글 목록 로딩 실패:"+req.status);}  //에러인 경우 상태코드 출력
	}
}

function makeCommentView(comment){
	var div = document.createElement("div"); 
	div.setAttribute("id", "c"+comment.commentNo);
	div.className = 'comment';
	div.comment = comment;  //{id:1,.... }
	
	var s="";
	if(comment.memberId == "admin" /* "${login}" */){
		s = "<input class=\"button\" type=\"button\" value=\"삭제\" onclick=\"confirmDeletion('"+comment.commentNo+"')\"/>"
			+"<input class=\"button\" type=\"button\" value=\"수정\" onclick=\"viewUpdateForm('"+comment.commentNo+"')\"/>"
	}
	var str = "<strong>" + comment.memberId +" : "+ "</strong>" + comment.commentText +"<span class=\"date\">"+ comment.writeDate+"</span>" 
				+s
	
	div.innerHTML = str ;
	return div;
}

//댓글 등록 ajax 요청
function addComment() {
	/* if("${login}"==""){
	alert('로그인 후 등록이 가능합니다.');
	 location.href="../login/loginform.jsp";
	 return;
	} */
	var memberId = "admin";/* '${login}'; *///document.addForm.writer.value;
	var commentText = document.addForm.commentText.value;
	var params = "memberId="+encodeURIComponent(memberId)+"&"+
	             "commentText="+encodeURIComponent(commentText) 
	             + "&cmd=insert"
	             + "&boardNo=<%=request.getParameter("boardNo")%>";
	new ajax.xhr.Request('${pageContext.request.contextPath}/CommentController', params, addResult, 'POST');
}
////댓글 등록 콜백함수
function addResult(req) {
	
	if (req.readyState == 4) {
		if (req.status == 200) {
			
				var xmlDoc = req.responseXML;
				var code = xmlDoc.getElementsByTagName('code').item(0).firstChild.nodeValue;
				if (code == 'success') {
					console.log(xmlDoc.getElementsByTagName('data').item(0).firstChild.nodeValue);
					var comment = eval( "(" + xmlDoc.getElementsByTagName('data').item(0).firstChild.nodeValue + ")" );
					var listDiv = document.getElementById('commentList');
					var commentDiv = makeCommentView(comment);
					listDiv.appendChild(commentDiv);
					//등록폼 텍스트필드 클리어
					document.addForm.memberId.value = '';
					document.addForm.commentText.value = '';				
					alert("등록했습니다!");
				} else if (code == 'fail') {
					var message = xmlDoc.getElementsByTagName('data')
					                    .item(0).firstChild.nodeValue;
					alert("에러 발생:"+message);
				}
				} else {
					alert("서버 에러 발생: " + req.status);
				}
			
	}
}
//댓글 수정 ajax 요청
function updateComment() {
	var commentNo = document.updateForm.commentNo.value;
	var memberId = document.updateForm.memberId.value;
	var commentText = document.updateForm.commentText.value;
	var params = "commentNo="+ commentNo +"&"+
	             "memberId="+encodeURIComponent(memberId)+"&"+
	             "commentText="+encodeURIComponent(commentText) + "&cmd=update";
	new ajax.xhr.Request('${pageContext.request.contextPath}/CommentController', params, updateResult, 'POST');
}

////댓글 수정 콜백함수
function updateResult(req) {
	if (req.readyState == 4) {
		if (req.status == 200) {
			var xmlDoc = req.responseXML;
			var code = xmlDoc.getElementsByTagName('code').item(0)
			                 .firstChild.nodeValue;
			if (code == 'success') {
				var comment = eval( "(" +
				    xmlDoc.getElementsByTagName('data').item(0)
				          .firstChild.nodeValue +
				                     ")" );
				var listDiv = document.getElementById('commentList');
				var commentDiv = makeCommentView(comment);

				var oldCommentDiv = document.getElementById('c'+comment.commentNo);
				var updateFormDiv = document.getElementById('commentUpdate');
				document.body.appendChild(updateFormDiv);
				listDiv.replaceChild(commentDiv, oldCommentDiv);
				alert("수정했습니다!");
				
			} else if (code == 'fail') {
				var message = xmlDoc.getElementsByTagName('data')
				                    .item(0).firstChild.nodeValue;
				alert("에러 발생:"+message);
			}
		} else {
			alert("서버 에러 발생: " + req.status);
		}
	}
}

//수정버튼 이벤트핸들러: 수정할 댓글밑에 수정폼 보이게 함
function viewUpdateForm(commentNo) {
	var commentDiv = document.getElementById('c'+commentNo);
	var updateFormDiv = document.getElementById('commentUpdate');
	//현재 수정상태(수정폼이 보이고 있음)이면 수정폼이 보이게 할 필요 없음
	if (updateFormDiv.parentNode != commentDiv) {
		commentDiv.appendChild(updateFormDiv);  //수정폼을 수정할 댓글밑에 보이도록
	}
	//수정할 값을 텍스트필드에 보이게
	var comment = commentDiv.comment;   //댓글 객체 { id:'', content:'', name:'' }
	document.updateForm.commentNo.value = comment.commentNo;    
	document.updateForm.memberId.value = comment.memberId;
	document.updateForm.commentText.value = comment.commentText;
	updateFormDiv.style.display = '';   //수정폼 보이게
}

//댓글 삭제 ajax 요청
function confirmDeletion(commentNo) {
	if(confirm("삭제할까요?")){
		var params = "commentNo="+ commentNo +"&cmd=delete";
		new ajax.xhr.Request('${pageContext.request.contextPath}/CommentController', params, deleteResult, 'POST');
	}

}
////댓글 삭제 콜백함수
function deleteResult(req) {
	if (req.readyState == 4) {
		if (req.status == 200) {
			var xmlDoc = req.responseXML;
			var code = xmlDoc.getElementsByTagName('code').item(0)
			                 .firstChild.nodeValue;
			if (code == 'success') {
				var comment = eval( "(" +
				    xmlDoc.getElementsByTagName('data').item(0)
				          .firstChild.nodeValue +
				                     ")" );
				var listDiv = document.getElementById('commentList');
				
				var commentDiv = document.getElementById('c'+comment.commentNo);
				commentDiv.parentNode.removeChild(commentDiv);
				
				
			} else if (code == 'fail') {
				var message = xmlDoc.getElementsByTagName('data')
				                    .item(0).firstChild.nodeValue;
				alert("에러 발생:"+message);
			}
		} else {
			alert("서버 에러 발생: " + req.status);
		}
	}
}


</script>
</head>
<body>
<div id="commentList"></div>

<!-- 댓글등록시작 -->
<div id="commentAdd">
	<form action="" name="addForm">
	<input type="hidden" name="memberId" size="10"><br/>
	댓글: <input id="enter" name="commentText" size="100">
	<input type="button" value="등록" onclick="addComment()"/>
	</form>
</div>
<!-- 댓글등록끝 -->
<!-- 댓글수정폼시작 -->
<div id="commentUpdate" style="display:none">
	<form action="" name="updateForm">
	<input type="hidden" name="commentNo" value=""/>
	<input type="hidden" name="memberId" size="10"><br/>
	댓글: <input id="Uenter" name="commentText" size="100">
	<input type="button" value="등록" onclick="updateComment()"/>
	<input type="button" value="취소" onclick="cancelUpdate()"/>
	</form>
</div>
<!-- 댓글수정폼끝 -->
</body>
</html>






