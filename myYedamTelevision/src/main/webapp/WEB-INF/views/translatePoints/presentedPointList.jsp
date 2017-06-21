<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>

<script>
/* pagination 페이지 링크 function */
function fn_egov_link_page(pageNo){
document.listForm.pageIndex.value = pageNo;
document.listForm.action = "<c:url value='/getPresentedPointList.do'/>";
document.listForm.submit();
}
</script>

<!--========== BREADCRUMBS V5 ==========-->
<section
	class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v-2 bg-position-center-center">
	<div class="container">
		<div class="margin-b-30">
			<h2 class="breadcrumbs-v5-title margin-b-10">선물받은 기쁨</h2>
		</div>
	</div>
</section>
<!--========== END BREADCRUMBS V5 ==========-->

<!--========== PAGE CONTENT ==========-->
<!-- Counters v2 -->
<div class="bg-color-sky-light">
	<div class="content-md container">
		<div class="row">
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- Counters v2 -->
				<div class="counters-v2 bg-color-white">
					<i class="counters-v2-icon icon-layers"></i>
					<figure class="counter color-base counters-v2-no">${accumulatePoint[0].point}</figure>
					<h4 class="counters-v2-title">보유중인 기쁨</h4>
			
				</div>
				<!-- End Counters v2 -->
			</div>
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- Counters v2 -->
				<div class="counters-v2 bg-color-white">
					<i class="counters-v2-icon icon-trophy"></i>
					<figure class="counter color-base counters-v2-no">${accumulatePoint[0].receivePoint}</figure>
					<h4 class="counters-v2-title">선물받은 기쁨</h4>
					
				</div>
				<!-- End Counters v2 -->
			</div>
			<div class="col-md-3 col-sm-6 sm-margin-b-30">
				<!-- Counters v2 -->
				<div class="counters-v2 bg-color-white">
					<i class="counters-v2-icon icon-happy"></i>
					<figure class="counter color-base counters-v2-no">${accumulatePoint[0].sendPoint}</figure>
					<h4 class="counters-v2-title">선물한 기쁨</h4>
				
				</div>
				<!-- End Counters v2 -->
			</div>
			<div class="col-md-3 col-sm-6">
				<!-- Counters v2 -->
				<div class="counters-v2 bg-color-white">
					<i class="counters-v2-icon icon-tools"></i>
					<figure class="counter color-base counters-v2-no">${accumulatePoint[0].accumulatePoint}</figure>
					<h4 class="counters-v2-title">환전한 기쁨</h4>
					
				</div>
				<!-- End Counters v2 -->
			</div>
		</div>
		<!--// end row -->
	</div>
</div>
<!-- End Counters v2 -->

<!-- Theme Portfolio -->
<section class="full-width-container"
	style="width: 1100px; margin: auto;">
	<!-- Heading v1 -->
	<div class="heading-v1 text-center margin-t-60 margin-b-60">
		<h2 class="heading-v1-title">선물받은 기쁨 내역</h2>
	</div>
	<!-- End Heading v1 -->

	<div class="table-wrap">
		<div class="table-wrap-body">
			<div class="table-responsive">
				<!-- Table Striped -->
				<form name ="listForm">
				<input type="hidden" name="pageIndex" />
				<table class="table">
					<thead>
						<tr>
							<th>선물받은 일자</th>
							<th>선물한 회원</th>
							<th>선물받은 개수</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${presentedPoint}" var="presentedPoint">
							<tr>
								<td><fmt:formatDate pattern = "yyyy년 MM월 dd일 HH:mm:ss" value = "${PresentedPointList.translateDate}"/></td>
								<td>${presentedPoint.sendMemberId}</td>
								<td>${presentedPoint.translatePoint}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</form>
				<!-- End Table Striped -->
			</div>
		</div>
	</div>
	<my:paging paginationInfo="${paginationInfo }" />
</section>
<!-- End Theme Portfolio -->

<!-- Testimonials v3 -->
<div class="bg-color-sky-light">
	<div class="content-md container-sm" style="text-align: center;">
		<!-- Heading v1 -->
		<div class="heading-v1 text-center margin-b-80">
			<h2 class="heading-v1-title">기쁨 환전</h2>
		</div>
		<!-- End Heading v1 -->

		<div class="row margin-b-60">
			<div class="table-wrap">
				<div class="table-wrap-body">
					<div class="table-responsive">
						<!-- Table Striped -->
						<table class="table">
							<thead>
								<tr>
									<th style="font-size: 2em; text-align: center;">
										${login.memberId} 님이 보유하신 기쁨은 ${login.point}개 입니다.</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>▶ 이미 환전한 기쁨 : ${accumulatePoint[0].accumulatePoint}</td>
								</tr>
								<tr>
									<td>환전 가능한 기쁨이 100개 이상이어야 환전이 가능합니다.</td>
								</tr>
								<tr>
									<td>계좌번호 인증후 환전이 가능합니다.</td>
								</tr>
							</tbody>
						</table>
						<!-- End Table Striped -->
					</div>
				</div>
			</div>
		</div>
		<!--// end row -->

		<!-- Button -->
		<div class="overflow-h">
			<div class="center-block wow fadeInUp" data-wow-duration=".2"
				data-wow-delay=".3s">
				<a class="btn-white-bg btn-base-md radius-3"
					href="insertExchange.do?exchange=${exchangeNo}">기쁨 환전</a>
			</div>
		</div>
		<!-- Button -->
	</div>
</div>
<!-- End Testimonials v3 -->

<!-- Theme Portfolio -->
<section class="full-width-container"
	style="width: 1100px; margin: auto;">
	<!-- Heading v1 -->
	<div class="heading-v1 text-center margin-t-60 margin-b-60">
		<h2 class="heading-v1-title">기쁨 환전 처리 결과</h2>
	</div>
	<!-- End Heading v1 -->


	<div class="table-wrap">
		<div class="table-wrap-body">
			<div class="table-responsive">
				<!-- Table Striped -->
				<table class="table">
					<thead>
						<tr>
							<th>환전 신청 일자</th>
							<th>환전 신청 기쁨 개수</th>
							<th>수수료</th>
							<th>실수령 금액</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${exchangeList}" var="exchange">
							<tr>
								<td><fmt:formatDate pattern = "yyyy년 MM월 dd일 HH:mm:ss" value = "${exchange.requestDate}"/></td>
								<td>${exchange.requestPoint}</td>
								<td>${exchange.commission}원</td>
								<td>${exchange.realReceipt}원</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- End Table Striped -->
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<!-- Paginations v2 -->
			<!-- Delete ".previous and .next" classes "li" to use the default version of arrows sticking with the numbers -->
			<div class="paginations-v2 text-center">
				<ul class="paginations-v2-list">
					<li class="previous"><a href="#" aria-label="Previous"> <span
							aria-hidden="true">Prev</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li class="active"><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li class="next"><a href="#" aria-label="Next"> <span
							aria-hidden="true">Next</span>
					</a></li>
				</ul>
			</div>
			<!-- End Paginations v2 -->
		</div>
	</div>
</section>