<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(function(){
	$.get("${pageContext.request.contextPath}/sumInfo.do", function(data){
		
		$("#outSumMember").text(data.outSumMember);
		$("#outSumPoint").text(data.outSumPoint+" Point");
		$("#outCountBoard").text(data.outCountBoard);
		$("#outCountBroadcast").text(data.outCountBroadcast);
		
	},
	"json");
	
});

</script>
<div class="page-title">
	<h3>관리자 페이지</h3>
</div>
<div id="main-wrapper">
	<div class="row" style="padding-top: 50px;">
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p id="outSumMember">0</p>
						<span class="info-box-title">총 회원 수</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-users"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
								style="width: 100%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p id="outCountBroadcast"></p>
						<span class="info-box-title">현재 진행중인 방송수</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-eye"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
								style="width: 100%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p id="outSumPoint">
							P
						</p>
						<span class="info-box-title">오늘 충전된 기쁨</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-basket"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
								style="width: 100%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p id="outCountBoard">47,500</p>
						<span class="info-box-title">오늘의 1:1 문의 건수</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-envelope"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
								style="width: 100%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Row -->
	<div class="row">
		<div class="col-lg-2"></div>
		<!-- 현재 방송중인 회원 -->
		<div class="col-lg-4 col-md-6">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h4 class="panel-title">현재 방송중인 회원</h4>
					<div class="panel-control">
						<a href="javascript:void(0);" data-toggle="tooltip"
							data-placement="top" title="Reload" class="panel-reload"><i
							class="icon-reload"></i></a>
					</div>
				</div>
				<div class="panel-body">
					<div class="inbox-widget slimscroll">
					<c:forEach items="${adminOnBroadcast}" var="broadcast">	
						<a href="#" target="_blank">
							<div class="inbox-item">
								<p class="inbox-item-author">${broadcast.broadcastTitle}</p>
								<p class="inbox-item-text">${broadcast.nickName} (${broadcast.memberId})</p>
								<p class="inbox-item-date">${broadcast.startDate}</p>
							</div>
						</a>
					</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!-- 현재 방송중인 회원 끝  -->

		<!-- 오늘 문의 -->
		<div class="col-lg-4 col-md-6">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h4 class="panel-title">오늘의 문의</h4>
					<div class="panel-control">
						<a href="javascript:void(0);" data-toggle="tooltip"
							data-placement="top" title="Reload" class="panel-reload"><i
							class="icon-reload"></i></a>
					</div>
				</div>
				<div class="panel-body">
					<div class="inbox-widget slimscroll">
						<c:forEach items="${adminQuestion}" var="adminQuestion">
							<a href="adminQuestion.do?boardNo=${adminQuestion.boardNo}">
								<div class="inbox-item"> 
									<p class="inbox-item-author">${adminQuestion.boardTitle}</p>
									<p class="inbox-item-text">${adminQuestion.boardText}</p>
									<p class="inbox-item-date">${adminQuestion.writeDate}</p>
								</div>
							</a>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!-- 오늘의 문의 끝  -->

		
	</div>
</div>
<!-- Main Wrapper -->
