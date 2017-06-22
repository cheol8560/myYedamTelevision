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
                        
                        <div class="" id="chattingArea" style="padding: 10px 0 10px 0;">
                           
                        </div>
                        
                        <div class="margin-b-20" style="border-top: 1px solid #00bcd4;">
		                    <!-- Comment Form v1 -->
		                    <div class="bg-color-white">
		                        <!-- Comment Form v1 -->
		                        <!-- <form id="comment-form" class="comment-form-v1" action="#" method="get"> -->
		                            <div class="padding-10">
		                                <textarea class="form-control comment-form-v1-input" style="resize:none;" rows="4" 
		                                		  placeholder="Your message" name="textarea" id="sendTextArea"></textarea>
		                            </div>
		                            <div class="row text-right margin-l-10 margin-r-10">
			                            <button type="submit" class="btn-base-bg btn-base-xs radius-3" id="sendTextBtn">보내기</button>
		                            </div>
		                        <!-- </form> -->
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
		
		//appViewer.sendText("1/${login.nickName} (${login.memberId})/님 입장");
	}, false);
	
	appViewer.on("stateChange", function(state, peerid, userid) {
		viewCount(channelId);
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
			
			var chatDiv1;
			var chatDiv2;
			var chatH3;
			var chatP;
			
			if(message.type === "text") {
				var msg = message.data;
				
				var category = msg.substring(0, msg.indexOf("/"));
				var member = msg.substring(msg.indexOf("/")+1, msg.indexOf("/", 3));
				var acceptedMessage = msg.substring(msg.indexOf("/", 3)+1);
				
				if(category == "1") {
					
					var chatP = document.createElement("p");
					chatP.style.paddingLeft = "5px";
					chatP.classList.add("font-size-11");
					chatP.textContent = "＃ " + member + acceptedMessage;
					chattingArea.appendChild(chatP);
					
				} else {
					
					var chatDiv1;
					var chatDiv2;
					var chatH3;
					var chatP;
					
					chatDiv1 = document.createElement("div");
					chatDiv1.classList.add("services-v5");
					chatDiv1.style.padding = "0px 15px 0px 15px";
					
					chatDiv2 = document.createElement("div");
					chatDiv2.classList.add("services-v5-wrap");
					chatDiv2.style.marginBottom = "0px";
					
					chatH3 = document.createElement("h3");
					chatH3.classList.add("services-v5-body-title");
					chatH3.classList.add("font-size-13");
					chatH3.textContent = member;
					
					chatP = document.createElement("p");
					chatP.classList.add("services-v5-text");
					chatP.classList.add("font-size-12");
					chatP.textContent = acceptedMessage;
					
					chatDiv2.appendChild(chatH3);
					chatDiv1.appendChild(chatDiv2);
					chatDiv1.appendChild(chatP);
					chattingArea.appendChild(chatDiv1);
					
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
		// appViewer.sendText("1/${login.nickName} (${login.memberId})/님 입장");
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
		var chatDiv1;
		var chatDiv2;
		var chatH3;
		var chatP;
		var member = "${login.nickName} " + "(${login.memberId})";
		var message = $("#sendTextArea").val();
		var sendMessage = "2/" + member + "/" + message;
		
		event.preventDefault();
		
		if(message) {
			appViewer.sendText(sendMessage);
			
			chatDiv1 = document.createElement("div");
			chatDiv1.classList.add("services-v5");
			chatDiv1.style.padding = "0px 15px 0px 15px";
			
			chatDiv2 = document.createElement("div");
			chatDiv2.classList.add("services-v5-wrap");
			chatDiv2.style.marginBottom = "0px";
			
			chatH3 = document.createElement("h3");
			chatH3.classList.add("services-v5-body-title");
			chatH3.classList.add("font-size-13");
			chatH3.textContent = member;
			
			chatP = document.createElement("p");
			chatP.classList.add("services-v5-text");
			chatP.classList.add("font-size-12");
			chatP.textContent = message;
			
			chatDiv2.appendChild(chatH3);
			chatDiv1.appendChild(chatDiv2);
			chatDiv1.appendChild(chatP);
			chattingArea.appendChild(chatDiv1);
		}
		
		$("#sendTextArea").val("").focus();
	}, false);
	
	
	
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
