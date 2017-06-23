<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<!--========== PAGE CONTENT ==========-->
		<!-- FAQ -->
		<div class="faq">
			<div class="container-xs">
				<h2 class="faq-title">1:1 문의하기</h2>
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
						<div class="bg-color-white padding-40 " style="width:1100px; margin: 20px auto;">
							<div class="border-bottom-1 margin-b-40">
								<!-- Heading v1 -->
								<div class="heading-v1 margin-b-30">
									<h2 class="heading-v1-title">도움을 통해 충분한 답변이 되지 못한 분들에게
										1:1문의를 통해 자세한 답변을 드리고 있습니다.</h2>
									<p class="heading-v1-text"></p>
								</div>
								<!-- end Heading v1 -->
							</div>

							<!-- Comment Form v1 -->
							<form id="comment-form" class="comment-form-v1"
								action="insertInquiry.do" method="post" enctype="multipart/form-data">
								<div class="row">
									 <div class="col-md-12 margin-b-30">
										<input type="text" class="form-control comment-form-v1-input"
											placeholder="아이디" name="memberId" value="${sessionScope.login.memberId}" readonly="readonly">
									</div> 
									<div class="col-md-12 margin-b-30">
										<input type="text" class="form-control comment-form-v1-input"
											placeholder="제목을 입력하세요. (50자까지 적으실수있습니다.)" name="boardTitle" maxlength="50">
									</div>

								</div>
								<!--// end row -->

								<div class="margin-b-30">
									<textarea class="form-control comment-form-v1-input" rows="5"
										placeholder="내용을 입력하세요." name="boardText" required></textarea>
								</div>
								<div class="col-md-12 margin-b-30">첨부파일</div>
								<div class="col-md-12 margin-b-30">
									<input type="file" class="form-control comment-form-v1-input"
										 name="uploadFile" >
								</div>

								<pre>1:1 문의 유의사항
1)접수 된 내용은 최초 접수 건부터 순차적으로 답변 해 드리고 있으며, 문의량이 급증하거나 확인이 필요한 문의의 경우 답변이 지연 될 수 있으니 양해 
부탁 드립니다.
2)이메일을 통한 통화시간 예약 문의 등 전화 상담 요청은 불가하오니 양해 부탁 드립니다.
3)불량이용자 신고 안내 사항
-증거자료가 첨부되어야 접수가 가능합니다.
-운영원칙의 위반 정도에 따라 경고부터 이용정지까지 처리 될 수 있으며, 음란물 및 운영원칙 위반 정도가 심할 경우 경고 없이 바로 이용정지 될 수 있습니다.
-타인을 비방하거나 고의적인 허위 신고의 경우 신고자 또한 제재를 받을 수 있습니다.
안내 사항
- 고객상담 업무를 처리하기 위해 최소한의 개인정보만을 수집하고 있습니다.
개인정보의 수집항목 및 이용목적
- 수집항목 : 아이디, 이메일
- 이용목적 : 고객상담을 위한 정보 확보
개인정보의 보유 및 이용기간
- 고객 응대 후 지체 없이 파기
※ 고객센터로 문의/신고 시 회원님께서 추가로 입력하시는 개인정보가 있을 수 있습니다.
                            
                            </pre>
                            <input type="hidden" name="category" value="d2" />

								<button type="submit" class="btn-base-bg btn-base-sm radius-3 col-md-offset-11 margin-t-10">확인</button>
							</form>
							<!-- Comment Form v1 -->
						</div>
						<!-- End Comment Form v1 -->
					</div>
				</div>
			</div>
		</div>
		<!--========== END PAGE CONTENT ==========-->
    