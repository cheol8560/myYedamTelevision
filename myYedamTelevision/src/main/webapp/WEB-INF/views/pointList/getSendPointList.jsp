<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<script>
function fn_egov_link_page(pageNo){
document.listForm.pageIndex.value = pageNo;
document.listForm.action = "<c:url value='/getSendPointList.do'/>";
document.listForm.submit();
}

//목록리스트 이동 
$(function(){
	console.log('${translatePointVO.pageIndex}');
	if('${translatePointVO.searchUseYn}' != '' ){
		location.href='#send'	
	}
		 
})
</script>
<!--========== 대문 ==========-->
		<section class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v-2 bg-position-center-center">
			<div class="container">
				<div class="margin-b-30">
					<h2 class="breadcrumbs-v5-title margin-b-10">나누는 기쁨</h2>
					<span class="breadcrumbs-v5-subtitle">
						나누었던 기쁨들을 확인 할 수 있습니다.
					</span>
				</div>
			</div>
		</section>
<!--========== 대문 끝 ==========-->
<!-- 현재 나눠준 기쁨 조회 -->
		<div class="bg-color-sky-light" >
			<div class="content-md container">
				<div class="row">
					<div class="col-md-3 col-sm-6 md-margin-b-30">
						<!-- 총 나눠준 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-layers"></i>
							<figure class="counter color-base counters-v2-no">${point.totalSendPoint}</figure>
							<h4 class="counters-v2-title">총 나눠준 포인트</h4>
							<span class="counters-v2-subtitle">Great Performance</span>
						</div>
						<!-- 총 나눠준 포인트 끝 -->
					</div>
					<div class="col-md-3 col-sm-6 md-margin-b-30">
						<!-- 이번달 나눠준 포인트 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-trophy"></i>
							<figure class="counter color-base counters-v2-no">${point.monthSendPoint}</figure>
							<h4 class="counters-v2-title">이번달 나눠준 포인트</h4>
							<span class="counters-v2-subtitle">Excellence</span>
						</div>
						<!-- 이번달 나눠준 포인트 끝 -->
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
		<!-- 현재 나눠준 기쁨 조회 끝 -->
		
		<!--========== PAGE CONTENT ==========-->

<form name ="listForm" action="getSendPointList.do">
			<input type="hidden" name="pageIndex" value="${(empty translatePointVO.pageIndex)? 1 : translatePointVO.pageIndex }" />
			<input type="hidden" name="searchUseYn" value="send" />
		<div class="bg-color-sky-light" id="send">
			<div class="content-md container-sm">
				<!-- Heading v1 -->
				<div class="heading-v1 text-center margin-b-80" >
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
						$("[name='year']").val('${translatePointVO.year}');
						$("[name='month']").val('${translatePointVO.month}');
						</script>
					</p>
				</div>
				<!-- End Heading v1 -->
</div>
</div>

				<div class="row margin-b-60">
					<div class="table-wrap">
						<div class="table-wrap-body">
							<div class="table-responsive">
								<!-- Table Striped -->
								<!-- 선물한 리스트 시작 -->
								
								<table class="table">
									<thead>
										<tr>
											<th>선물한 일자</th>
											<th>선물한 기쁨 내역</th>
											<th>선물한 회원</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${presentList }" var="presentList">
										<tr>
											<td>${presentList.translateDate }</td>	
											<td>${presentList.translatePoint }</td>
											<td>${presentList.receiveMemberId }</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
								</div>
								<my:paging paginationInfo="${paginationInfo }"/>
								</div>
								<!-- End Table Striped -->
					</div>
					</div>
					</form>
				<!-- 선물한 리스트 끝 -->