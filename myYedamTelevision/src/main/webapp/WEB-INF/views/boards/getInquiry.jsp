<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
$(function () {
	var str = $("#result").html();
	str = str.replace(/(?:\r\n|\r|\n)/g, '<br/>');
	$("#result").html(str);
})
</script>  

<!--========== PAGE CONTENT ==========-->
<!-- FAQ -->
<div class="faq">
	<div class="container-xs">
		<h2 class="faq-title">My 문의내역</h2>
	</div>
</div>
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
						action="getInquiryList.do" method="post"
						enctype="multipart/form-data">
						<div class="row">
							<div class="col-md-3 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>글번호 : ${inquiry.boardNo}</h5>
								</div>
							</div>
							<div class="col-md-9 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>글제목 : ${inquiry.boardTitle}</h5>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>작성자 : ${inquiry.memberId}</h5>
								</div>
							</div>
							<div class="col-md-7 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>작성일자 : <fmt:formatDate pattern="yyyy년 MM월 dd일 HH:mm:ss"
												value="${inquiry.writeDate}"/></h5>
								</div>
							</div>

						</div>

						<!--// end row -->
						<div class="row">
							<div class="col-md-12 margin-b-30" id="result">
								${inquiry.boardText}
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 margin-b-30">
								<div class="form-control comment-form-v1-input">
									<h5>
										첨부파일 : <a href="FileDown.do?boardNo=${inquiry.boardNo}">${inquiry.attachFile}</a>
									</h5>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<a href="UpdateInquiryForm.do?boardNo=${inquiry.boardNo}"><button type="button" class="btn-grey-brd btn-base-xs">수정</button></a>
								<a href="deleteInquiry.do?boardNo=${inquiry.boardNo}"><button type="button" class="btn-grey-brd btn-base-xs">삭제</button></a>
							</div>
							<div class="col-md-1 col-md-offset-10">
								<button class="btn-base-bg btn-base-sm radius">목록</button>

							</div>
						</div>
						<input type="hidden" name="category" value="d2" /><br><br>
					</form>
					<!-- Comment Form v1 -->
				<c:import url="../comments/commentList.jsp?boardNo=${inquiry.boardNo}"></c:import>  
				
				</div>
				<!-- End Comment Form v1 -->
			</div>
		</div>
	</div>
</div>
<!--========== END PAGE CONTENT ==========-->