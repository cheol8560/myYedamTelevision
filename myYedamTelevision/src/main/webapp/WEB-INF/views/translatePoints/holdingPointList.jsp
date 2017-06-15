<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<!--========== BREADCRUMBS V5 ==========-->
		<section class="breadcrumbs-v5 breadcrumbs-v5-bg-img-v-2 bg-position-center-center">
			<div class="container">
				<div class="margin-b-30">
					<h2 class="breadcrumbs-v5-title margin-b-10">보유중인 기쁨</h2>
					<span class="breadcrumbs-v5-subtitle">
						선물 받은 기쁨 내역 확인 및 환전 신청은 [선물받은 기쁨]에 확인 하실 수 있습니다.
					</span>
				</div>
			</div>
		</section>
		<!--========== END BREADCRUMBS V5 ==========-->

		<!--========== PAGE CONTENT ==========-->

		<!-- Counters v2 -->
		<div class="bg-color-sky-light">
			<div class="content-md container">
				<div class="row">
					<div class="col-md-3 col-sm-6 md-margin-b-30">
						<!-- Counters v2 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-layers"></i>
							<figure class="counter color-base counters-v2-no">${login.point}</figure>
							<h4 class="counters-v2-title">보유중인 기쁨</h4>
							<span class="counters-v2-subtitle">Great Performance</span>
						</div>
						<!-- End Counters v2 -->
					</div>
					<div class="col-md-3 col-sm-6 md-margin-b-30">
						<!-- Counters v2 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-trophy"></i>
							<figure class="counter color-base counters-v2-no">${total[0].receivePoint}</figure>
							<h4 class="counters-v2-title">선물받은 기쁨</h4>
							<span class="counters-v2-subtitle">Excellence</span>
						</div>
						<!-- End Counters v2 -->
					</div>
					<div class="col-md-3 col-sm-6 sm-margin-b-30">
						<!-- Counters v2 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-happy"></i>
							<figure class="counter color-base counters-v2-no">${total[0].sendPoint}</figure>
							<h4 class="counters-v2-title">선물한 기쁨</h4>
							<span class="counters-v2-subtitle">More enthusiasm</span>
						</div>
						<!-- End Counters v2 -->
					</div>
					<div class="col-md-3 col-sm-6">
						<!-- Counters v2 -->
						<div class="counters-v2 bg-color-white">
							<i class="counters-v2-icon icon-tools"></i>
							<figure class="counter color-base counters-v2-no">${total[0].totalPoint}</figure>
							<h4 class="counters-v2-title">충전한 기쁨</h4>
							<span class="counters-v2-subtitle">Customizability</span>
						</div>
						<!-- End Counters v2 -->
					</div>
				</div>
				<!--// end row -->
			</div>
		</div>
		<!-- End Counters v2 -->

		<!-- Theme Portfolio -->
		<section class="full-width-container"
			style="width: 1100px; margin: auto;">
			<!-- Heading v1 -->
			<div class="heading-v1 text-center margin-t-60 margin-b-60">
				<h2 class="heading-v1-title">기쁨 충전 내역</h2>
				<p class="heading-v1-text">
					<select>
						<option selected="selected">선택
						<option value="2017">2017
					</select>년 
					<select>
						<option selected="selected">선택
						<option value="01">01
						<option value="02">02
						<option value="03">03
						<option value="04">04
						<option value="05">05
						<option value="06">06
						<option value="07">07
						<option value="08">08
						<option value="09">09
						<option value="10">10
						<option value="11">11
						<option value="12">12
					</select>월
				</p>

			</div>
			<!-- End Heading v1 -->

			<div class="table-wrap">
				<div class="table-wrap-body">
					<div class="table-responsive">
						<!-- Table Striped -->
						<table class="table">
							<thead>
								<tr>
									<th>구매일</th>
									<th>충전개수</th>
									<th>결제수단</th>
									<th>결제금액</th>
									<th>비고</th>
								</tr>
							</thead>
							<tbody>
			<!-- 여기 -->		<c:forEach items="${translateList}" var="translates">
										<tr>
											<td>${translates.translateId}</td>
											<td>${translates.translatePoint}</td>
											<td>${translates.sendMemberId}</td>
											<td>${translates.receiveMemberId}</td>
											<td>${translates.translateDate}</td>
										</tr>
									</c:forEach>
							</tbody>
						</table>
						<!-- End Table Striped -->
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<!-- Paginations v2 -->
					<!-- Delete ".previous and .next" classes "li" to use the default version of arrows sticking with the numbers -->
					<div class="paginations-v2 text-center">
						<ul class="paginations-v2-list">
							<li class="previous">
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">Prev</span>
								</a>
							</li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li class="active"><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li class="next">
								<a href="#" aria-label="Next"> 
									<span aria-hidden="true">Next</span>
								</a>
							</li>
						</ul>
					</div>
					<!-- End Paginations v2 -->
				</div>
			</div>
		</section>
		<!-- End Theme Portfolio -->

		<!-- Testimonials v3 -->
		<div class="bg-color-sky-light">
			<div class="content-md container-sm">
				<!-- Heading v1 -->
				<div class="heading-v1 text-center margin-b-80">
					<h2 class="heading-v1-title">선물한 기쁨 내역</h2>
					<p class="heading-v1-text">
						<select>
							<option selected="selected">선택
							<option value="2017">2017
						</select>년 
						<select>
							<option selected="selected">선택
							<option value="01">01
							<option value="02">02
							<option value="03">03
							<option value="04">04
							<option value="05">05
							<option value="06">06
							<option value="07">07
							<option value="08">08
							<option value="09">09
							<option value="10">10
							<option value="11">11
							<option value="12">12
						</select>월
					</p>
				</div>
				<!-- End Heading v1 -->

				<div class="row margin-b-60">
					<div class="table-wrap">
						<div class="table-wrap-body">
							<div class="table-responsive">
								<!-- Table Striped -->
								<table class="table">
									<thead>
										<tr>
											<th>선물한 기쁨 내역</th>
											<th>선물한 회원</th>
											<th>선물한 일자</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Item #1</td>
											<td>Apple</td>
											<td>100GB</td>

										</tr>
										<tr>
											<td>Item #1</td>
											<td>Apple</td>
											<td>100GB</td>

										</tr>
										<tr>
											<td>Item #1</td>
											<td>Apple</td>
											<td>100GB</td>

										</tr>
										<tr>
											<td>Item #1</td>
											<td>Apple</td>
											<td>100GB</td>

										</tr>
										<tr>
											<td>Item #1</td>
											<td>Apple</td>
											<td>100GB</td>

										</tr>
									</tbody>
								</table>
								<!-- End Table Striped -->
							</div>
						</div>
					</div>

				</div>
				<!--// end row -->
				
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<!-- Paginations v2 -->
						<!-- Delete ".previous and .next" classes "li" to use the default version of arrows sticking with the numbers -->
						<div class="paginations-v2 text-center">
							<ul class="paginations-v2-list">
								<li class="previous">
									<a href="#" aria-label="Previous">
										<span aria-hidden="true">Prev</span>
									</a>
								</li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li class="active"><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li class="next">
									<a href="#" aria-label="Next"> 
										<span aria-hidden="true">Next</span>
									</a>
								</li>
							</ul>
						</div>
						<!-- End Paginations v2 -->
					</div>
				</div>
				<!-- Button -->
				<div class="overflow-h">
					<div class="center-block wow fadeInUp" data-wow-duration=".2" data-wow-delay=".3s">
						<a class="btn-white-bg btn-base-md radius-3" href="shortcodes_testimonials.html">Testimonials</a>
					</div>
				</div>
				<!-- Button -->
			</div>
		</div>
		<!-- End Testimonials v3 -->
