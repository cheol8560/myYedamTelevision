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
							<h4 class="panel-title">선물 관리</h4>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table id="translateTable" class="display table"
									style="width: 100%; cellspacing: 0;">
									<thead>
										<tr>
											<th class="text-center" style="width: 100px;" id="DESC">번호</th>
											<th class="text-center" style="width: 150px;">선물한 날짜</th>
											<th class="text-center" style="width: 100px;">보내는사람</th>
											<th class="text-center" style="width: 100px;">받는사람</th>
											<th class="text-center" style="width: 150px;">포인트</th>
											<th class="text-center" style="width: 150px;">-</th> 
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th class="text-center" style="width: 100px;">번호</th>
											<th class="text-center" style="width: 150px;">선물한 날짜</th>
											<th class="text-center" style="width: 100px;">보내는사람</th>
											<th class="text-center" style="width: 100px;">받는사람</th>
											<th class="text-center" style="width: 150px;">포인트</th>
											<th class="text-center" style="width: 150px;">-</th> 
										</tr>
									</tfoot>
									<tbody>
										<c:forEach var="list" items="${ translateList}">
										<tr>
											<td class="text-center">${list.translateId }</td>
											<td class="text-center">
											<fmt:formatDate pattern = "yyyy년 MM월 dd일 HH:mm:ss" value = "${list.translateDate }" />
											</td>
											<td class="text-center">${list.sendMemberId }</td>
											<td class="text-center">${list.receiveMemberId }</td>
											<td class="text-center"><fmt:formatNumber value="${list.translatePoint }" groupingUsed="true"/></td>
											<td class="text-center">-</td>
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
		
