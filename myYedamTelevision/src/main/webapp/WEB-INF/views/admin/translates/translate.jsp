<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
		<div class="page-title">
			<h3>포인트 관리</h3>
			<div class="page-breadcrumb">
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="#">선물 관리</a></li>
					<li><a href="#">충전 관리</a></li>
					<li><a href="#">환전 관리</a></li>
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
											<th style="width: 100px;">번호</th>
											<th style="width: 150px;">선물한 날짜</th>
											<th style="width: 100px;">보내는사람</th>
											<th style="width: 100px;">받는사람</th>
											<th style="width: 150px;">포인트</th>
											<th style="width: 150px;">-</th> 
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th style="width: 100px;">번호</th>
											<th style="width: 150px;">선물한 날짜</th>
											<th style="width: 100px;">보내는사람</th>
											<th style="width: 100px;">받는사람</th>
											<th style="width: 150px;">포인트</th>
											<th style="width: 150px;">-</th> 
										</tr>
									</tfoot>
									<tbody>
										<c:forEach var="list" items="${ translateList}">
										<tr>
											<td>${list.translateId }</td>
											<td>
											<fmt:formatDate pattern = "yyyy년 MM월 dd일 HH:mm:ss" value = "${list.translateDate }" />
											
											
											</td>
											<td>${list.sendMemberId }</td>
											<td>${list.receiveMemberId }</td>
											<td>${list.translatePoint }</td>
											
											<td><button type="button" onclick="get(${con.contentCode});">수정</button></td>
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
		
