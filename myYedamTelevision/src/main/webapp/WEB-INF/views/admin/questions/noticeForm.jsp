<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<h4 class="panel-title">공지사항 등록</h4>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" action="insertNotice.do" method="post"
						enctype="multipart/form-data">
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">제목</label>
							<div class="col-sm-9">
								<input type="text" name="boardTitle" class="form-control" id="input-Default" placeholder="제목을 입력하세요. (50자까지 적으실수있습니다.)" maxlength="50" required>
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">작성내용</label>
							<div class="col-md-9">
								<textarea name="boardText" class="input-large form-control" id="message"
									rows="15" placeholder="내용을 입력하세요."></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="input-Default" class="col-sm-2 control-label">첨부파일</label>
							<div class="col-sm-7">
								<input type="file" name="uploadFile" class="form-control" id="input-Default">
							</div>
						</div>
						<input type="hidden" name="category" value="d1"/>
						<div>
							<button type="submit"
								class="btn btn-success col-md-offset-10">확인</button>
							<a href="${pageContext.request.contextPath}/adminNoticeList.do"><button type="button" class="btn btn-default">취소</button></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Row -->
</div>
<!-- Main Wrapper -->