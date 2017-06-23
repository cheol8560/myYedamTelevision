<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-title">
	<h3>공지사항</h3>
	<div class="page-breadcrumb">
		<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="#">공지사항</a></li>
			<li class="active">문의내역</li>
		</ol>
	</div>
</div>
<div id="main-wrapper">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-white">
				<div class="panel-heading clearfix">
					<h4 class="panel-title">공지사항 수정</h4>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" action="updateAdminNotice.do" method="post"
						enctype="multipart/form-data">
						
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">게시글 번호</label>
							<div class="col-sm-9">
								<input name="boardNo" class="form-control" id="input-Default" value="${adminNotice.boardNo}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">제목</label>
							<div class="col-sm-9">
								<input name="boardTitle" class="form-control" id="input-Default" maxlength="50" value="${adminNotice.boardTitle}">
							</div>
						</div>

						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">작성내용</label>
							<div class="col-md-9">
								<textarea name="boardText" class="input-large form-control" id="message"
									rows="15">${adminNotice.boardText}</textarea>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="form-group">
								<label for="input-readonly" class="col-sm-2 control-label">첨부파일</label>
								<div class="col-sm-8">
									<input type="file" class="form-control"
											name="uploadFile" ><br> 
								<a href="FileDown.do?boardNo=${adminNotice.boardNo}">${adminNotice.attachFile}</a>
								</div>
							</div>
						</div>
						<input type="hidden" name="category" value="d1" />
						
						<div class="row">
							<button type="submit"
								class="btn btn-success col-md-offset-10">확인</button>
							<a href="${pageContext.request.contextPath}/adminNoticeList.do"><button type="button" class="btn btn-default radius-3 ">취소</button></a>
					
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