<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- BEGIN BODY -->
<body>

<!-- WRAPPER -->
<div class="wrapper animsition fullheight">
	<!-- Logo -->
	<div class="bg-color-white" style="border-bottom: 2px solid #00bcd4;">
		<div class="full-width-container">
			<div class="col-md-1">
				<a href="getOnBroadcastList.do" target="_blank">
					<img src="assets/img/mayetel-logo.png" class="img-responsive" style="max-height:65px;">
				</a>
			</div>
			<div class="col-md-9">
				<div class="icon-box-v4">
					<div class="theme-icons-wrap icon-box-v4-element">
						<img src="img/${broadcastResult.memberImage}" class="theme-icons theme-icons-lg radius-circle" style="padding:0;">
					</div>
					<div class="icon-box-v4-body margin-t-20">
						<span class="icon-box-v4-body-title" style="margin-right:10px;">${broadcastResult.broadcastTitle}</span>
						<span class="icon-box-v4-body-text font-size-16">${broadcastResult.nickName}</span>
					</div>
				</div>
			</div>
			<div class="col-md-2 text-center" style="padding-top:15px;">
				<button type="button" id="broadcastEndBtn" class="btn-base-brd btn-base-xs radius-3">방송종료</button>
			</div>
		</div>
	</div>
	<!-- End Logo -->
	
    <!--========== PAGE CONTENT ==========-->
    <!-- Viewer Page -->
    <div class="full-width-container" style="border-bottom:1px solid #00bcd4;">
        <div class="row no-space-row" style="padding-left:80px; padding-right:80px;">
            <!-- Left Area -->
            <div class="col-sm-8" id="leftArea" style="border-left:1px solid #00bcd4;">
                <!-- Video Player -->
                <div class="full-width-container padding-0" id="videoArea">
                </div>
                <!-- End Video Player -->
            </div>
            <!--  End Left Area -->
            
            <!-- Right Area -->
            <div class="col-sm-4">
                <!-- Chatting Area -->
				<div class="col-md-6 padding-0" style="border-right:1px solid #00bcd4; border-left:1px solid #00bcd4;">
                    <div class="blog-sidebar">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon fa fa-comments font-size-18"></i>
                            <h4 class="blog-sidebar-heading-title">채팅</h4>
                        </div>
                        
	                    <div class="overflow-a" id="chattingArea" style="padding: 10px 0;">
						
						</div>
						
                        <div class="" style="border-top: 1px solid #00bcd4;">
		                    <div class="bg-color-white">
								<div class="full-width-container">
									<textarea class="form-control" rows="4" placeholder="Your message" name="textarea" 
											id="sendTextArea" style="resize:none; padding:10px 10px; width:75%; border:none;"
											></textarea>
									<button class="btn-base-bg btn-base-xs radius-3" id="sendTextBtn"
											style="position: absolute; top:25px; right:10px;">보내기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
                <!-- End Chatting Area -->
                
                <!-- Broadcast list -->
                <div class="col-sm-6 padding-0" style="border-right:1px solid #00bcd4;">
                
                	<!-- 시청자 목록 -->
                    <div class="blog-sidebar">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon bordered-icon-box-item fa fa-group font-size-18"></i>
                            <h4 class="blog-sidebar-heading-title">시청자</h4>
                            <span style="float:right; margin-right:10px;"><span class="view-count">0</span>명</span>
                        </div>
                        <div class="blog-sidebar-content overflow-a padding-10" id="viewerList">

                        </div>
					</div>
                    <!-- End 시청자 목록 -->
                
                    <div class="blog-sidebar margin-b-30">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon icon-book-open"></i>
                            <h4 class="blog-sidebar-heading-title">방송 리스트</h4>
                        </div>
                        <div class="blog-sidebar-content overflow-a" id="broadcastList">
                            
                        </div>
                    </div>
                
                </div>
                <!-- End Broadcast list -->
            </div>
            <!-- End Right Area -->
        </div>

    </div>
	<!--========== END PAGE CONTENT ==========-->

	<!-- 기쁨 선물 Modal -->
	<div class="modal fade" id="presentPointModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width:400px;">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close pointModalClose" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">기쁨 선물</h4>
				</div>
				<div class="modal-body">
			
					<form class="form-horizontal" id="pointFrm">
						<input type="hidden" name="inSendMemberId" value="${login.memberId}">
						<div class="form-group">
							<label class="col-sm-5 control-label" style="padding-right:0;">기쁨을 선물할 회원 : </label>
							<div class="col-sm-7" style="padding-top: 7px; padding-left:10px;">
								<span id="receiveMember"></span>
								<input type="hidden" name="inReceiveMemberId" id="inReceiveMemberId" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label" style="padding-right:0;">내가 보유한 기쁨 : </label>
							<div class="col-sm-7" style="padding-top: 7px; padding-left:10px;">
								<span id="myPoint">${login.point}</span> 개
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-5 control-label" style="padding-right:0;">선물할 기쁨 : </label>
							<div class="col-sm-7" style="padding-left:10px;">
								<input type="text" class="form-control" id="inTranslatePoint" name="inTranslatePoint"
										style="height:30px; width:60%; display:inline; margin-right:5px;"> 개
							</div>
						</div>
					</form>

					<div class="alert alert-warning collapse font-size-13 text-center" id="pointAlert" role="alert">
						<button type="button" class="close" onclick="$('#pointAlert').hide();">
							<span>&times;</span>
						</button>
						선물할 기쁨을 입력해주세요.
					</div>

					<div class="alert alert-info collapse font-size-13 text-center" id="pointConfirm" role="alert">
						<strong id="confirmMember"></strong> 님에게 <strong id="confirmPoint"></strong> 기쁨을 선물하시겠습니까?
					</div>

					<div class="alert alert-danger collapse font-size-13 text-center" id="pointFail" role="alert">
						<button type="button" class="close" onclick="$('#pointFail').hide();">
							<span>&times;</span>
						</button>
						보유하신 기쁨이 부족합니다.
					</div>

					<div class="alert alert-danger collapse font-size-13 text-center" id="pointFail2" role="alert">
						<button type="button" class="close" onclick="$('#pointFail2').hide();">
							<span>&times;</span>
						</button>
						<span id="pointErrorMsg"></span>
					</div>

				</div>
				<div class="modal-footer text-center">
					<div id="pointEvent1">
						<button type="button" class="btn-base-bg btn-base-xs" id="presentPointBtn">선물하기</button>
						<button type="button" class="btn-grey-brd btn-base-xs pointModalClose" data-dismiss="modal" aria-label="Close">취소</button>
					</div>
					<div id="pointEvent2" style="display: none;">
						<button class="btn-base-bg btn-base-xs" id="pointYes">예</button>
						<button class="btn-grey-brd btn-base-xs" id="pointNo">아니오</button>
					</div>
				</div>
							
			</div>
		</div>
	</div>
	<!-- End 기쁨 선물 Modal -->
	
	<!-- 강퇴 확인 Modal -->
	<div class="modal fade" id="leavedModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">강제 퇴장</h4>
				</div>
				<div class="modal-body">
			
					<div class="alert alert-warning font-size-13 text-center" id="leaveAlert" role="alert">
						현재 방송에서 <strong>강제퇴장</strong>되었습니다.
					</div>

				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn-base-bg btn-base-xs" data-dismiss="modal" aria-label="Close">확인</button>
				</div>
							
			</div>
		</div>
	</div>
	<!-- End 강퇴 확인 Modal -->
	
	<!-- 블랙리스트 확인 Modal -->
	<div class="modal fade" id="blacklistModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">블랙리스트 지정</h4>
				</div>
				<div class="modal-body">
			
					<div class="alert alert-danger font-size-13 text-center" id="blacklistAlert" role="alert">
						현재 방송에서 <strong>블랙리스트</strong>로 등록되어 <br>
						강제퇴장되었습니다.
					</div>

				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn-base-bg btn-base-xs" data-dismiss="modal" aria-label="Close">확인</button>
				</div>
							
			</div>
		</div>
	</div>
	<!-- End 블랙리스트 확인 Modal -->
	
	<!-- 블랙리스트 입장 불가 Modal -->
	<div class="modal fade" id="blacklistRejectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">블랙리스트 지정</h4>
				</div>
				<div class="modal-body">
			
					<div class="alert alert-danger font-size-13 text-center" id="blacklistAlert" role="alert">
						현재 방송에서 <strong>블랙리스트</strong>로 <br> 
						등록되어 입장할 수 없습니다.
					</div>

				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn-base-bg btn-base-xs" data-dismiss="modal" aria-label="Close">확인</button>
				</div>
							
			</div>
		</div>
	</div>
	<!-- End 블랙리스트 확인 Modal -->
	
	<!-- 방송 종료 Modal -->
	<div class="modal fade" id="broadcastEndModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">방송 종료</h4>
				</div>
				<div class="modal-body">
			
					<div class="alert alert-warning font-size-13 text-center" id="leaveAlert" role="alert">
						현재 방송이 <strong>종료</strong>되었습니다.
					</div>

				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn-base-bg btn-base-xs" data-dismiss="modal" aria-label="Close">확인</button>
				</div>
							
			</div>
		</div>
	</div>
	<!-- End 방송 종료 Modal -->
	
</div>
<!-- END WRAPPER -->

<!-- Sidebar Content Overlay -->
<div class="sidebar-content-overlay"></div>
<!-- End Sidebar Content Overlay -->

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top-theme"></a>
<!-- End Back To Top -->

<!--========== JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) ==========-->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/html5shiv.js"></script>
<script src="assets/plugins/respond.min.js"></script>
<![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.animsition.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.number.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.smooth-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/playrtc.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/animsition.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/scrollbar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/form-modal.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/magnific-popup.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<!-- Page Javascript Code -->
<script>
"use strict";

	/* 시청자 방송 관련 Javascript */
	
	var broadcastEndBtn = document.querySelector("#broadcastEndBtn");
	var chattingArea = document.querySelector("#chattingArea");
	var channelId = "${broadcastResult.channelId}";
	var stateSuccessCheck = false;
	var timeId;
	var appViewer;
	var options;
	var targetNickName;
	var targetMemberId;
	var targetPeerId;
	var targetMember;
	var mine = "${login.nickName} (${login.memberId})";
	var bj = "${broadcastResult.nickName} (${broadcastResult.memberId})";
	
	// 방송 시청 중 방송 목록 조회
	function getOnBroadcastList() {
		$.getJSON("getExceptOnBroadcastList.do", "broadcastNo=${broadcastResult.broadcastNo}", function(data) {
			
			for( var i = 0; i < data.length; i++ ) {
				
				var tArticle = $("<article class='latest-tuts'></article>");
				
				var tDiv1 = $("<div class='latest-tuts-media'></div>");
				$(tDiv1).append("<img class='latest-tuts-media-img radius-circle' src='img/" + data[i].memberImage + "'>");
				
				var tDiv2 = $("<div class='latest-tuts-content'></div>");
				var tA = $("<a href='getOnBroadcast.do?broadcastNo="+data[i].broadcastNo+"&memberId="+data[i].memberId+"'>"+data[i].broadcastTitle+"</a>");
				$(tDiv2).append($("<h5 class='latest-tuts-content-title'></h5>").append(tA));
				$(tDiv2).append("<small class='latest-tuts-content-time'>" + data[i].nickName + "</small>");
				
				$(tArticle).append(tDiv1);
				$(tArticle).append(tDiv2);
				
				$("#broadcastList").append(tArticle);
			}
			
		});
	}
	
	// 시청자 객체 및 변수 설정
	appViewer = new PlayRTC({
		projectKey: '60ba608a-e228-4530-8711-fa38004719c1',
		data: true,
		video: false,
		audio: false
	});
	
	// 시청자 입장 후 방송 시작
	window.addEventListener("load", function(event) {
		event.preventDefault();
		options = {
			peer: {
				uid: "${login.memberId}",
				userName: "${login.nickName}"
			}
		}
		
		// 방송 입장 후 블랙리스트 체크
		var param = "broadcastNo=${broadcastResult.broadcastNo}&memberId=${login.memberId}";
		
		$.getJSON("getBlacklistCheck.do", param, function(data) {
			console.log(data);
			if(data == 0) {
				appViewer.connectChannel(channelId, options);
			} else {
				$("#blacklistRejectModal").modal();
			}
		});
		
		// 방송 입장 후 방송 목록 조회 및 타이머 설정
		getOnBroadcastList();
		setInterval(function() {
			getOnBroadcastList();
		}, 10000);
		
	}, false);
	
	// 방송상태 변경 이벤트
	appViewer.on("stateChange", function(state, peerid, userid) {
		console.log(state);
		
		if(state === "CONNECTED" && !stateSuccessCheck) {
			var msg = "#1/" + mine + "/ / 님이 입장하셨습니다./ ";
			
			appViewer.sendText(msg, function() {
				
				var tP = document.createElement("p");
				tP.style.paddingLeft = "5px";
				tP.classList.add("font-size-13");
				tP.textContent = "＃ " + mine + " 님이 입장하셨습니다.";
				chattingArea.appendChild(tP);
				
				// 채팅 등록 후 스크롤 가장 마지막으로
				chattingArea.scrollTop = chattingArea.scrollHeight;
			
			});
			
			// 방송입장 여부 변경
			stateSuccessCheck = true;
		}
		
		if(state === "CONNECTED" || state === "CLOSED") {
			
			// 시청자 목록 출력
			appViewer.getPeerList(channelId, function(data) {
				
				var peerList = data.peers;
				$("#viewerList").html("");
				$(".view-count").text("0");
				
				var view = peerList.length-1;
				$(".view-count").text(view);
					
				for( var i = 0; i < peerList.length; i++ ) {
							
					// div tag
					var tDiv = document.createElement("div");
					tDiv.classList.add("btn-group");
					tDiv.classList.add("btn-custom-toggle");
					tDiv.classList.add("margin-b-10");
					tDiv.classList.add("target");
						
					// button tag
					var tBtn = document.createElement("button");
					tBtn.setAttribute("type", "button");
					tBtn.classList.add("btn-custom-bg");
					tBtn.classList.add("dropdown-toggle");
					tBtn.classList.add("radius-3");
					tBtn.classList.add("font-size-14");
					tBtn.setAttribute("data-toggle", "dropdown");
					tBtn.setAttribute("aria-haspopup", "true");
					tBtn.setAttribute("aria-expanded", "false");

					// spanTag
					var tSpan = "<span class='targetNickName'>" + peerList[i].userName + "</span> (<span class='targetId'>" + peerList[i].uid +"</span>)";
					tBtn.innerHTML = tSpan;
					
					if(peerList[i].uid == "${broadcastResult.memberId}") {
						var tI = "<i class='bordered-icon-box-item fa fa-star' style='margin-left:5px;'></i>";
						$(tBtn).append($(tI));
					}
					
					// ul tag
					var tUl = document.createElement("ul");
					tUl.classList.add("dropdown-menu");
					
					// 첫번째 li tag 
					var tLi_1 = document.createElement("li");
							
					var tLi_1_tA = document.createElement("a");
					tLi_1_tA.setAttribute("href", "#");
					tLi_1_tA.setAttribute("data-toggle", "modal");
					tLi_1_tA.setAttribute("data-target", "#presentPointModal");
					
					var tLi_1_tI = document.createElement("i");
					tLi_1_tI.classList.add("dropdown-menu-icon");
					tLi_1_tI.classList.add("fa");
					tLi_1_tI.classList.add("fa-gift");
					tLi_1_tI.classList.add("font-size-16");
					
					var tLi_1_tSpan = document.createElement("span");
					tLi_1_tSpan.style.fontSize = "12px";
					tLi_1_tSpan.textContent = "기쁨 선물";
					
					tLi_1_tA.appendChild(tLi_1_tI);
					tLi_1_tA.appendChild(tLi_1_tSpan);
					
					tLi_1.appendChild(tLi_1_tA);
					
					// 태그 구조 생성
					tUl.appendChild(tLi_1);
					
					tDiv.appendChild(tBtn);
					if(peerList[i].uid != "${login.memberId}") {
						tDiv.appendChild(tUl);
					}
					
					viewerList.appendChild(tDiv);
					
				}
			});
		}
	});
	
	// 시청자수 출력 함수
	function viewCount(channelId) {
		appViewer.getPeerList(channelId, function(data) {
			var view = data.peers.length-1;
			$(".view-count").text(view);
		});
	}
	
	// 방송 시작 후 수신 이벤트 처리
	appViewer.on("addDataStream", function(pid, uid, dataChannel) {
		dataChannel.on("message", function(message) {
			
			if(message.type === "text") {
				var msg = message.data;
				var msgArr = msg.split("/");
				
				var category = msgArr[0];
				var sendMember = msgArr[1];
				var targetMember = msgArr[2];
				var acceptedMessage = msgArr[3];
				var acceptedPeerId = msgArr[4];
				
				// 방송 입장
				if(category == "#1") {
					
					var tP = document.createElement("p");
					tP.style.paddingLeft = "5px";
					tP.classList.add("font-size-13");
					tP.textContent = "＃ " + sendMember + acceptedMessage;
					chattingArea.appendChild(tP);
					
					// 채팅 등록 후 스크롤 가장 마지막으로
					chattingArea.scrollTop = chattingArea.scrollHeight;
					
				} 
				// 방송 중 채팅
				else if(category == "#2") {
					
					var tDiv1;
					var tDiv2;
					var tH3;
					var tP;
					
					tDiv1 = document.createElement("div");
					tDiv1.classList.add("services-v5");
					tDiv1.style.padding = "0px 15px 0px 15px";
					
					tDiv2 = document.createElement("div");
					tDiv2.classList.add("services-v5-wrap");
					tDiv2.style.marginBottom = "0px";
					
					tH3 = document.createElement("h3");
					tH3.classList.add("services-v5-body-title");
					tH3.classList.add("font-size-15");
					tH3.style.marginBottom = "5px";
					tH3.textContent = sendMember;
					
					tP = document.createElement("p");
					tP.classList.add("services-v5-text");
					tP.classList.add("font-size-14");
					tP.textContent = acceptedMessage;
					
					tDiv2.appendChild(tH3);
					tDiv1.appendChild(tDiv2);
					tDiv1.appendChild(tP);
					chattingArea.appendChild(tDiv1);
					
					// 채팅 등록 후 스크롤 가장 마지막으로
					chattingArea.scrollTop = chattingArea.scrollHeight;
					
				}
				// 방송종료
				else if (category == "#3") {
					
					if(sendMember == bj) {
						$("#broadcastEndModal").modal();
					}
					
					var tP = document.createElement("p");
					tP.style.paddingLeft = "5px";
					tP.classList.add("font-size-13");
					tP.textContent = "＃ " + sendMember + acceptedMessage;
					chattingArea.appendChild(tP);
					
					// 채팅 등록 후 스크롤 가장 마지막으로
					chattingArea.scrollTop = chattingArea.scrollHeight;
					
				}
				// 별풍선 선물
				else if (category == "#4") {
					
					// 선물받은 회원 현재 포인트 갱신
					if(targetMember == mine) {
						var recentPoint = parseInt($("#myPoint").text().replace(",", ""));
						var acceptedPoint = parseInt(acceptedMessage.replace(",", ""));
						recentPoint += acceptedPoint;
						$("#myPoint").text($.number(recentPoint));
					}
					
					var tDiv1 = document.createElement("div");
					tDiv1.classList.add("chat-point-wrap");
					
					var tDiv2 = document.createElement("div");
					tDiv2.classList.add("chat-point");
					tDiv2.innerHTML = 
						"<div class='chat-point-img-gradient' style='padding: 0px 60px;'>" + 
							"<img class='img-responsive' src='assets/img/round.png'>" + 
						"</div>" + 
						"<div class='chat-point-content'>" + 
							"<div class='chat-point-center-align'>" + 
								"<h4 class='chat-point-member font-size-36'>" + acceptedMessage + "</h4>" + 
								"<span class='chat-point chat-point-member-position font-size-18'>기쁨!</span>" + 
							"</div>" + 
						"</div>";
					
					tDiv1.appendChild(tDiv2);	
					tDiv1.innerHTML += 
						"<div class='alert alert-success text-center font-size-13 padding-10 margin-b-0 margin-t-5' role='alert'>" +
							"<strong>" + sendMember + "</strong> 님이 <br>" + 
							"<strong>" + targetMember + "</strong> 님에게 선물!" + 
						"</div>";
					
					chattingArea.appendChild(tDiv1);
					
					// 채팅 등록 후 스크롤 가장 마지막으로
					chattingArea.scrollTop = chattingArea.scrollHeight;
					
				}
				// 강퇴
				else if (category == "#5") {
					
					if( appViewer.getPeerId() == acceptedPeerId ) {
						$("#leavedModal").modal();
					}
					
					var tP = document.createElement("p");
					tP.style.paddingLeft = "5px";
					tP.classList.add("font-size-13");
					tP.textContent = "＃ " + targetMember + acceptedMessage;
					chattingArea.appendChild(tP);
					
					// 채팅 등록 후 스크롤 가장 마지막으로
					chattingArea.scrollTop = chattingArea.scrollHeight;
					
				}
				// 블랙리스트 등록
				else if (category == "#6") {
					
					if( appViewer.getPeerId() == acceptedPeerId ) {
						$("#blacklistModal").modal();
					}
					
					var tP = document.createElement("p");
					tP.style.paddingLeft = "5px";
					tP.classList.add("font-size-13");
					tP.textContent = "＃ " + targetMember + acceptedMessage;
					chattingArea.appendChild(tP);
					
					// 채팅 등록 후 스크롤 가장 마지막으로
					chattingArea.scrollTop = chattingArea.scrollHeight;
					
				}
			}
		});
	});
	
	// 방송 시작 후 video Tag 생성
	appViewer.on("addRemoteStream", function(pid, uid, stream) {
		var video = PlayRTC.utils.createVideo(stream, {
			autoPlay: true,
			controls: true,
			width: "100%",
			height: "100%"
		});
		
		document.getElementById("videoArea").appendChild(video);
		
	});
	
	// 방송 연결
	appViewer.on("connectChannel", function(channelId) {
		
	});
	
	// 방송 종료 시 이벤트 처리
	appViewer.on("disconnectChannel", function() {
		
	});
	
	// 시청자 입장 후 방송 종료
	broadcastEndBtn.addEventListener("click", function(event) {
		event.preventDefault();
		if(confirm("방송을 종료하시겠습니까?")) {
			var msg = "#3/" + mine + "/ / 님이 퇴장하셨습니다./ ";
			
			appViewer.sendText(msg, function() {
				appViewer.disconnectChannel();
			});
			location.href = "getOnBroadcastList.do";
		}
	});
	
	// 방송 중 채팅
	sendTextBtn.addEventListener("click", function(event) {
		if(!appViewer) {
			return;
		}
		var tDiv1;
		var tDiv2;
		var tH3;
		var tP;
		var message = $("#sendTextArea").val();
		var sendMessage = "#2/" + mine + "/ " + "/" + message + "/" + appViewer.getPeerId();
		
		event.preventDefault();
		
		if(message) {
			appViewer.sendText(sendMessage);
			
			tDiv1 = document.createElement("div");
			tDiv1.classList.add("services-v5");
			tDiv1.style.padding = "0px 15px 0px 15px";
			
			tDiv2 = document.createElement("div");
			tDiv2.classList.add("services-v5-wrap");
			tDiv2.style.marginBottom = "0px";
			
			tH3 = document.createElement("h3");
			tH3.classList.add("services-v5-body-title");
			tH3.classList.add("font-size-15");
			tH3.style.marginBottom = "5px";
			tH3.textContent = mine;
			
			tP = document.createElement("p");
			tP.classList.add("services-v5-text");
			tP.classList.add("font-size-14");
			tP.textContent = message;
			
			tDiv2.appendChild(tH3);
			tDiv1.appendChild(tDiv2);
			tDiv1.appendChild(tP);
			chattingArea.appendChild(tDiv1);
			
			// 채팅 등록 후 스크롤 가장 마지막으로
			chattingArea.scrollTop = chattingArea.scrollHeight;
		}
		
		$("#sendTextArea").val("").focus();
	}, false);
	
	// 모달로 값 넘기기
	$("#viewerList").on("click", ".target" ,function(e) {
		var nodeName = e.target.nodeName;
		
		if((nodeName == "SPAN" && $(e.target).attr("class")) || nodeName == "BUTTON") {
			targetNickName = $(e.target).parent().find(".targetNickName").text();
			targetMemberId = $(e.target).parent().find(".targetId").text();
			targetMember = targetNickName + " (" + targetMemberId + ")";
			console.log(targetNickName + "/" + targetMemberId + "/" + targetMember);
			
			if(targetMemberId != "${login.memberId}") {
				targetPeerId = appViewer.getPeerByUserId(targetMemberId).id;
			} 
			
			// 기쁨 선물 모달
			$("#receiveMember").text(targetMember);
			$("#inReceiveMemberId").val(targetMemberId);
		} 
	});
	
	/* 방송 중 포인트 선물 */
	
	var inTranslatePoint;
	// 선물하기 버튼 클릭 이벤트
	presentPointBtn.addEventListener("click", function(event) {
		inTranslatePoint = $("#inTranslatePoint").val();
		
		// 포인트 미입력시
		if(inTranslatePoint == "" || inTranslatePoint == null || inTranslatePoint == 0) {
			$("#pointAlert").fadeIn();
			return;
		} 
		// 포인트 부족할 경우
		else if( inTranslatePoint > parseInt($("#myPoint").text().replace(",", "")) ) {
			$("#pointFail").fadeIn();
		} 
		else {
			$("#confirmMember").text(targetMember);
			$("#confirmPoint").text(inTranslatePoint);
			$("#pointConfirm").fadeIn();
			$("#pointEvent1").css("display", "none");
			$("#pointEvent2").css("display", "block");
		}
	});
	
	// 선물하기 버튼 클릭 후 예 버튼 이벤트
	$("#pointYes").click(function() {
		var param = $("#pointFrm").serialize();
		$.getJSON( "insertTrans.do", param, function(data) {
			
			if(data.trans.outErrorcode == -1) {
				$("#pointErrorMsg").text(data.trans.outMessage);
				$("#pointFail2").fadeIn();
			} else if (data.trans.outErrorcode > 0) {
				$(".pointModalClose").click();
				console.log(data.member.point);
				$("#myPoint").text($.number(data.member.point));
				
				var pointMsg = "#4/" + mine + "/" + targetMember + "/" + $.number(inTranslatePoint) + "/" + targetPeerId;
				appViewer.sendText(pointMsg);
				
				var tDiv1 = document.createElement("div");
				tDiv1.classList.add("chat-point-wrap");
				
				var tDiv2 = document.createElement("div");
				tDiv2.classList.add("chat-point");
				tDiv2.innerHTML = 
					"<div class='chat-point-img-gradient' style='padding: 0px 60px;'>" + 
						"<img class='img-responsive' src='assets/img/round.png'>" + 
					"</div>" + 
					"<div class='chat-point-content'>" + 
						"<div class='chat-point-center-align'>" + 
							"<h4 class='chat-point-member font-size-36'>" + $.number(inTranslatePoint) + "</h4>" + 
							"<span class='chat-point chat-point-member-position font-size-18'>기쁨!</span>" + 
						"</div>" + 
					"</div>";
				
				tDiv1.appendChild(tDiv2);	
				tDiv1.innerHTML += 
					"<div class='alert alert-success text-center font-size-13 padding-10 margin-b-0 margin-t-5' role='alert'>" +
						"<strong>" + mine + "</strong> 님이 <br>" + 
						"<strong>" + targetMember + "</strong> 님에게 선물!" + 
					"</div>";
				
				chattingArea.appendChild(tDiv1);
				
				// 채팅 등록 후 스크롤 가장 마지막으로
				chattingArea.scrollTop = chattingArea.scrollHeight;
			}
		});
	});
	
	// 선물하기 버튼 클릭 후 아니오 버튼 이벤트 
	$("#pointNo").click(function() {
		$("#pointConfirm").hide();
		$("#pointEvent1").css("display", "block");
		$("#pointEvent2").css("display", "none");
	});
	
	// 포인트 입력 중 알림창 숨기기
	$("#inTranslatePoint").keydown(function() {
		$("#pointAlert").hide();
		$("#pointFail").hide();
		$("#pointFail2").hide();
		$("#pointNo").click();
	});
	
	// 포인트 모달 닫기 / 취소 버튼 클릭 시
	$("#presentPointModal").on("hidden.bs.modal", function(e) {
		$("#pointAlert").hide();
		$("#pointConfirm").hide();
		$("#pointFail").hide();
		$("#pointFail2").hide();
		$("#inTranslatePoint").val(" ");
		$("#pointEvent1").css("display", "block");
		$("#pointEvent2").css("display", "none");
	});
	
	/* End 방송 중 포인트 선물 */
	
	
	// 강퇴알림 모달 hide 시 disconnect 및 메인페이지로 이동
	$("#leavedModal").on("hidden.bs.modal", function(e) {
		appViewer.disconnectChannel(appViewer.getPeerId());
		location.href = "getOnBroadcastList.do";
	});
	
	// 블랙리스트 등록알림 모달 hide 시 disconnect 및 메인페이지로 이동
	$("#blacklistModal").on("hidden.bs.modal", function(e) {
		appViewer.disconnectChannel(appViewer.getPeerId());
		location.href = "getOnBroadcastList.do";
	});
	
	// 블랙리스트 입장알림 모달 hide 시 disconnect 및 메인페이지로 이동
	$("#blacklistRejectModal").on("hidden.bs.modal", function(e) {
		location.href = "getOnBroadcastList.do";
	});
	
	// 방송 종료 모달 hide 시 메인페이지로 이동
	$("#broadcastEndModal").on("hidden.bs.modal", function(e) {
		location.href = "getOnBroadcastList.do";
	});
	
	// 채팅 입력창 엔터 이벤트
	var isCtrl = false;
	var ctrlKey = 17, enterKey = 13;
	
	$("#sendTextArea").keyup(function(e) {
		if((e.keyCode ? e.keyCode : e.which) == ctrlKey)
			isCtrl = false;
	}).keydown(function(e) {
		var keyCode = (e.keyCode ? e.keyCode : e.which);
		
		if(keyCode == ctrlKey) {
			isCtrl = true;
		}
		
		// ctrl + enter 입력시
		if(keyCode == enterKey && isCtrl == true) {
			var text = $("#sendTextArea").val();
			$("#sendTextArea").val(text + "\n");
			return false;
		}
		
		//  enter 입력시
		else if(keyCode == enterKey) {
			$("#sendTextBtn").click();
			return false;
		}
	});
	
	/* End 시청자 방송 관련 Javascript */

	// 동적 크기 조절
	$(function() {
		$("#videoArea").css("height", $("#leftArea").width() / 1.34);
		$("#chattingArea").css("height", $("#videoArea").height() - 145);
		$("#viewerList").css("height", $("#chattingArea").height() / 2.8);
		$("#broadcastList").css("height", $("#chattingArea").height() / 1.46);
		$(window).resize(function() {
			$("#videoArea").css("height", $("#leftArea").width() / 1.34);
			$("#chattingArea").css("height", $("#videoArea").height() - 145);
			$("#viewerList").css("height", $("#chattingArea").height() / 2.8);
			$("#broadcastList").css("height", $("#chattingArea").height() / 1.46);
		});
		
		// number formatting
		$(".view-count").number(true);
		$("#myPoint").number(true);

		// 모달 show 이벤트
		$('#presentPointModal').on('shown.bs.modal', function() {
			$('#inTranslatePoint').focus();
		});
		
	});
	
</script>
<!-- End Page Javascript Code -->

<!--========== END JAVASCRIPTS ==========-->
</body>
<!-- END BODY -->
