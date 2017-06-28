<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
/* pagination 페이지 링크 function */
function fn_egov_link_page(pageNo){
document.listForm.pageIndex.value = pageNo;
document.listForm.action = "<c:url value='/getInquiryList.do'/>";
document.listForm.submit();
}
</script>

<!--========== BREADCRUMBS V5 ==========-->
<section
	class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v-3 bg-position-fixed">
	<div class="container">
		<span class="breadcrumbs-v5-title">MY 문의내역</span>
		<h2 class="breadcrumbs-v5-subtitle">문의 주신 내용과 받아보신 답변을 확인하는
			공간입니다.</h2>
	</div>
</section>
<!--========== END BREADCRUMBS V5 ==========-->

<!-- BEGIN PAGE CONTENT -->
<div class="bg-color-sky-light">
	<div class="content-md container">
		<div class="row margin-b-30" style="width:1200px; margin:auto;">
			<div class="col-md-12 md-margin-b-30">
				<!-- Table Wrap -->
				<div class="table-wrap">
					<div class="table-wrap-header">
						<h3 class="table-wrap-header-title">My 문의 내역</h3>
						<ul class="list-inline table-wrap-header-tools ul-li-lr-0">
							<li class="table-wrap-header-tools-item theme-icons-wrap"><a
								href="javascript:void(0);"></a></li>
							<li class="table-wrap-header-tools-item theme-icons-wrap"><a
								href="javascript:void(0);"></a></li>
						</ul>
					</div>
					<div class="table-wrap-body">
						<div class="table-responsive">
							<!-- Table Striped -->
							<form name ="listForm">
							<input type="hidden" name="pageIndex" />
							<table class="table">
								<thead>
									<tr>
										<th class="text-center" style="width: 100px">문의일자</th>
										<th class="text-center" style="width: 400px">제목</th>
										<th class="text-center" style="width: 100px">답변여부</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${inquiryList}" var="boards">
										<tr>
											<td class="text-center" ><fmt:formatDate pattern="yyyy년 MM월 dd일 HH:mm:ss"
												value="${boards.writeDate}"/></td>
											<td class="text-center"><a href="getInquiry.do?boardNo=${boards.boardNo}">${boards.boardTitle}</a></td>
											<td class="text-center">${boards.answer}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							</form>
							<!-- End Table Striped -->
							<my:paging paginationInfo="${paginationInfo }" />
						</div>
					</div>
				</div>
				<!-- End Table Wrap -->
			</div>

		</div>
		<!--// end row -->
	</div>
</div>
<!--========== END PAGE CONTENT ==========-->
