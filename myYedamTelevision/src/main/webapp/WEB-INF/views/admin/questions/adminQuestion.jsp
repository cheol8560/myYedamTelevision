<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-title">
	<h3>문의내역</h3>
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
					<h4 class="panel-title">문의내역</h4>
				</div>
				<div class="panel-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="input-readonly" class="col-sm-2 control-label">게시글
								번호</label>
							<div class="col-sm-2">
								<div class="form-control" id="input-Default">
									${adminQuestion.boardNo}</div>
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">제목</label>
							<div class="col-sm-9">
								<div class="form-control" id="input-Default">
									${adminQuestion.boardTitle}</div>
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">작성자</label>
							<div class="col-sm-2">
								<div class="form-control" id="input-Default">
									${adminQuestion.memberId}</div>
							</div>

							<label for="input-Default" class="col-sm-1 control-label">조회수</label>
							<div class="col-sm-2">
								<div class="form-control" id="input-Default">
									${adminQuestion.viewCount}</div>
							</div>

							<label for="input-Default" class="col-sm-1 control-label">작성일자</label>
							<div class="col-sm-3">
								<div class="form-control" id="input-Default">
									<fmt:formatDate pattern="yyyy년 MM월 dd일 HH:mm:ss"
										value="${adminQuestion.writeDate}" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">작성내용</label>
							<div class="col-md-9">
								<textarea class="input-large form-control" id="message"
									rows="15" readonly="readonly">${adminQuestion.boardText}</textarea>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="form-group">
								<label for="input-readonly" class="col-sm-2 control-label">첨부파일</label>
								<div class="col-sm-10">
									<a href="FileDown.do?boardNo=${adminQuestion.boardNo}">${adminQuestion.attachFile}</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-3 col-md-offset-10">
								<a href="UpdateAdminQuestionForm.do?boardNo=${adminQuestion.boardNo}"><button
										type="button" class="btn btn-default">수정</button></a> <a
									href="deleteAdminQuestion.do?boardNo=${adminQuestion.boardNo}"><button
										type="button" class="btn btn-default">삭제</button></a>
							</div>
							<br> <br> <input type="hidden" name="category"
								value="d2" /> <br>
							<div class="col-md-1 col-md-offset-10">
								<a href="${pageContext.request.contextPath}/getQuestionListAll.do"><button type="button" class="btn btn-success">목록으로</button></a>

							</div>
						</div>
						<br>
						</form>
						<div class="row">
							<div class="col-md-offset-2 col-md-9" style="font-size:17px;">
								<c:import
									url="../comments/commentList.jsp?boardNo=${adminQuestion.boardNo}"></c:import>
							</div>
						</div>
					
					
				</div>
			</div>
		</div>
	</div>
	<!-- Row -->
</div>
<!-- Main Wrapper -->
