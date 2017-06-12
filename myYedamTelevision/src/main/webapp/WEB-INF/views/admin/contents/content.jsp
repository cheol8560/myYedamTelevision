<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	//등록
	function add() {
		if (confirm("등록할까요?")) {
			document.getElementById('add-row-form').submit();
		}
	}
</script>
<div class="page-title">
	<h3>카테고리 관리</h3>
</div>
<div id="main-wrapper">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h4 class="panel-title">카테고리 관리</h4>
				</div>
				<div class="panel-body">
					<button type="button" class="btn btn-default" onclick="$('#contentAdd').modal({backdrop:false})" >컨텐츠 추가</button>

					<!-- Modal -->
					<form id="add-row-form" action="${pageContext.request.contextPath}/insertContent.do">
						<div class="modal fade" id="contentAdd" role="dialog" tabindex="-1">
							
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title" id="myModalLabel">컨텐츠 관리</h4>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<input type="text" id="name-input" class="form-control"
												placeholder="컨텐츠 명" name="contentName">
										</div>
										<div class="form-group">
											<input type="text" id="position-input" class="form-control"
												placeholder="컨텐츠 아이콘" name="contentIcon">
										</div>
										<div class="form-group">
											<input type="text" id="age-input" class="form-control"
												placeholder="컨텐츠 소개" name="contentIntro">
										</div>
									</div>

									<div class="modal-footer">
										<button type="button" class="btn btn-default" onclick="win()">아이콘추가</button>
										<button type="submit" class="btn btn-default" data-dismiss="modal" onclick="add();">저장</button>
										<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- 모달창 끝 -->

					<div class="table-responsive">
						<table id="contentTable" class="display table"
							style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th>컨텐츠 코드</th>
									<th>컨텐츠 명</th>
									<th>컨텐츠 아이콘</th>
									<th>컨텐츠 소개</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="content" items="${ contentList}">
									<tr>
										<td>${content.contentCode }</td>
										<td>${content.contentName }</td>
										<td>${content.contentIcon }</td>
										<td>${content.contentIntro }</td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>컨텐츠 코드</th>
									<th>컨텐츠 명</th>
									<th>컨텐츠 아이콘</th>
									<th>컨텐츠 소개</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Row -->
</div>
<!-- Main Wrapper -->

