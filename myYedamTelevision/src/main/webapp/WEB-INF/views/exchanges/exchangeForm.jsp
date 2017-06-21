<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	$(function(){
		
		$("#btn").click(function() {
			
			 if(${login.point} >= 100) { 
				var a = $("#insertEx").serialize();//{ "requestPoint": $("[name='requestPoint']").val()};
				$.ajax({ url: "insertExchange.do", 
					method: "post", 
					type: "json", 
					data: a, 
					success: function(data) { 
						$("#requestMoney").html(data.requestPoint*100);
						$("#commission").html(data.commission);
						$("#realReceipt").html(data.realReceipt);
						$("#totalExchange").html(data.totalRequest);
					} 
				});
			 } else {
				alert("보유하고 계신 포인트가 100포인트가 되지않아 환전을 이용하실수 없습니다.");
			} 
			
			
		})
	
		
	});
	</script>
<!--========== PROMO BLOCK V11 ==========-->
<section class="promo-block-v11 fullheight">
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
                    <select class="btn-white-bg dropdown-toggle radius-3" name="inBank">
                    	<option selected="selected" value="">은행선택</option>
                    	<option value="a1">대구은행</option>
                    	<option value="a2">농협</option>
                    	<option value="a3">신한은행</option>
                    	<option value="a4">국민은행</option>
                    	<option value="a5">하나은행</option>
                    	<option value="a6">기업은행</option>
                    </select>
                   <input
					class="form-control" style="width: 240px; display: inline;"
					type="text" autocomplete="on" placeholder="계좌 번호" name="inAccount">
				<i class="icon-box-item fa fa-check-circle-o"
					style="width: 20px; display: inline; color: #4ed7e8; font-size: 24px;"></i></input><br>
				<br> <input class="form-control" type="text"
					style="width: 325px;" autocomplete="on" placeholder="환전할 기쁨"
					name="inRequestPoint" /><br>

			</div>
			<br>
			<!-- End Button White Toggle -->
			<button type="button" id="btn" class="btn-base-bg btn-base-md radius-3 margin-b-10">
				<i class="fa fa-search margin-r-5"></i> 확인
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
					<i class="counters-v3-icon radius-circle icon-lightbulb"></i>
					<figure class="counter counters-v3-number" id="requestMoney"></figure>
					<h4 class="counters-v3-title">환전될 금액</h4>
				</div>
				<!-- End Counters v3 -->
			</div>
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- Counters v3 -->
				<div class="counters-v3">
					<i class="counters-v3-icon radius-circle icon-trophy"></i>
					<figure class="counter counters-v3-number" id="commission"></figure>
					<h4 class="counters-v3-title">수수료</h4>
				</div>
				<!-- End Counters v3 -->
			</div>
			<div class="col-md-3 col-sm-6 md-margin-b-30">
				<!-- Counters v3 -->
				<div class="counters-v3">
					<i class="counters-v3-icon radius-circle icon-happy"></i>
					<figure class="counter counters-v3-number" id="realReceipt"></figure>
					<h4 class="counters-v3-title">실수령 금액</h4>
				</div>
				<!-- End Counters v3 -->
			</div>
			<div class="col-md-3 col-sm-6">
				<!-- Counters v3 -->
				<div class="counters-v3">
					<i class="counters-v3-icon radius-circle icon-speedometer"></i>
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
			<div class="services-v6 services-v6-bg-img-one">
				<i class="services-v6-icon radius-circle icon-lightbulb"></i>
				<h3 class="services-v6-title">환전될 금액</h3>
				<a class="services-v6-link" href="#"></a>
			</div>
			<!-- End Services v6 -->
		</div>
		<div class="col-md-3 col-sm-6 md-margin-b-30">
			<!-- Services v6 -->
			<div class="services-v6 services-v6-bg-img-two">
				<i class="services-v6-icon radius-circle icon-camera"></i>
				<h3 class="services-v6-title">수수료</h3>
				<a class="services-v6-link" href="#"></a>
			</div>
			<!-- End Services v6 -->
		</div>
		<div class="col-md-3 col-sm-6 sm-margin-b-30">
			<!-- Services v6 -->
			<div class="services-v6 services-v6-bg-img-three">
				<i class="services-v6-icon radius-circle icon-tools"></i>
				<h3 class="services-v6-title">실수령 금액</h3>
				<a class="services-v6-link" href="#"></a>
			</div>
			<!-- End Services v6 -->
		</div>
		<div class="col-md-3 col-sm-6">
			<!-- Services v6 -->
			<div class="services-v6 services-v6-bg-img-four">
				<i class="services-v6-icon radius-circle icon-wallet"></i>
				<h3 class="services-v6-title">누적 환전수</h3>
				<a class="services-v6-link" href="#"></a>
			</div>
			<!-- End Services v6 -->
		</div>
	</div>
	<!--// end row -->
</div>
<!-- End Services v6 -->

<!-- End Testimonials v1 -->
<!--========== END PAGE CONTENT ==========-->
