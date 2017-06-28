<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-title">
	<h3>공지사항 및 문의내역</h3>
	<div class="page-breadcrumb">
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/adminNoticeList.do">공지사항 관리</a></li>
			<li><a href="${pageContext.request.contextPath}/getQuestionListAll.do">문의내역 관리</a></li>
		</ol>
	</div>
</div>
<div id="main-wrapper">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-white">
				<div class="panel-heading clearfix">
					<h4 class="panel-title">문의내역 수정</h4>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" action="updateAdminNotice.do" method="post"
						enctype="multipart/form-data">
						
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">게시글 번호</label>
							<div class="col-sm-9">
								<input name="boardNo" class="form-control" id="input-Default" value="${adminQuestion.boardNo}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">제목</label>
							<div class="col-sm-9">
								<input name="boardTitle" class="form-control" id="input-Default" maxlength="50" value="${adminQuestion.boardTitle}">
							</div>
						</div>

						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">작성내용</label>
							<div class="col-md-9">
								<textarea name="boardText" class="input-large form-control" id="message"
									rows="15">${adminQuestion.boardText}</textarea>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="form-group">
								<label for="input-readonly" class="col-sm-2 control-label">첨부파일</label>
								<div class="col-sm-8">
									<input type="file" class="form-control"
											name="uploadFile" ><br> 
								<a href="FileDown.do?boardNo=${adminQuestion.boardNo}">${adminQuestion.attachFile}</a>
								</div>
							</div>
						</div>
						<input type="hidden" name="category" value="d2" />
						
						<div class="row">
							<button type="submit"
								class="btn btn-success col-md-offset-10">확인</button>
							<a href="${pageContext.request.contextPath}/getQuestionListAll.do"><button type="button" class="btn btn-default radius-3 ">취소</button></a>
					
						</div>
						<br>
						
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Row -->
</div>
<!-- Main Wrapper -->