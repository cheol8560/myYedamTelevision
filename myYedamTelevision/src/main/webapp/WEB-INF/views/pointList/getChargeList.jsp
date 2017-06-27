<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>

function fn_egov_link_page(pageNo){
document.listForm.pageIndex.value = pageNo;
document.listForm.action = "<c:url value='/getChargeList.do'/>";
document.listForm.submit();
}

//목록리스트 이동 
$(function(){
	console.log('${chargeVO.pageIndex}');
	if('${chargeVO.searchUseYn}' != '' ){
		location.href='#charge'	
	}
		 
})


</script>
<script>
window.onload = function(){
	 var startYear= 2015;
	 var intNum = 2; //해당 연도에서 +,- 개수
	 var  thisDate = new Date();
	 var currentYear = thisDate.getFullYear(); //현재년도
	 var selName = document.getElementById("nowYear"); //option추가할 select명
	 
	 //option 태그를 생성해서 select에 넣기
	  for (var i = startYear; i <= currentYear ; i++) {
		  
	     var opt = document.createElement("option"); //option 태그 생성
	        opt.value = i;
	        opt.appendChild(document.createTextNode(i)); //option 태그에 텍스트 추가
	        selName.appendChild(opt); // select 태그에 추가
	  } 
	}

</script>
		<!--========== BREADCRUMBS V5 ==========-->
    <section class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v7">
        <div class="container">
            <!-- Animated Headline v1 -->
            <div class="animated-headline-v1 color-white">
                <p class="animated-headline-v1-subtitle color-white">포인트 확인 & 충전 신청 & 충전 내역</p>
                <h2 class="animated-headline-title letters type color-white margin-b-40">
                    <span class="animated-headline-wrap waiting">
                        <b class="is-visible">포인트 관리</b>
                        <b>기쁨을 나누면 행복이 배가 됩니다.</b>
                        <b>모두에게 기쁨을 선물해보세요.</b>
                        <b>당신의 기쁨을 예담TV가 함께 합니다.</b>
                        <b>누구나 기쁨을 받을 수 있는 예담TV. 지금 시작하세요.</b>
                    </span>
                </h2>
                <p class="breadcrumbs-v5-subtitle">
                	참신하고 재미있는 방송을 진행하는 BJ에게 기쁨을 선물하세요.<br>
                	기쁨을 많이 선물 받는 BJ는 예담TV의 빛나는 스타가 됩니다. 기쁨을 모두와 나누어 보세요. 행복이 배가 됩니다.
                </p>
            </div>
            <!-- End Animated Headline v1 -->
        </div>
    </section>
    <!--========== END BREADCRUMBS V5 ==========-->
		<!-- 현재 충전 조회 -->
		<div class="bg-color-sky-light" >
			<div class="content-md container"> 
				<div class="row">
					<div class="col-md-offset-1 col-md-3 col-sm-6 md-margin-b-30">
						<!-- 총 충전 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-layers"></i>
							<figure class="counter color-base counters-v2-no"><fmt:formatNumber value="${point.totalChargePoint}" groupingUsed="true"/></figure>
							<h4 class="counters-v2-title">총 충전 포인트</h4>
						</div>
						<!-- 총 충전 포인트 끝 -->
					</div>
					<div class="col-md-3 col-sm-6 md-margin-b-30">
						<!-- 이번달 충전 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-trophy"></i>
							<figure class="counter color-base counters-v2-no"><fmt:formatNumber value="${point.monthChargePoint}" groupingUsed="true"/></figure>
							<h4 class="counters-v2-title">이번달 충전 포인트</h4>
						</div>
						<!-- 이번달 충전 포인트 끝 -->
					</div>
					<div class="col-md-3 col-sm-6 sm-margin-b-30">
						<!-- 현재 보유 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-happy"></i>
							<figure class="counter color-base counters-v2-no"><fmt:formatNumber value="${point.nowPoint}" groupingUsed="true"/></figure>
							<h4 class="counters-v2-title">현재 보유 포인트</h4>
						</div>
						<!-- 현재 보유 포인트 끝 -->
					</div>
				</div>
			</div>
		</div>
		<!-- 현재 충전 조회 끝 -->
		<!-- 충전 포인트 10 30 50 100 300 500  -->
		
		<div class="banner-img-v6">
        <div class="content-md container">
            <!-- Heading v1 -->
            <div class="heading-v1 heading-v1-black text-center margin-b-80">
                <h1 class="heading-v1-title">포인트 충전 신청</h1>
                <p class="heading-v1-text">원하는 금액의 기쁨(POINT)을 선택하여 충전하세요.<br/>
                기쁨 선물하기를 통하여 기쁨을 나누어 보세요. 기쁨은 나눌수록 배가 됩니다.</p>
            </div>
            <!-- End Heading v1 -->

            <div class="row space-row-5 margin-b-10">
                <div class="col-md-4 md-margin-b-10">
                    <!-- Services v4 -->
                    <div class="services-v4 radius-3 services-v4-equal-height">
                        <div class="center-content-hor-wrap-sm services-v4-body">
                            <div class="center-content-hor-align-sm services-v4-media">
                                <img class="services-v4-icon" src="assets/img/icons/01.png" alt="">
                            </div>
                            <div class="center-content-hor-align-sm services-v4-content">
                                <h3 class="services-v4-title">1000원 / 10기쁨</h3>
                                <p class="services-v4-text md-margin-b-20">클릭시 결제수단 선택창으로 <br>이동합니다.</p>
                                <span class="services-v4-learn">충전완료즉시 10기쁨이 충전 됩니다. </span>
                            </div>
                        </div>
                        <a class="services-v4-link" href="payment.do?chargePoint=10&chargeMoney=1000"></a>
                    </div>
                    <!-- End Services v4 -->
                </div>
                <div class="col-md-4 md-margin-b-10">
                    <!-- Services v4 -->
                    <div class="services-v4 radius-3 services-v4-equal-height">
                        <div class="center-content-hor-wrap-sm services-v4-body">
                            <div class="center-content-hor-align-sm services-v4-media">
                                <img class="services-v4-icon" src="assets/img/icons/01.png" alt="">
                            </div>
                            <div class="center-content-hor-align-sm services-v4-content">
                                <h3 class="services-v4-title">3000원 / 30기쁨</h3>
                                <p class="services-v4-text md-margin-b-20">클릭시 결제수단 선택창으로 <br>이동합니다.</p>
                                <span class="services-v4-learn">충전완료즉시 30기쁨이 충전됩니다.</span>
                            </div>
                        </div>
                        <a class="services-v4-link" href="payment.do?chargePoint=30&chargeMoney=3000"></a>
                    </div>
                    <!-- End Services v4 -->
                </div>
                <div class="col-md-4">
                    <!-- Services v4 -->
                    <div class="services-v4 radius-3 services-v4-equal-height">
                        <div class="center-content-hor-wrap-sm services-v4-body">
                            <div class="center-content-hor-align-sm services-v4-media">
                                <img class="services-v4-icon" src="assets/img/icons/02.png" alt="">
                            </div>
                            <div class="center-content-hor-align-sm services-v4-content">
                                <h3 class="services-v4-title">5000원 / 50기쁨</h3>
                                <p class="services-v4-text md-margin-b-20">클릭시 결제수단 선택창으로 <br>이동합니다.</p>
                                <span class="services-v4-learn">충전완료즉시 50기쁨이 충전됩니다.</span>
                            </div>
                        </div>
                        <a class="services-v4-link" href="payment.do?chargePoint=50&chargeMoney=5000"></a>
                    </div>
                    <!-- End Services v4 -->
                </div>
            </div>
            <!--// end row -->

            <div class="row space-row-5 margin-b-10">
                <div class="col-md-4 md-margin-b-10">
                    <!-- Services v4 -->
                    <div class="services-v4 radius-3 services-v4-equal-height">
                        <div class="center-content-hor-wrap-sm services-v4-body">
                            <div class="center-content-hor-align-sm services-v4-media">
                                <img class="services-v4-icon" src="assets/img/icons/02.png" alt="">
                            </div>
                            <div class="center-content-hor-align-sm services-v4-content">
                                <h3 class="services-v4-title">10,000원 / 100기쁨</h3>
                                <p class="services-v4-text md-margin-b-20">클릭시 결제수단 선택창으로 <br>이동합니다.</p>
                                <span class="services-v4-learn">충전완료즉시 100기쁨이 충전됩니다.</span>
                            </div>
                        </div>
                        <a class="services-v4-link" href="payment.do?chargePoint=100&chargeMoney=10000"></a>
                    </div>
                    <!-- End Services v4 -->
                </div>
                <div class="col-md-4 md-margin-b-10">
                    <!-- Services v4 -->
                    <div class="services-v4 radius-3 services-v4-equal-height">
                        <div class="center-content-hor-wrap-sm services-v4-body">
                            <div class="center-content-hor-align-sm services-v4-media">
                                <img class="services-v4-icon" src="assets/img/icons/03.png" alt="">
                            </div>
                            <div class="center-content-hor-align-sm services-v4-content">
                                <h3 class="services-v4-title">30,000원 / 300기쁨</h3>
                                <p class="services-v4-text md-margin-b-20">클릭시 결제수단 선택창으로 <br>이동합니다.</p>
                                <span class="services-v4-learn">충전완료즉시 300기쁨이 충전됩니다.</span>
                            </div>
                        </div>
                        <a class="services-v4-link" href="payment.do?chargePoint=300&chargeMoney=30000"></a>
                    </div>
                    <!-- End Services v4 -->
                </div>
                <div class="col-md-4">
                    <!-- Services v4 -->
                    <div class="services-v4 radius-3 services-v4-equal-height">
                        <div class="center-content-hor-wrap-sm services-v4-body">
                            <div class="center-content-hor-align-sm services-v4-media">
                                <img class="services-v4-icon" src="assets/img/icons/03.png" alt="">
                            </div>
                            <div class="center-content-hor-align-sm services-v4-content">
                                <h3 class="services-v4-title">50,000원 / 500기쁨</h3>
                                <p class="services-v4-text md-margin-b-20">클릭시 결제수단 선택창으로 <br>이동합니다.</p>
                                <span class="services-v4-learn">충전완료즉시 500기쁨이 충전됩니다.</span>
                            </div>
                        </div>
                        <a class="services-v4-link" href="payment.do?chargePoint=500&chargeMoney=50000"></a>
                    </div>
                    <!-- End Services v4 -->
                </div>
            </div>
            <!--// end row -->
        </div>
    </div>
    <!-- End Services v4 -->
		
		<!-- 충전 포인트 끝 -->
		<!-- 충전내역 시작 -->
<section class="full-width-container" style="width: 1100px; margin: auto;" id="charge"> <!-- Heading v1 -->
	<form name="listForm" action="getChargeList.do">
		<input type="hidden" name="pageIndex"	value="${(empty chargeVO.pageIndex)? 1 : chargeVO.pageIndex }" />
		<input type="hidden" name="searchUseYn" value="charge" /> 
		<div class="heading-v1 text-center margin-t-60 margin-b-60">
			<h2 class="heading-v1-title">기쁨 충전 내역</h2>
			<p class="heading-v1-text">
				<select id="nowYear" onchange="changeYear(this.value);" name="year">
						<option selected="selected" value="">선택
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
		<!-- 충전리스트 시작 -->
		<div class="table-wrap">
			<div class="table-wrap-body">
				<div class="table-responsive">
					<!-- Table Striped -->
						<table class="table">
							<thead>
								<tr>
									<th class="text-center">구매일</th>
									<th class="text-center">충전개수</th>
									<th class="text-center">결제수단</th>
									<th class="text-center">결제금액</th>
									<th class="text-center">비고</th>
								</tr>
							</thead>
						<tbody>
							<c:forEach items="${chargeList}" var="charge">
								<tr>
									<td class="text-center">${charge.requestDate}</td>
									<td class="text-center"><fmt:formatNumber value="${charge.chargePoint}" groupingUsed="true"/>기쁨</td>
									<td class="text-center">${charge.PAYMENT_WAY_NAME}</td>
									<td class="text-right"><fmt:formatNumber value="${charge.chargeMoney}" groupingUsed="true"/>원</td>
									<td class="text-center">${charge.chargeNo}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<my:paging paginationInfo="${paginationInfo }" />
					<!-- End Table Striped -->
				</div>
			</div>
		</div>
	</form>
</section>