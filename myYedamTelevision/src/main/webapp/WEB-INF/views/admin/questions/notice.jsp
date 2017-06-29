<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
	$(function () {
		$("#DESC").click();
	})

</script>
<div class="page-title">
	<h3>공지사항 및 문의내역</h3>
	<div class="page-breadcrumb">
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/adminNoticeList.do">공지사항 관리</a></li>
			<li><a href="${pageContext.request.contextPath}/getQuestionListAll.do">문의내역 관리</a></li>
		</ol>
	</div>
</div>
<div id="main-wrapper">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-white">
				<div class="panel-heading clearfix">
					<h4 class="panel-title">공지사항 관리</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="noticeTable" class="display table"
							style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th class="text-center" style="width: 100px;" id="DESC">게시글번호</th>
									<th class="text-center" style="width: 400px;">제목</th>
									<th class="text-center" style="width: 100px;">작성자</th>
									<th class="text-center" style="width: 100px;">작성일자</th>
									<th class="text-center" style="width: 100px;">조회수</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th class="text-center">게시글번호</th>
									<th class="text-center">제목</th>
									<th class="text-center">작성자</th>
									<th class="text-center">작성일자</th>
									<th class="text-center">조회수</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${adminNoticeList}" var="boards">
									<tr>
										<td class="text-center">${boards.boardNo}</td>
										<td><a href="adminNotice.do?boardNo=${boards.boardNo}">${boards.boardTitle}</a></td>
										<td class="text-center">${boards.memberId}</td>
										<td class="text-center"><fmt:formatDate pattern="yyyy년 MM월 dd일 HH:mm:ss"
												value="${boards.writeDate}"/></td>
										<td class="text-center">${boards.viewCount}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<a href="${pageContext.request.contextPath}/insertNotice.do"><button type="button" class="btn btn-success col-md-offset-10 col-md-2">공지사항 등록</button></a>
		</div>
		
	</div>
	
	<!-- Row -->
</div>
<!-- Main Wrapper -->
