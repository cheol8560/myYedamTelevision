<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<script>
	$(function () {
		$("#DESC").click();
	})

</script>

<div class="page-title">
	<h3>포인트 관리</h3>
	<div class="page-breadcrumb">
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/getTranslatePointList.do">교환관리</a></li>
            <li><a href="${pageContext.request.contextPath}/adminCharge.do">충전관리</a></li>
            <li><a href="${pageContext.request.contextPath}/adminExchangeList.do">환전관리</a></li>
		</ol>
	</div>
</div>
<div id="main-wrapper">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-white">
				<div class="panel-heading clearfix">
					<h4 class="panel-title">환전 관리</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="exchangeTable" class="display table"
							style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th class="text-center" style="width: 100px;" id="DESC">번호</th>
									<th class="text-center" style="width: 100px;">요청날짜</th>
									<th class="text-center" style="width: 100px;">요청 회원</th>
									<th class="text-center" style="width: 100px;">환전 포인트</th>
									<th class="text-center" style="width: 100px;">수수료</th>
									<th class="text-center" style="width: 100px;">실수령 금액</th>
									<th class="text-center" style="width: 100px;">비고</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th class="text-center" style="width: 100px;">번호</th>
									<th class="text-center" style="width: 100px;">요청날짜</th>
									<th class="text-center" style="width: 100px;">요청 회원</th>
									<th class="text-center" style="width: 100px;">환전 포인트</th>
									<th class="text-center" style="width: 100px;">수수료</th>
									<th class="text-center" style="width: 100px;">실수령 금액</th>
									<th class="text-center" style="width: 100px;">비고</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${adminExchangeList}" var="exchange">
									<tr>
										<td class="text-center">${exchange.exchangeNo}</td>
										<td class="text-center"><fmt:formatDate pattern="yyyy년 MM월 dd일 HH:mm:ss"
												value="${exchange.requestDate}" /></td>
										<td class="text-center">${exchange.memberId}</td>
										<td class="text-center"><fmt:formatNumber value="${exchange.requestPoint}" groupingUsed="true"/></td>
										<td class="text-right"><fmt:formatNumber value="${exchange.commission}" groupingUsed="true"/>원</td>
										<td class="text-right"><fmt:formatNumber value="${exchange.realReceipt}" groupingUsed="true"/>원</td>
										<td class="text-center"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>



		</div>
	</div>
	<!-- Row -->
</div>
<!-- Main Wrapper -->

