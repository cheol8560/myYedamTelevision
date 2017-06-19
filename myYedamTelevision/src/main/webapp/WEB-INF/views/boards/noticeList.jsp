<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>

<script>
/* pagination 페이지 링크 function */
function fn_egov_link_page(pageNo){
document.listForm.pageIndex.value = pageNo;
document.listForm.action = "<c:url value='/getNoticeList.do'/>";
document.listForm.submit();
}
</script>

<!--========== BREADCRUMBS V5 ==========-->
<section
	class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v--3 bg-position-fixed">
	<div class="container">
		<span class="breadcrumbs-v5-title">공지사항</span>
		<h2 class="breadcrumbs-v5-subtitle">My Yedam Television의 다양한 소식을
			전해 드립니다.</h2>
	</div>
</section>
<!--========== END BREADCRUMBS V5 ==========-->

<!-- BEGIN PAGE CONTENT -->
<div class="bg-color-sky-light">
	<div class="content-md container">
		<div class="row margin-b-30">
			<div class="col-md-12 md-margin-b-30">
				<!-- Table Wrap -->
				<div class="table-wrap">
					<div class="table-wrap-header">
						<h3 class="table-wrap-header-title">공지사항</h3>
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
							<table class="table" id="noticeListTable">
								<thead>
									<tr>
										<th style="width:50px">번호</th>
										<th style="width:300px">제목</th>
										<th style="width:100px">날짜</th>
										<th style="width:50px">조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${noticeList}" var="boards">
										<tr>
											<td>${boards.boardNo}</td>
											<td><a href="getNotice.do?boardNo=${boards.boardNo}">${boards.boardTitle}</a></td>
											<td>${boards.writeDate}</td>
											<td>${boards.viewCount}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							</form>
							
							<!-- End Table Striped -->
						</div>
					</div>
				</div>
				<!-- End Table Wrap -->
			</div>
		</div>
		<!--// end row -->

		<!--// end row -->

		<my:paging paginationInfo="${paginationInfo }" />
		
		<!--// end row -->
	</div>
</div>
<!--========== END PAGE CONTENT ==========-->
