<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>

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