<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<script>
function fn_egov_link_page(pageNo){
document.listForm.pageIndex.value = pageNo;
document.listForm.action = "<c:url value='/getExchangeList.do'/>";
document.listForm.submit();
}
</script>
<!--========== 대문 ==========-->
		<section class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v-2 bg-position-center-center">
			<div class="container">
				<div class="margin-b-30">
					<h2 class="breadcrumbs-v5-title margin-b-10">환전</h2>
					<span class="breadcrumbs-v5-subtitle">
						환전을 신청하고, 환전한 포인트를 확인 할 수 있습니다.
					</span>
				</div>
			</div>
		</section>
		<!--========== 대문 끝 ==========-->
<!-- 현재 환전 조회 -->
		<div class="bg-color-sky-light" >
			<div class="content-md container">
				<div class="row">
					<div class="col-md-3 col-sm-6 md-margin-b-30">
						<!-- 총 환전 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-layers"></i>
							<figure class="counter color-base counters-v2-no">${point.totalExchangePoint}</figure>
							<h4 class="counters-v2-title">총 충전 포인트</h4>
							<span class="counters-v2-subtitle">Great Performance</span>
						</div>
						<!-- 총 환전 포인트 끝 -->
					</div>
					<div class="col-md-3 col-sm-6 md-margin-b-30">
						<!-- 이번달 환전 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-trophy"></i>
							<figure class="counter color-base counters-v2-no">${point.monthExchangePoint}</figure>
							<h4 class="counters-v2-title">이번달 환전 포인트</h4>
							<span class="counters-v2-subtitle">Excellence</span>
						</div>
						<!-- 이번달 환전 포인트 끝 -->
					</div>
					<div class="col-md-3 col-sm-6 sm-margin-b-30">
						<!-- 현재 보유 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-happy"></i>
							<figure class="counter color-base counters-v2-no">${point.nowPoint}</figure>
							<h4 class="counters-v2-title">현재 보유 포인트</h4>
							<span class="counters-v2-subtitle">More enthusiasm</span>
						</div>
						<!-- 현재 보유 포인트 끝 -->
					</div>
				</div>
			</div>
		</div>
		<!-- 현재 환전 조회 끝 -->
		
		
		<!-- 환전신청 버튼 시작-->
		
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
		<!-- 환전신청 끝 -->
		
		<!-- 환전 리스트 -->
<section class="full-width-container"
	style="width: 1100px; margin: auto;">
	<!-- Heading v1 -->
<form name ="listForm" action="getSendPointList.do">
			<input type="hidden" name="pageIndex" value="${(empty exchangeVO.pageIndex)? 1 : exchangeVO.pageIndex }"/>	
	<div class="heading-v1 text-center margin-t-60 margin-b-60">
		<h2 class="heading-v1-title">환전리스트</h2>
		<div class="heading-v1 text-center margin-b-80">
					<h2 class="heading-v1-title">선물한 기쁨 내역</h2>
					<p class="heading-v1-text">
						<select  name="year">
							<option selected="selected" value="">선택
							<option value="2017">2017
						</select>년 
						<select name="month">
							<option selected="selected" value="">선택
							<option value="01">01
							<option value="02">02
							<option value="03">03
							<option value="04">04
							<option value="05">05
							<option value="06">06
							<option value="07">07
							<option value="08">08
							<option value="09">09
							<option value="10">10
							<option value="11">11
							<option value="12">12
						</select>월
						<button type="submit">검색</button>
						<script>
						$("[name='year']").val('${chargeVO.year}');
						$("[name='month']").val('${chargeVO.month}');
						</script>
					</p>
				</div>
	</div>
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
						<c:forEach items="${exchangeList}" var="exchangeList">
							<tr>
								<td><fmt:formatDate pattern = "yyyy년 MM월 dd일 HH:mm:ss" value = "${exchangeList.requestDate}"/></td>
								<td>${exchangeList.requestPoint}</td>
								<td>${exchangeList.commission}원</td>
								<td>${exchangeList.realReceipt}원</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- End Table Striped -->
			</div>
		</div>
	</div>
	</form>
	<my:paging paginationInfo="${paginationInfo }" />
	<!-- 환전리스트 끝 -->
</section>