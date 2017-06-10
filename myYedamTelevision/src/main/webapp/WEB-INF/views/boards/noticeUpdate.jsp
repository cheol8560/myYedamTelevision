<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--========== PAGE CONTENT ==========-->
<!-- FAQ -->
<section
	class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v--3 bg-position-fixed">
	<div class="container">
		<span class="breadcrumbs-v5-title">공지사항 수정</span>

	</div>
</section>
<!-- End FAQ -->

<div class="bg-color-sky-light">
	<div class="content-md container">
		<div class="row">
			<div class="col-md-12 margin-b-30">
				<!-- Tab v4 -->
				<!-- End Tab v4  -->
				<!-- Comment Form v1 -->
				<div class="bg-color-white padding-40"
					style="width: 1100px; margin: 20px auto;">

					<!-- Comment Form v1 -->
					<form id="comment-form" class="comment-form-v1"
						action="updateNotice.do" method="post"
						enctype="multipart/form-data">
						<div class="row">
							<div class="col-md-12 margin-b-30">
								<input type="text" class="form-control comment-form-v1-input"
									name="boardTitle" value="${notice.boardTitle}" required>
							</div>
						</div>
						<!--// end row -->

						<div class="margin-b-30">
							<textarea class="form-control comment-form-v1-input" rows="10"
								name="boardText">${notice.boardText}</textarea>
						</div>
						<div class="col-md-12 margin-b-30">첨부파일</div>
						<div class="col-md-12 margin-b-30">
							<input type="file" class="form-control comment-form-v1-input"
								name="uploadFile" ><br> 
								<a href="FileDown.do?boardNo=${notice.boardNo}">${notice.attachFile}</a>
						</div>
						<input type="hidden" name="category" value="d1" />
						<input type="hidden" name="boardNo" value="${notice.boardNo}">
						<div>
							<button type="submit"
								class="btn-base-bg btn-base-sm radius-3 col-md-offset-10">확인</button>
							<button class="btn-base-bg btn-base-sm radius-3 ">취소</button>
						</div>
					</form>
					<!-- Comment Form v1 -->
				</div>
				<!-- End Comment Form v1 -->
			</div>
		</div>
	</div>
</div>
<!--========== END PAGE CONTENT ==========-->