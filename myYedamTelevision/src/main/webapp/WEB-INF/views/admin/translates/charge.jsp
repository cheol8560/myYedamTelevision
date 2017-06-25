<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
$(function() {
	//페이지 로딩후에 목록 조회
	$.getJSON("./adminCharge.do", function(data){
		
	})

	/* $("#btnInsert").click(function(){
		var param = $("#frm").serialize();
		$.getJSON("./approveAdmin.do" ,param , function(data){
			$("#btnInsert").hide();
		})
	}); */
});

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
							<h4 class="panel-title">충전 관리</h4>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table id="chargeTable" class="display table"
									style="width: 100%; cellspacing: 0;">
									<thead>
										<tr>
											<th class="text-center" style="width: 100px;" id="DESC">번호</th>
											<th class="text-center" style="width: 100px;">충전일자</th>
											<th class="text-center" style="width: 100px;">충전한 회원</th>
											<th class="text-center" style="width: 100px;">충전금액</th>
											<th class="text-center" style="width: 100px;">충전포인트</th>
											<th class="text-center" style="width: 100px;">결제수단</th>
											<th class="text-center" style="width: 100px;">승인상태</th>
											<th class="text-center" style="width: 100px;">비고</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th class="text-center">번호</th>
											<th class="text-center">충전일자</th>
											<th class="text-center">충전한 회원</th>
											<th class="text-center">충전금액</th>
											<th class="text-center">충전포인트</th>
											<th class="text-center">결제수단</th>
											<th class="text-center">승인상태</th>
											<th class="text-center">비고</th>

										</tr>
									</tfoot>
							<tbody>
								<!-- 여기 -->
								
								<c:forEach items="${adminchargeList}" var="adminchargeList">
									<tr>
										<td class="text-center">${adminchargeList.chargeNo}</td>
										<td class="text-center"><fmt:formatDate value="${adminchargeList.approveDate}" pattern="yyyy-MM-dd"/></td>
										<td class="text-center">${adminchargeList.memberId}</td>
										<td class="text-right"><fmt:formatNumber value="${adminchargeList.chargeMoney}" groupingUsed="true"/>원</td>
										<td class="text-center"><fmt:formatNumber value="${adminchargeList.chargePoint}" groupingUsed="true"/>기쁨</td>
										<td class="text-center">${adminchargeList.paymentWayName}</td>
										<td class="text-center">${adminchargeList.approveStatusName}</td>
										<td class="text-center">
										<c:if test="${adminchargeList.approveStatus== 'b1'}">
											<a href="./approveAdmin.do?chargeNo=${adminchargeList.chargeNo}&memberId=${adminchargeList.memberId}&chargePoint=${adminchargeList.chargePoint}">
												<input type="button" id="btnInsert" value="승인">
											</a>
										</c:if>
										</td>
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