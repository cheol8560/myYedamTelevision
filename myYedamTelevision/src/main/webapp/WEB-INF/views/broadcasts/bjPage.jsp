<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- BEGIN BODY -->
<body>

<!-- WRAPPER -->
<div class="wrapper animsition fullheight">
	<!-- Logo -->
	<div class="bg-color-white" style="border-bottom: 2px solid #00bcd4;">
		<div class="container-sm" style="margin-left: 30px;">
			<div class="col-md-10">
				<p class="font-size-30 font-style-italic font-family-droid line-height-2 margin-b-0">
					My Yedam Television
				</p>
			</div>
			<div class="col-md-2">

			</div>
		</div>
	</div>
	<!-- End Logo -->
	
    <!--========== PAGE CONTENT ==========-->
    <!-- BJ Page -->
    <div class="full-width-container" style="border-bottom:1px solid #00bcd4;">
        <div class="row no-space-row">
            <!-- Left Area -->
            <div class="col-md-8" id="leftArea">
								
				<!-- Video Player -->
                <div class="full-width-container" id="videoArea">
                </div>
                <!-- End Video Player -->
				
            </div>
            <!--  End Left Area -->
            
            <!-- Right Area --> 
            <div class="col-md-4 ">
                <!-- Chatting Area -->
				<div class="col-md-6 padding-0" style="border-right:1px solid #00bcd4; border-left:1px solid #00bcd4;">
                    <div class="blog-sidebar">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon icon-book-open"></i>
                            <h4 class="blog-sidebar-heading-title">채팅</h4>
                        </div>
                        
                        <div class="overflow-a" id="chattingArea" style="padding: 10px 0 10px 0;">
							
						</div>
						
                        <div class="" style="border-top: 1px solid #00bcd4;">
		                    <!-- Comment Form v1 -->
		                    <div class="bg-color-white">
		                        <!-- Comment Form v1 -->
		                            <div class="full-width-container">
		                                <textarea class="form-control" rows="4" placeholder="Your message" name="textarea" 
		                                		  id="sendTextArea" style="resize:none; padding:6px 6px; width:75%; border:none;"
		                                		  ></textarea>
										<button class="btn-base-bg btn-base-xs radius-3" id="sendTextBtn"
												style="padding:8px 8px; position: absolute; top:25px; right:5px;">보내기</button>
		                            </div>
		                        <!-- Comment Form v1 -->
		                    </div>
		                    <!-- End Comment Form v1 -->
                        </div>
                    </div>
				</div>
                <!-- End Chatting Area -->
                
                <!-- 방송정보 설정 및 방송현황 -->
                <div class="col-md-6 padding-0">
                    <div class="blog-sidebar margin-b-10">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon icon-book-open"></i>
                            <h4 class="blog-sidebar-heading-title">방송 설정</h4>
                        </div>
                        <div class="blog-sidebar-content" id="broadcastFormWrap">
							<!-- Comment Form v1 -->
							<form id="broadcastForm" class="comment-form-v1">
								<input type="hidden" name="broadcastNo" id="broadcastNo" value="${broadcastResult.broadcastNo}">
								<input type="hidden" name="channelId" id="channelId" value="">
								<div class="row">
									<div class="col-md-12 margin-b-30">
										<label for="broadcastTitle">방송제목</label>
										<input type="text" class="form-control comment-form-v1-input"
											name="broadcastTitle" id="broadcastTitle" value="${broadcastResult.broadcastTitle}"
											required>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 margin-b-30">
										<label for="contentCode">방송주제</label>
										<select id="contentCode" name="contentCode" class="form-control comment-form-v1-input" required>
										<c:forEach items="${contentList}" var="content">
											<option value="${content.contentCode}">${content.contentName}</option>	
										</c:forEach>
										</select>
										<script>
											$("#contentCode").val("${broadcastResult.contentCode}");
										</script>
									</div>
								</div>
								<div id="broadcastBtnArea" class="text-center">
									<button id="broadcastStartBtn" class="btn-base-bg btn-base-xs radius-3">방송시작</button>
									<button id="broadcastInfoUpdBtn" style="display:none; margin-right:15px;" 
											class="btn-base-brd btn-base-xs radius-3">방송적용</button>
									<button id="broadcastEndBtn" style="display:none;" 
											class="btn-grey-brd btn-base-xs radius-3">방송종료</button>
								</div>
							</form>
							<!-- Comment Form v1 -->
						</div>
                    </div>
					<!-- End 방송정보 설정 -->

					<!-- 시청자 목록 -->
                    <div class="blog-sidebar">
                        <div class="blog-sidebar-heading">
                            <i class="blog-sidebar-heading-icon bordered-icon-box-item fa fa-group"></i>
                            <h4 class="blog-sidebar-heading-title">시청자</h4>
                            <span style="float:right; margin-right:10px;"><span class="view-count">0</span>명</span>
                        </div>
                        <div class="blog-sidebar-content scrollbar" id="viewerList">
                            <!-- Latest Tutorials -->
                            <article class="latest-tuts viewerInfo" style="padding-bottom:0; margin-bottom:5px; border-bottom:0px;">
                                <div class="latest-tuts-content">
                                    <h5 class="latest-tuts-content-title"> 
                                    	<span>${login.nickName} (${login.memberId})</span>
                                    	<i class="bordered-icon-box-item fa fa-star" style="margin-left:5px;"></i>
                                    </h5>
                                </div>
                            </article>
                
							<!-- End Latest Tutorials -->
                        </div>
                    </div>
                    <!-- End 시청자 목록 -->
                    
                </div>
                <!-- End 방송정보설정 및 방송현황 -->
            </div>
            <!-- End Right Area -->
        </div>
        <!-- End Equal Height Interactive Banner v1 -->
    </div>
    <!-- BJ page -->
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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.animsition.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.appear.js"></script>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/progress-bar.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<!-- Page Javascript Code -->
<script>
"use strict";

	/* BJ 관련 Javascript */
	
	var broadcastStartBtn = document.querySelector("#broadcastStartBtn");
	var broadcastEndBtn = document.querySelector("#broadcastEndBtn");
	var broadcastInfoUpdBtn = document.querySelector("#broadcastInfoUpdBtn");
	var inputChannelId = document.querySelector("#channelId");
	var inputBroadcastNo = document.querySelector("#broadcastNo");
	var chattingArea = document.querySelector("#chattingArea");
	var sendTextBtn = document.querySelector("#sendTextBtn");
	var broadcastStatusCheck = false;
	var appBj;
	var options;
	
	// BJ 객체 및 변수 설정
	appBj = new PlayRTC({
		projectKey: "60ba608a-e228-4530-8711-fa38004719c1",
		// localMediaTarget: "bjVideo",
		video: {
			"minWidth": 800,
			"maxWidth": 1920,
			"minHeight": 600,
			"maxHeight": 1080,
			"minFrameRate": 30,
			"maxFrameRate": 60
		}
	});
	 
	/* BJ 이벤트 핸들러 처리 */ 
	
	// BJ connectChannel 이벤트 핸들러
	appBj.on("connectChannel", function(channelId, options) {
		inputChannelId.value = channelId;
		
		options = {
			peer: {
				uid: "${login.memberId}",
				userName: "${login.nickName}"
			}
		};
		
		// 방송 등록 AJAX 처리
		var param = $("#broadcastForm").serialize() + "&broadcastStatus=e1";
		$.getJSON( "insUpdBroadcast.do", param )
			.done(function(data) {
				$("#applyBroadcastTitle").text(data.broadcastTitle);
				
				// 방송시작 버튼
				broadcastStartBtn.style.display = "none";
				// 방송종료 버튼
				broadcastEndBtn.style.display = "inline-block";
				// 방송적용 버튼
				broadcastInfoUpdBtn.style.display = "inline-block";
				
				
				var chatP = document.createElement("p");
				chatP.style.paddingLeft = "8px";
				chatP.classList.add("font-size-12");
				chatP.textContent = "▷ 대화방이 개설되었습니다.";
				chattingArea.appendChild(chatP);
				
				// 방송상태 변경
				broadcastStatusCheck = true;
				
			})
			.fail(function(jqxhr, textStatus, error) {
				var err = textStatus + " : " + error;
				alert(err);
			});
		
	});
	
	// 방송 상태 변경 이벤트
	appBj.on("stateChange", function(state, peerid, userid) {
		// 시청자 수 count
		// viewCount(inputChannelId.value);
		
		if(state === "CONNECTED" || state === "CLOSED") {
			
			// 시청자 목록 출력
			appBj.getPeerList(inputChannelId.value, function(data) {
				
				var peerList = data.peers;
				$("#viewerArea").html("");
				$(".view-count").text("0");
				
				if(peerList.length > 1) {
					var view = peerList.length-1;
					$(".view-count").text(view);
					
					var i = 1;
					
					while(true) {
						
						var viewArticle = document.createElement("article");
						viewArticle.classList.add("latest-tuts");
						viewArticle.classList.add("viewerInfo");
						viewArticle.style.paddingBottom = "0px";
						viewArticle.style.marginBottom = "5px";
						viewArticle.style.borderBottom = "0px";
						
						var viewDiv = document.createElement("div");
						viewDiv.classList.add("latest-tuts-content");
						
						var viewH5 = document.createElement("h5");
						viewH5.classList.add("latest-tuts-content-title");
						
						var viewSpan = document.createElement("span");
						viewSpan.textContent = peerList[i].userName + " (" + peerList[i].uid + ")";
						
						viewH5.appendChild(viewSpan);
						viewDiv.appendChild(viewH5);
						viewArticle.appendChild(viewDiv);
						$("#viewerArea").append(viewArticle);
						
						i++;
						 
						if (i >= peerList.length) { break; }
					}
				}
				
			});
		}
	});
	
	// 시청자수 출력 함수
	function viewCount(channelId) {
		appBj.getPeerList(channelId, function(data) {
			var view = data.peers.length-1;
			$(".view-count").text(view);
		});
	}
	
	// 방송 시작 후 video Tag 생성
	appBj.on("addLocalStream", function(localStream) {
		var video = PlayRTC.utils.createVideo(localStream, {
			autoPlay: true,
			controls: false,
			width: "100%",
			height: "100%"
		});
		
		document.getElementById("videoArea").appendChild(video);
	});
	
	// 방송 시작 후 수신 이벤트 처리
	appBj.on("addDataStream", function(peerid, uid, dataChannel) {
		dataChannel.on("message", function(message) {
			
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
	});
	
	// 강제 방송종료시 이벤트
	appBj.on("disconnectChannel", function() {
		
		// 방송종료 AJAX 처리 
		$.getJSON("insUpdBroadcast.do", "broadcastStatus=e3")
			.done(function(data) {
				appBj.deleteChannel();
				
				// 방송종료 버튼
				broadcastEndBtn.style.display = "none";
				// 방송적용 버튼
				broadcastInfoUpdBtn.style.display = "none";
				// 방송시작 버튼
				broadcastStartBtn.style.display = "inline-block";
				
				// 방송상태 변경
				broadcastStatusCheck = false;
				
				$("video").remove();	// 비디오 태그 삭제
				$("#applyBroadcastTitle").html("&nbsp;");
				$(".view-count").text("0");
			})
			.fail(function(jqxhr, textStatus, error) {
				var err = textStatus + " : " + error;
				alert(err);
			});
		
	});
	
	// 방송 시작 버튼 이벤트
	broadcastStartBtn.addEventListener("click", function(event) {
		event.preventDefault();
		if(PlayRTC.utils.userMediaSupport) {
			appBj.createChannel();
		} else {
			alert("방송 가능한 미디어 장치가 없습니다.");
		}
		
	}, false);
	
	// 방송 종료 버튼 이벤트
	broadcastEndBtn.addEventListener("click", function(event) {
		event.preventDefault();
		
		if(confirm("방송을 종료하시겠습니까?")) {
			appBj.deleteChannel();
		}
		
	}, false);
	
	/* 방송 종료 이벤트(브라우저 X 버튼) */
	window.onbeforeunload = function(event) {
		if(broadcastStatusCheck == true) {
			return "";
		}
	}
	
	// 방송 중 정보수정
	broadcastInfoUpdBtn.addEventListener("click", function() {
		event.preventDefault();
		var param = $("#broadcastForm").serialize();
		$.getJSON( "updateBroadcast.do", param )
			.done(function(data) {
				$("#applyBroadcastTitle").text(data.broadcastTitle);
				alert("적용되었습니다.");
			})
			.fail(function(jqxhr, textStatus, error) {
				var err = textStatus + " : " + error;
				alert(err);
			});
	});
	
	// 방송 중 채팅
	sendTextBtn.addEventListener("click", function(event) {
		if(!broadcastStatusCheck) {
			$("#sendTextArea").val("");
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
			appBj.sendText(sendMessage);
			
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
			chatP.style.workBreak = "break-all";
			chatP.textContent = message;
			
			chatDiv2.appendChild(chatH3);
			chatDiv1.appendChild(chatDiv2);
			chatDiv1.appendChild(chatP);
			chattingArea.appendChild(chatDiv1);
			
			// 채팅 등록 후 스크롤 가장 마지막으로
			chattingArea.scrollTop = chattingArea.scrollHeight;
		}
		
		$("#sendTextArea").val("").focus();
	}, false);
	
	/* End BJ 방송 관련 Javascript */
	
	// 동적 크기 조절
	$(function() {
		$("#videoArea").css( "height", $("#leftArea").width()/1.35 );
		$("#chattingArea").css( "height", $("#videoArea").height()-130 );
		$("#viewerList").css( "height", $("#chattingArea").height()/1.75 );
		$(window).resize(function() {
			$("#videoArea").css( "height", $("#leftArea").width()/1.35 );
			$("#chattingArea").css( "height", $("#videoArea").height()-130 );
			$("#viewerList").css( "height", $("#chattingArea").height()/1.75 );
		});
	});
	
</script>
<!-- End Page Javascript Code -->

<!--========== END JAVASCRIPTS ==========-->
</body>
<!-- END BODY -->
