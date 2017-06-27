<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>

<script>
	/* pagination 페이지 링크 function */
	function fn_egov_link_page(pageNo) {
		document.listForm.pageIndex.value = pageNo;
		document.listForm.action = "<c:url value='/getReceivePointList.do'/>";
		document.listForm.submit();
	}

	//목록리스트 이동 
	$(function() {
		console.log('${translatePointVO.pageIndex}');
		if ('${translatePointVO.searchUseYn}' != '') {
			location.href = '#receive'
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
	  } selName.options['${param.year}'].selected = $("[name='year']").val('${translatePointVO.year}');
	}

</script>
<!--========== 대문 ==========-->
<section
	class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v-2 bg-position-center-center" style="background: url(assets/img/1920x1080/pre.jpg) no-repeat;">
	<div class="container">
		<div class="margin-b-30">
			<h2 class="breadcrumbs-v5-title margin-b-10">받은 기쁨</h2>
			<span class="breadcrumbs-v5-subtitle"> 받았던 기쁨들을 확인 할 수 있습니다. </span>
		</div>
	</div>
</section>
<!--========== 대문 끝 ==========-->
<!-- 현재 받은 기쁨 조회 -->
<div class="bg-color-sky-light">
	<div class="content-md container">
		<div class="row">
			<div class="col-md-offset-1 col-md-3 col-sm-6 md-margin-b-30">
				<!-- 총 받은 포인트 -->
				<div class="counters-v2 bg-color-white">
					<i class="counters-v2-icon fa fa-gift"></i>
					<figure class="counter color-base counters-v2-no">${point.totalReceivePoint}</figure>
					<h4 class="counters-v2-title">총 받은 포인트</h4>
				</div>
				<!-- 총 받은 포인트 끝 -->
			</div>
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- 이번달 받은 포인트 -->
				<div class="counters-v2 bg-color-white">
					<i class="counters-v2-icon fa fa-plug"></i>
					<figure class="counter color-base counters-v2-no">${point.monthReceivePoint}</figure>
					<h4 class="counters-v2-title">이번달 받은 포인트</h4>
				</div>
				<!-- 이번달 받은 포인트 끝 -->
			</div>
			<div class="col-md-3 col-sm-6 sm-margin-b-30">
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
<!-- 현재 나눠준 기쁨 조회 끝 -->
<!-- 받은 기쁨 리스트 -->
<section class="full-width-container"
	style="width: 1100px; margin: auto;">
	<!-- Heading v1 -->
	<form name="listForm">
		<br> 
		<input type="hidden" name="pageIndex" 	value="${(empty translatePointVO.pageIndex)? 1 : translatePointVO.pageIndex }" />
		<input type="hidden" name="searchUseYn" value="receive" />
		<div class="heading-v1 text-center margin-b-80" id="receive">
			<h2 class="heading-v1-title">선물받은 기쁨 내역</h2><br>
			<p class="heading-v1-text">
				<select id="year" onchange="changeYear(this.value);" name="year">
					<option selected="selected" value="">선택
				</select>년 <select name="month">
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
					$("[name='year']").val('${translatePointVO.year}');
					$("[name='month']").val('${translatePointVO.month}');
				</script>
			</p>
		</div>
		<!-- End Heading v1 -->

		<div class="table-wrap">
			<div class="table-wrap-body">
				<div class="table-responsive">
					<!-- Table Striped -->
					<table class="table">
						<thead>
							<tr>
								<th class="text-center">선물받은 일자</th>
								<th class="text-center">선물한 회원</th>
								<th class="text-center">선물받은 개수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${presentedPoint}" var="presentedPoint">
								<tr>
									<td class="text-center"><fmt:formatDate
											pattern="yyyy년 MM월 dd일 HH:mm:ss"
											value="${presentedPoint.translateDate}" /></td>
									<td class="text-center">${presentedPoint.sendMemberId}</td>
									<td class="text-center">${presentedPoint.translatePoint}</td>
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
</section>
<!-- 받은 기쁨 리스트 끝 -->