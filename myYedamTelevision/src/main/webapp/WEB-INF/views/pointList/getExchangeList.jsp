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

//목록리스트 이동 
$(function(){
	console.log('${exchangeVO.pageIndex}');
	if('${exchangeVO.searchUseYn}' != '' ){
		location.href='#exchange'	
	}
		 
})
</script>
<script>
window.onload = function(){
	 var startYear= 2015;
	 var intNum = 2; //해당 연도에서 +,- 개수
	 var  thisDate = new Date();
	 var currentYear = thisDate.getFullYear(); //현재년도
	 var selName = document.getElementById("year"); //option추가할 select명
	 
	 //option 태그를 생성해서 select에 넣기
	  for (var i = startYear; i <= currentYear ; i++) {
		  
	     var opt = document.createElement("option"); //option 태그 생성
	        opt.value = i;
	        opt.appendChild(document.createTextNode(i)); //option 태그에 텍스트 추가
	        selName.appendChild(opt); // select 태그에 추가
	  } selName.options['${param.year}'].selected = $("[name='year']").val('${exchangeVO.year}');
	}

</script>
<!--========== 대문 ==========-->
		<section class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v-2 bg-position-center-center" style="background: url(assets/img/1920x1080/exchange.jpg) no-repeat;">
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
					<div class="col-md-offset-1 col-md-3 col-sm-6 md-margin-b-40">
						<!-- 총 환전 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon fa fa-krw"></i>
							<figure class="counter color-base counters-v2-no">${point.totalExchangePoint}</figure>
							<h4 class="counters-v2-title">총 환전 포인트</h4>
						</div>
						<!-- 총 환전 포인트 끝 -->
					</div>
					<div class="col-md-3 col-sm-6 md-margin-b-40">
						<!-- 이번달 환전 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon fa fa-money"></i>
							<figure class="counter color-base counters-v2-no">${point.monthExchangePoint}</figure>
							<h4 class="counters-v2-title">이번달 환전 포인트</h4>
						</div>
						<!-- 이번달 환전 포인트 끝 -->
					</div>
					<div class="col-md-3 col-sm-6 sm-margin-b-40">
						<!-- 현재 보유 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon fa fa-heartbeat"></i>
							<figure class="counter color-base counters-v2-no">${point.nowPoint}</figure>
							<h4 class="counters-v2-title">현재 보유 포인트</h4>
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
			<h1 class="heading-v1-title">환전 신청</h1>
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
				<a class="btn-base-bg btn-base-md radius-3 margin-b-10"
					href="insertExchange.do?exchange=${exchangeNo}">환전 신청</a>
			</div>
		</div>
		<!-- Button -->
	</div>
</div>
		<!-- 환전신청 끝 -->
		
		<!-- 환전 리스트 -->
<section class="full-width-container" style="width: 1100px; margin: auto;" >
	<!-- Heading v1 -->
<form name ="listForm" action="getExchangeList.do">
			<input type="hidden" name="pageIndex" value="${(empty exchangeVO.pageIndex)? 1 : exchangeVO.pageIndex }"/>
			<input type="hidden" name="searchUseYn" value="exchange" />	
	<div class="heading-v1 text-center margin-t-60 margin-b-60" id="exchange">
		<div class="heading-v1 text-center margin-b-80">
					<h2 class="heading-v1-title">환전 내역</h2><br>
					<p class="heading-v1-text">
						<select id="year" onchange="changeYear(this.value);" name="year">
						<option selected="selected" value="">선택
 						</select>년 
						<select name="month">
							<option selected="selected" value="">선택
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>월
						<button type="submit" class="btn btn-default btn-rounded">검색</button>
						<script>
						$("[name='year']").val('${exchangeVO.year}');
						$("[name='month']").val('${exchangeVO.month}');
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
							<th class="text-center">환전 신청 일자</th>
							<th class="text-center">환전 신청 기쁨 개수</th>
							<th class="text-center">수수료</th>
							<th class="text-center">실수령 금액</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${exchangeList}" var="exchangeList">
							<tr>
								<td class="text-center"><fmt:formatDate pattern = "yyyy년 MM월 dd일 HH:mm:ss" value = "${exchangeList.requestDate}"/></td>
								<td class="text-center">${exchangeList.requestPoint}</td>
								<td class="text-right"><fmt:formatNumber value="${exchangeList.commission}" groupingUsed="true"/>원</td>
								<td class="text-right"><fmt:formatNumber value="${exchangeList.realReceipt}" groupingUsed="true"/>원</td>
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