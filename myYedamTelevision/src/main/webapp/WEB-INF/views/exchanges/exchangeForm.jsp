<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	$(function() {

		$("#btn")
				.click(
						function() {
							var a = $("#insertEx").serialize();
							$
									.ajax({
										url : "insertExchange.do",
										method : "post",
										type : "json",
										data : a,
										success : function(data) {

											if (data.code == "true") {
												$("#requestMoney")
														.html(
																data.result.requestPoint * 100);
												$("#commission").html(
														data.result.commission);
												$("#realReceipt")
														.html(
																data.result.realReceipt);
												$("#totalExchange")
														.html(
																data.result.totalRequest);
												alert("환전되었습니다.!");
											} else {
												alert(data.error);
											}
										}
									});

						})

	});
</script>
<!--========== PROMO BLOCK V11 ==========-->
<section class="promo-block-v11 fullheight"
	style="background: url(assets/img/1920x1080/exchange3.jpg) no-repeat;">
	<div class="container vertical-center-aligned">
		<div class="margin-b-40">
			<h2 class="promo-block-v11-title wow fadeInUp" data-wow-duration=".2"
				data-wow-delay=".1s">기쁨 환전</h2>
			<p class="promo-block-v11-subtitle wow fadeInUp"
				data-wow-duration=".2" data-wow-delay=".2s">자신이 보유한 기쁨포인트를
				환전해보세요. 환전포인트는 1000POINT 이상부터 가능합니다.</p>
			<hr>
		</div>

		<form id="insertEx">
			<div class="margin-b-30">
				<!-- Button White Toggle -->
				<div class="btn-group btn-white-toggle margin-r-10 margin-b-10">
					<div class="btn-group btn-white-toggle margin-r-10 margin-b-10">
						<select class="btn-white-bg dropdown-toggle radius-3"
							name="inBank">
							<option selected="selected" value="">은행선택</option>
							<option value="a1">대구은행</option>
							<option value="a2">농협</option>
							<option value="a3">신한은행</option>
							<option value="a4">국민은행</option>
							<option value="a5">하나은행</option>
							<option value="a6">기업은행</option>
						</select> <input class="form-control"
							style="width: 240px; display: inline;" type="text"
							autocomplete="on" placeholder="계좌 번호" name="inAccount"> <i
							class="icon-box-item "
							style="width: 20px; display: inline; color: #4ed7e8; font-size: 24px;"></i><br>
						<br> <input class="form-control" type="text"
							style="width: 390px;" autocomplete="on" placeholder="환전할 기쁨"
							name="inRequestPoint" /><br>

					</div>
					<br>
					<!-- End Button White Toggle -->
					<button type="button" id="btn"
						class="btn-base-bg btn-base-md radius-3 margin-b-10">
						<i class="fa fa-gratipay margin-r-5"></i>환전
					</button>
				</div>
			</div>
		</form>
</section>
<!--========== END PROMO BLOCK V11 ==========-->

<!-- Counters v3 -->
<div class="bg-color-sky-light">
	<div class="content-md container">
		<div class="row">
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- Counters v3 -->
				<div class="counters-v3">
					<i class="counters-v3-icon radius-circle fa fa-money"></i>
					<figure class="counter counters-v3-number" id="requestMoney"></figure>
					<h4 class="counters-v3-title">환전될 금액</h4>
				</div>
				<!-- End Counters v3 -->
			</div>
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- Counters v3 -->
				<div class="counters-v3">
					<i class="counters-v3-icon radius-circle fa fa-cc-paypal"></i>
					<figure class="counter counters-v3-number" id="commission"></figure>
					<h4 class="counters-v3-title">수수료</h4>
				</div>
				<!-- End Counters v3 -->
			</div>
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- Counters v3 -->
				<div class="counters-v3">
					<i class="counters-v3-icon radius-circle fa fa-krw"></i>
					<figure class="counter counters-v3-number" id="realReceipt"></figure>
					<h4 class="counters-v3-title">실수령 금액</h4>
				</div>
				<!-- End Counters v3 -->
			</div>
			<div class="col-md-3 col-sm-6">
				<!-- Counters v3 -->
				<div class="counters-v3">
					<i class="counters-v3-icon radius-circle fa fa-line-chart"></i>
					<figure class="counter counters-v3-number" id="totalExchange"></figure>
					<h4 class="counters-v3-title">누적 환전수</h4>
				</div>
				<!-- End Counters v3 -->
			</div>
		</div>
		<!--// end row -->
	</div>
</div>
<!-- End Counters v3 -->

<!--========== PAGE CONTENT ==========-->
<!-- Services v6 -->
<div class="content-md container">
	<!-- Heading v1 -->
	<div class="heading-v1 text-center margin-b-80">
		<h2 class="heading-v1-title">위의 메뉴에 대해 잘 모르시겠다구요?</h2>
		<p class="heading-v1-text">환전될 금액? 수수료? 실수령 금액? 누적 환전수? 어려워 하실 필요
			없습니다. 자세하게 설명해 드립니다.</p>
	</div>
	<!-- End Heading v1 -->

	<div class="row">
		<div class="col-md-3 col-sm-6 md-margin-b-30">
			<!-- Services v6 -->
			<div type="button" class="services-v6 services-v6-bg-img-one"
				data-toggle="modal" data-target="#myModal1"
				style="background: url(assets/img/1920x1080/exchange1.png) no-repeat;">
				<i class="services-v6-icon radius-circle fa fa-money"></i>
				<h3 class="services-v6-title">환전될 금액</h3>
			</div>
			<!-- End Services v6 -->
			<!-- Modal -->
			<div class="modal fade" id="myModal1" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">환전될 금액</h4>
						</div>
						<div class="modal-body">
							<p>환전될 금액이란?<br>
							고객님께서 보유하신 기쁨포인트 내에서 원하시는 환전포인트 만큼 포인트가<br> 
							차감되어 고객님의 계좌로 현금이 지급됩니다.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>

		</div>


		<div class="col-md-3 col-sm-6 md-margin-b-30">
			<!-- Services v6 -->
			<div type="button" class="services-v6 services-v6-bg-img-two"
				data-toggle="modal" data-target="#myModal2"
				style="background: url(assets/img/1920x1080/tax1.png) no-repeat;">
				<i class="services-v6-icon radius-circle fa fa-cc-paypal"></i>
				<h3 class="services-v6-title">수수료</h3>
			</div>
			<!-- End Services v6 -->
			<!-- Modal -->
			<div class="modal fade" id="myModal2" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">수수료</h4>
						</div>
						<div class="modal-body">
							<p>수수료란? <br>환전과정에서 고객님의 환전신청금액의 10%를 수수료가 발생하며 이는 모든 <br>이용자에게 해당됩니다. 이외 다른 수수료는 일절 발생하지 않습니다.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 col-sm-6 sm-margin-b-30">
			<!-- Services v6 -->
			<div type="button" class="services-v6 services-v6-bg-img-three"
				data-toggle="modal" data-target="#myModal3"
				style="background: url(assets/img/1920x1080/real.png) no-repeat;">
				<i class="services-v6-icon radius-circle fa fa-krw"></i>
				<h3 class="services-v6-title">실수령 금액</h3>
			</div>
			<!-- End Services v6 -->
			<!-- Modal -->
			<div class="modal fade" id="myModal3" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">실수령 금액</h4>
						</div>
						<div class="modal-body">
							<p>실수령 금액이란? <br>고객님께서 신청하신 환전금액에서 10%의 수수료를 제외한 고객님의 계좌로 <br>지급될 금액을 의미합니다.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 col-sm-6">
			<!-- Services v6 -->
			<div type="button" class="services-v6 services-v6-bg-img-four"
				data-toggle="modal" data-target="#myModal4"
				style="background: url(assets/img/1920x1080/accumulate.PNG) no-repeat;">
				<i class="services-v6-icon radius-circle fa fa-line-chart"></i>
				<h3 class="services-v6-title">누적 환전 포인트</h3>
			</div>
			<!-- End Services v6 -->
			<!-- Modal -->
			<div class="modal fade" id="myModal4" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">누적 환전 포인트</h4>
						</div>
						<div class="modal-body">
							<p>누적 환전 포인트란? <br>고객님께서 현재까지 이용하신 환전포인트입니다. 계정을 생성한후 부터 최근 <br>환정신청까지의 포인트 총 합을 의미합니다.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--// end row -->
</div>
<!-- End Services v6 -->

<!-- End Testimonials v1 -->
<!--========== END PAGE CONTENT ==========-->
