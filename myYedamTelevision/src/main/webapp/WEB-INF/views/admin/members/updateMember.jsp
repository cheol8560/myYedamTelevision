<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div class="page-title">
		<h3>회원관리</h3>
		<div class="page-breadcrumb">
			<ol class="breadcrumb">
			</ol>
		</div>
	</div>
	<div id="main-wrapper">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-white">
					<div class="panel-heading clearfix">
						<h4 class="panel-title">회원 관리</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">


							<form id="comment-form" class="comment-form-v1"
								action="updateMember.do" method="post">
								<div class="row">

									<div class="col-md-5">
										ID : <input type="text" class="form-control"
											name="memberId" value="${member.memberId}"
											readonly="readonly">
									</div>
									<div class="col-md-5">
										PASSWORD :  <input type="text" class="form-control"
											name="password" value="${member.password}">
									</div>
									<div class="col-md-5">
										POINT : <input type="text" class="form-control"
											name="point" value="${member.point}">
									</div>
									<div class="col-md-5">
										E-MAIL :  <input type="text" class="form-control"
											name="email" value="${member.email}">
									</div>

								</div>
								<!--// end row -->

								<div>
									<button type="submit"
										class="btn-base-bg btn-base-sm radius-3 col-md-offset-10">확인</button>
									<button class="btn-base-bg btn-base-sm radius-3 ">취소</button>
									<a href="./adminDeleteMember.do?memberId=${member.memberId}">
									<input type="button" value="삭제"></a>
								</div>
							</form>

						</div>
					</div>
				</div>



			</div>
		</div>
		<!-- Row -->
	</div>
	<!-- Main Wrapper -->