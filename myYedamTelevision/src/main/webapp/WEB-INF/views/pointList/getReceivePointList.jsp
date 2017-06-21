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
								<td><fmt:formatDate pattern = "yyyy년 MM월 dd일 HH:mm:ss" value = "${presentedPoint.translateDate}"/></td>
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