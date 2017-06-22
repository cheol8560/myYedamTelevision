<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<h4 class="panel-title">공지사항</h4>
				</div>
				<div class="panel-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="input-readonly" class="col-sm-2 control-label">게시글
								번호</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-readonly"
									placeholder="${notice.boardNo}" readonly>
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-Default"
									value=${notice.boardTitle}>
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">작성자</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-Default"
									readonly="readonly" value="${notice.memberId}">
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">작성일자</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-Default"
									readonly="readyonly" value="${notice.writeDate}">
							</div>
						</div>
						<div class="col-md-12 margin-b-30">
							<div>${notice.boardText}</div>
						</div>
						<div class="row">
							<div class="col-md-12 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>
										첨부파일 : <a href="FileDown.do?boardNo=${notice.boardNo}">${notice.attachFile}</a>
									</h5>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-3 col-md-offset-10">
								<a href="UpdateNoticeForm.do?boardNo=${notice.boardNo}"><button
										type="button" class="btn btn-default">수정</button></a> <a
									href="deleteNotice.do?boardNo=${notice.boardNo}"><button
										type="button" class="btn btn-default">삭제</button></a>
							</div>
							<input type="hidden" name="category" value="d1" /> <br>
							<div class="col-md-1 col-md-offset-10">
								<button class="btn btn-success">목록으로</button>

							</div>
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
