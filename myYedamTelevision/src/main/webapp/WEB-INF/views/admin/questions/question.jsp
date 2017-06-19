<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>

		<div class="page-title">
			<h3>게시판 관리</h3>
			<div class="page-breadcrumb">
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="#">공지사항 관리</a></li>
					<li><a href="#">문의내역 관리</a></li>
				</ol>
			</div>
		</div>
		<div id="main-wrapper">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-white">
						<div class="panel-heading clearfix">
							<h4 class="panel-title">문의내역 관리</h4>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table id="questionTable" class="display table"
									style="width: 100%; cellspacing: 0;">
									<thead>
										<tr>
											<th style="width: 100px;">게시글번호</th>
											<th style="width: 400px;">제목</th>
											<th style="width: 100px;">작성자</th>
											<th style="width: 100px;">작성일자</th>
											<th style="width: 100px;">조회수</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>게시글번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일자</th>
											<th>조회수</th>

										</tr>
									</tfoot>
									<tbody>
									<c:forEach items="${ list}" var="list">
										<tr>
											<td>${list.boardNo }</td>
											<td><a href="getNotice.do?boardNo=${list.boardNo}">${list.boardTitle }</td>
											<td>${list.memberId }</td>
											<td>${list.writeDate }</td>
											<td>${list.viewCount }</td>
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
		