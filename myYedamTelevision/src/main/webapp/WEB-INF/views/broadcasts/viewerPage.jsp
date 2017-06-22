<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- BEGIN BODY -->
<body>

<!-- WRAPPER -->
<div class="wrapper animsition fullheight" >
	<!-- Logo -->
	<div class="bg-color-white" style="border-bottom: 2px solid #00bcd4;">
		<div class="full-width-container" style="margin-left: 30px;">
			<div class="col-md-10">
				<p class="font-size-30 font-style-italic font-family-droid line-height-2 margin-b-0">
					<a href="${pageContext.request.contextPath}/">My Yedam Television</a>
				</p>
			</div>
			<div class="col-md-2 text-center" style="padding-top:15px;">
				<button type="button" id="broadcastEndBtn" class="btn-base-brd btn-base-xs radius-3">방송종료</button>
			</div>
		</div>
	</div>
	<!-- End Logo -->
	
    <!--========== PAGE CONTENT ==========-->
    <!-- Viewer Page -->
    <div class="full-width-container">
        <div class="row no-space-row">
            <!-- Left Area -->
            <div class="col-md-8" id="leftArea">
                <!-- Video Player -->
                <div class="full-width-container" id="videoArea">
                	<!-- <video id="viewerVideo" width="100%" height="100%"></video> -->
                </div>
                <!-- End Video Player -->
				
				<!-- Divider v1 -->
        		<div class="divider-v1" style="margin:15px auto;">
        			<div class="divider-v1-element">
        				<i class="divider-v1-icon fa fa-skyatlas"></i>
        			</div>
        		</div>
        		<!-- End Divider v1 -->
				
                <!-- Air Info -->
                <div class="full-width-container margin-l-30 margin-b-30">
					<div class="col-sm-8">
						<!-- Icon Box v4 -->
						<div class="icon-box-v4">
							<div class="theme-icons-wrap icon-box-v4-element">
								<i class="theme-icons theme-icons-dark-bg theme-icons-lg radius-circle icon-genius"></i>
							</div>
							<div class="icon-box-v4-body">
								<h3 class="icon-box-v4-body-title">${broadcastResult.broadcastTitle}</h3>
								<p class="icon-box-v4-body-text">${broadcastResult.nickName}</p>
							</div>
						</div>
						<!-- End Icon Box v4 -->
					</div>
					<div class="col-sm-4 text-right">
						<!-- Theme Icons Base On Hover -->
		                <ul class="list-inline" style="margin:0;">
		                    <li class="theme-icons-wrap">
		                    	<a href="#" style="text-decoration: none;">
		                    		<i class="theme-icons theme-icons-sm radius-circle fa fa-facebook margin-0"></i>
		                    		기쁨선물
		                    	</a>
		                    </li>
		                    <li class="theme-icons-wrap">
			                    <i class="theme-icons theme-icons-sm radius-circle fa fa-twitter margin-0"></i>
			                    <span class="view-count"></span> 명 시청중
							</li>
		                </ul>
		                <!-- End Theme Icons Base On Hover -->
					</div>
				</div>
                <!-- End Air Info -->
            </div>
            <!--  End Left Area -->
            
            <!-- Right Area -->
            <div class="col-md-4">
                <!-- Chatting Area -->
				<div class="col-md-6 padding-0" style="border-right:1px solid #00bcd4; border-left:1px solid #00bcd4;">
                    <div class="blog-sidebar">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon icon-book-open"></i>
                            <h4 class="blog-sidebar-heading-title">채팅</h4>
                        </div>
                        
	                    <div class="overflow-a" id="chattingArea" style="padding: 10px 0;">
						
						</div>
						
                        <div class="" style="border-top: 1px solid #00bcd4;">
		                    <!-- Comment Form v1 -->
		                    <div class="bg-color-white">
		                        <!-- Comment Form v1 -->
		                            <div class="full-width-container">
		                                <textarea class="form-control" rows="4" placeholder="Your message" name="textarea" 
		                                		  id="sendTextArea" style="resize:none; padding:10px 10px; width:75%; border:none;"
		                                		  ></textarea>
										<button class="btn-base-bg btn-base-xs radius-3" id="sendTextBtn"
												style="position: absolute; top:25px; right:10px;">보내기</button>
		                            </div>
		                        <!-- Comment Form v1 -->
		                    </div>
		                    <!-- End Comment Form v1 -->
                        </div>
                    </div>
				</div>
                <!-- End Chatting Area -->
                
                <!-- Broadcast list -->
                <div class="col-md-6 padding-0">
                    <div class="blog-sidebar margin-b-30">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon icon-book-open"></i>
                            <h4 class="blog-sidebar-heading-title">리스트</h4>
                        </div>
                        <div class="blog-sidebar-content blog-sidebar-content-height scrollbar">
                            <!-- Latest Tutorials -->
                            <article class="latest-tuts">
                                <div class="latest-tuts-media">
                                    <img class="latest-tuts-media-img radius-circle" src="assets/img/250x250/06.jpg" alt="">
                                </div>
                                <div class="latest-tuts-content">
                                    <h5 class="latest-tuts-content-title"><a href="#">Visual brand designing</a></h5>
                                    <small class="latest-tuts-content-time">35 minutes ago</small>
                                </div>
                            </article>
                            <article class="latest-tuts">
                                <div class="latest-tuts-media">
                                    <img class="latest-tuts-media-img radius-circle" src="assets/img/250x250/11.jpg" alt="">
                                </div>
                                <div class="latest-tuts-content">
                                    <h5 class="latest-tuts-content-title"><a href="#">Photoshop: Image Cropping</a></h5>
                                    <small class="latest-tuts-content-time">7 hours ago</small>
                                </div>
                            </article>
                            <article class="latest-tuts">
                                <div class="latest-tuts-media">
                                    <img class="latest-tuts-media-img radius-circle" src="assets/img/250x250/08.jpg" alt="">
                                </div>
                                <div class="latest-tuts-content">
                                    <h5 class="latest-tuts-content-title"><a href="#">Video editing</a></h5>
                                    <small class="latest-tuts-content-time">12 hours ago</small>
                                </div>
                            </article>
                            <article class="latest-tuts">
                                <div class="latest-tuts-media">
                                    <img class="latest-tuts-media-img radius-circle" src="assets/img/250x250/09.jpg" alt="">
                                </div>
                                <div class="latest-tuts-content">
                                    <h5 class="latest-tuts-content-title"><a href="#">Web development technologies</a></h5>
                                    <small class="latest-tuts-content-time">1 day ago</small>
                                </div>
                            </article>
                            <article class="latest-tuts">
                                <div class="latest-tuts-media">
                                    <img class="latest-tuts-media-img radius-circle" src="assets/img/250x250/10.jpg" alt="">
                                </div>
                                <div class="latest-tuts-content">
                                    <h5 class="latest-tuts-content-title"><a href="#">The section element - HTML</a></h5>
                                    <small class="latest-tuts-content-time">2 days ago</small>
                                </div>
                            </article>
                            <article class="latest-tuts">
                                <div class="latest-tuts-media">
                                    <img class="latest-tuts-media-img radius-circle" src="assets/img/250x250/07.jpg" alt="">
                                </div>
                                <div class="latest-tuts-content">
                                    <h5 class="latest-tuts-content-title"><a href="#">Creata a logo using Adobe Illustrator</a></h5>
                                    <small class="latest-tuts-content-time">3 days ago</small>
                                </div>
                            </article>
                            <!-- End Latest Tutorials -->
                        </div>
                    </div>
                
                </div>
                <!-- End Broadcast list -->
            </div>
            <!-- End Right Area -->
        </div>
        <!-- End Equal Height Interactive Banner v1 -->
    </div>
    <!-- End Interactive Banner v1 -->
	<!--========== END PAGE CONTENT ==========-->
	
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
						<strong>주의!</strong> 현재 방송에서 <strong>강퇴</strong>당하셨습니다.
					</div>

				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn-base-bg btn-base-xs" data-dismiss="modal" aria-label="Close">확인</button>
				</div>
							
			</div>
		</div>
	</div>
	<!-- End 강퇴 확인 Modal -->
	
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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.smooth-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.animsition.min.js"></script>
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
	var appViewer;
	var options;
	var targetNickName;
	var targetMemberId;
	var targetPeerId;
	var targetMember;
	var mine = "${login.nickName} (${login.memberId})";
	
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
		
		appViewer.connectChannel(channelId, options);
		
	}, false);
	
	appViewer.on("stateChange", function(state, peerid, userid) {
		viewCount(channelId);
		console.log(state);
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
				var targetPeerId = msgArr[4];
				
				// 방송 입장
				if(category == "#1") {
					
					var tP = document.createElement("p");
					tP.style.paddingLeft = "5px";
					tP.classList.add("font-size-12");
					tP.textContent = "＃ " + sendMember + acceptedMessage;
					chattingArea.appendChild(tP);
					
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
					tH3.classList.add("font-size-14");
					tH3.textContent = sendMember;
					
					tP = document.createElement("p");
					tP.classList.add("services-v5-text");
					tP.classList.add("font-size-13");
					tP.textContent = acceptedMessage;
					
					tDiv2.appendChild(tH3);
					tDiv1.appendChild(tDiv2);
					tDiv1.appendChild(tP);
					chattingArea.appendChild(tDiv1);
					
				}
				// 방송종료
				else if (category == "#3") {
					
				}
				// 별풍선 선물
				else if (category == "#4") {
					
				}
				// 강퇴
				else if (category == "#5") {
					
					if( appViewer.getPeerId() == targetPeerId ) {
						$("#leavedModal").modal();
					}
					
					var tP = document.createElement("p");
					tP.style.paddingLeft = "5px";
					tP.classList.add("font-size-12");
					tP.textContent = "＃ " + targetMember + acceptedMessage;
					chattingArea.appendChild(tP);
					
				}
				// 블랙리스트 등록
				else if (category == "#6") {
					
				}
				
			}
			
		});
		
		dataChannel.on("error", function(err) {
			console.log(err);
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
		$("video").remove();
	});
	
	// 시청자 입장 후 방송 종료
	broadcastEndBtn.addEventListener("click", function(event) {
		event.preventDefault();
		if(confirm("방송을 종료하시겠습니까?")) {
			appViewer.disconnectChannel();
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
			tH3.classList.add("font-size-14");
			tH3.textContent = mine;
			
			tP = document.createElement("p");
			tP.classList.add("services-v5-text");
			tP.classList.add("font-size-13");
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
	
	// 강퇴알림 모달 hide 시 disconnect 및 메인페이지로 이동
	$("#leavedModal").on("hidden.bs.modal", function(e) {
		appViewer.disconnectChannel(appViewer.getPeerId());
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
		$("#videoArea").css( "height", $("#leftArea").width()/2+40 );
		$("#chattingArea").css( "height", $("#videoArea").height()-22 );
		$(window).resize(function() {
			$("#chattingArea").css( "height", $("#videoArea").height()-22 );
		});
	});
	
</script>
<!-- End Page Javascript Code -->

<!--========== END JAVASCRIPTS ==========-->
</body>
<!-- END BODY -->
