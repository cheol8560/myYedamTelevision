<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="page-title">
	<h3>관리자 페이지</h3>
</div>
<div id="main-wrapper">
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p class="counter">107,200</p>
						<span class="info-box-title">총 회원 수</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-users"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
								style="width: 40%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p class="counter">340,230</p>
						<span class="info-box-title">현재 개설된 방송수</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-eye"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
								style="width: 80%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p>
							$<span class="counter">653,000</span>
						</p>
						<span class="info-box-title">오늘 충전된 기쁨</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-basket"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel info-box panel-white">
				<div class="panel-body">
					<div class="info-box-stats">
						<p class="counter">47,500</p>
						<span class="info-box-title">오늘의 1:1 문의 건수</span>
					</div>
					<div class="info-box-icon">
						<i class="icon-envelope"></i>
					</div>
					<div class="info-box-progress">
						<div class="progress progress-xs progress-squared bs-n">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
								style="width: 50%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Row -->
	<div class="row">

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
						<a href="#">
							<div class="inbox-item">
								<p class="inbox-item-author">방송중인 회원명</p>
								<p class="inbox-item-text">방송중인 회원 소개</p>
								<p class="inbox-item-date">13:40 PM</p>
							</div>
						</a>
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

		<div class="col-lg-12 col-md-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h4 class="panel-title">Project Stats</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive project-stats">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Project</th>
									<th>Status</th>
									<th>Manager</th>
									<th>Progress</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">452</th>
									<td>Mailbox Template</td>
									<td><span class="label label-info">Pending</span></td>
									<td>David Green</td>
									<td>
										<div class="progress progress-sm">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">327</th>
									<td>Wordpress Theme</td>
									<td><span class="label label-primary">In Progress</span></td>
									<td>Sandra Smith</td>
									<td>
										<div class="progress progress-sm">
											<div class="progress-bar progress-bar-primary"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 60%"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">226</th>
									<td>Modern Admin Template</td>
									<td><span class="label label-success">Finished</span></td>
									<td>Chritopher Palmer</td>
									<td>
										<div class="progress progress-sm">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="100" aria-valuemin="0"
												aria-valuemax="100" style="width: 100%"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">178</th>
									<td>eCommerce template</td>
									<td><span class="label label-danger">Canceled</span></td>
									<td>Amily Lee</td>
									<td>
										<div class="progress progress-sm">
											<div class="progress-bar progress-bar-danger"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 20%"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">157</th>
									<td>Website PSD</td>
									<td><span class="label label-info">Testing</span></td>
									<td>Nick Doe</td>
									<td>
										<div class="progress progress-sm">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100" style="width: 50%"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">157</th>
									<td>Fronted Theme</td>
									<td><span class="label label-warning">Waiting</span></td>
									<td>David Green</td>
									<td>
										<div class="progress progress-sm">
											<div class="progress-bar progress-bar-warning"
												role="progressbar" aria-valuenow="70" aria-valuemin="0"
												aria-valuemax="100" style="width: 70%"></div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Main Wrapper -->
