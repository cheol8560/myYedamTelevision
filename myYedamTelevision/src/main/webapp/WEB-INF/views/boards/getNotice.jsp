<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--========== PAGE CONTENT ==========-->
<!-- FAQ -->
<section
	class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v--3 bg-position-fixed">
	<div class="container">
		<span class="breadcrumbs-v5-title">공지사항</span>

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
						action="getNoticeList.do" method="post"
						enctype="multipart/form-data">

						<div class="row">
							<div class="col-md-3 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>글번호 : ${notice.boardNo}</h5>
								</div>
							</div>
							<div class="col-md-9 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>글제목 : ${notice.boardTitle}</h5>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>작성자 : ${notice.boardNo}</h5>
								</div>
							</div>
							<div class="col-md-7 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>작성일자 : ${notice.writeDate}</h5>
								</div>
							</div>

						</div>
						<!--// end row -->

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
							<div class="col-md-3">
								<a href="UpdateNoticeForm.do?boardNo=${notice.boardNo}"><button type="button" class="btn-grey-brd btn-base-xs">수정</button></a>
								<a href="deleteNotice.do?boardNo=${notice.boardNo}"><button type="button" class="btn-grey-brd btn-base-xs">삭제</button></a>
							</div>
							<div class="col-md-1 col-md-offset-10">
								<button class="btn-base-bg btn-base-sm radius">목록으로</button>

							</div>
						</div>
						<input type="hidden" name="category" value="d1" />
					</form>

					<!-- Comment Form v1 -->

				</div>
				<!-- End Comment Form v1 -->
			</div>
		</div>
	</div>
</div>
<!--========== END PAGE CONTENT ==========-->