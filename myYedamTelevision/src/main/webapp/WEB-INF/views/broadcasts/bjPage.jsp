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
                        
	                    <div class="overflow-a" id="chattingArea" style="padding: 10px 0;">
				
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
                        <div class="blog-sidebar-content" id="broadcastFormWrap" style="padding:15px 15px 0 15px;">
							<!-- Comment Form v1 -->
							<form id="broadcastForm" class="comment-form-v1">
								<%-- <input type="hidden" name="broadcastNo" id="broadcastNo" value="${broadcastResult.broadcastNo}"> --%>
								<input type="hidden" name="channelId" id="channelId" value="">
								<div class="row">
									<div class="col-md-12 margin-b-10">
										<label for="broadcastTitle">방송제목</label>
										<input type="text" class="form-control"
											name="broadcastTitle" id="broadcastTitle" value="${broadcastResult.broadcastTitle}"
											required>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 margin-b-10">
										<label for="contentCode">방송주제</label>
										<select id="contentCode" name="contentCode" class="form-control" required>
										<c:forEach items="${contentList}" var="content">
											<option value="${content.contentCode}">${content.contentName}</option>	
										</c:forEach>
										</select>
										<script>
											$("#contentCode").val("${broadcastResult.contentCode}");
										</script>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12" style="margin-bottom:5px;">
										<label for="contentCode">비디오 &amp; 오디오 Mute</label>
										<div class="col-md-6 padding-0"> 
											<div class="col-md-6 text-center font-size-13" style="padding:3px 0;">비디오</div>
											<div class="col-md-6" style="padding: 0 3px 0 3px;">
												<label class="switch"> 
													<input type="checkbox" id="videoMute" disabled="disabled">
													<div class="slider round"></div>
												</label>
											</div>
										</div>
										<div class="col-md-6 padding-0">
											<div class="col-md-6 text-center font-size-13" style="padding:3px 0;">오디오</div>
											<div class="col-md-6" style="padding: 0 3px 0 3px;">
												<label class="switch">
													<input type="checkbox" id="audioMute" disabled="disabled">
													<div class="slider round"></div>
												</label>
											</div>
										</div>
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
                        <div class="blog-sidebar-content overflow-a padding-10" id="viewerList">
                            <!-- Latest Tutorials -->
							
							<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo">
								<button class="btn-custom-bg radius-3">
									${login.nickName } (${login.memberId })
									<i class="bordered-icon-box-item fa fa-star" style="margin-left:5px;"></i>
								</button>
							</div>
							
							<div id="viewerArea">
								<!-- 
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">블랙리스트</span> (<span class="targetId">black</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								
								<div class="btn-group btn-custom-toggle margin-b-10 viewerInfo target">
									<button type="button" class="btn-custom-bg dropdown-toggle radius-3 "
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="targetNickName">송</span> (<span class="targetId">song</span>)
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="#" data-toggle="modal" data-target="#presentPointModal">
												<i class="dropdown-menu-icon icon-lightbulb"></i> 기쁨선물
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-mobile"></i> 강퇴
											</a>
										</li>
										<li>
											<a href="#">
												<i class="dropdown-menu-icon icon-basket"></i> 블랙리스트 등록
											</a>
										</li>
									</ul>
								</div>
								 -->
								
							</div>
							
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
						<strong>주의!</strong> 선물할 기쁨을 입력해주세요.
					</div>

					<div class="alert alert-info collapse font-size-13 text-center" id="pointConfirm" role="alert">
						<strong id="confirmMember"></strong> 님에게 <strong id="confirmPoint"></strong> 기쁨을 선물하시겠습니까?
					</div>

					<div class="alert alert-danger collapse font-size-13 text-center" id="pointFail" role="alert">
						<button type="button" class="close" onclick="$('#pointFail').hide();">
							<span>&times;</span>
						</button>
						<strong>경고!</strong> 보유하신 기쁨이 부족합니다.
					</div>

					<div class="alert alert-danger collapse font-size-13 text-center" id="pointFail2" role="alert">
						<button type="button" class="close" onclick="$('#pointFail2').hide();">
							<span>&times;</span>
						</button>
						<strong>경고!</strong> <span id="pointErrorMsg"></span>
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
	<div class="modal fade" id="leaveModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
						<strong>주의!</strong> <span id="leaveMember" class="fweight-700"></span> 님을 <br>
						강제 퇴장시키시겠습니까?
					</div>

				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn-base-bg btn-base-xs" id="leaveYesBtn">예</button>
					<button type="button" class="btn-grey-brd btn-base-xs" data-dismiss="modal" aria-label="Close">아니오</button>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.animsition.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.appear.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.number.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.smooth-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.wow.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/counter/waypoints.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/counter/jquery.counterup.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/playrtc.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/animsition.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/form-modal.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/counters.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/magnific-popup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/scrollbar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/wow.js"></script>
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
	var viewerArea = document.querySelector("#viewerArea");
	var sendTextBtn = document.querySelector("#sendTextBtn");
	var presentPointBtn = document.querySelector("#presentPointBtn");
	var broadcastStatusCheck = false;
	var appBj;
	var options;
	var targetNickName;
	var targetMemberId;
	var targetPeerId;
	var targetMember;
	var mine = "${login.nickName} (${login.memberId})";
	
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
				// Mute 버튼
				$("#videoMute").removeAttr("disabled");
				$("#audioMute").removeAttr("disabled");
				
				var tP = document.createElement("p");
				tP.style.paddingLeft = "8px";
				tP.classList.add("font-size-12");
				tP.textContent = "▷ 대화방이 개설되었습니다.";
				chattingArea.appendChild(tP);
				
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
		console.log(state);
		if(state === "CONNECTED" || state === "CLOSED") {
			
			// 시청자 목록 출력
			appBj.getPeerList(inputChannelId.value, function(data) {
				
				var peerList = data.peers;
				$("#viewerArea").html("");
				$(".view-count").text("0");
				
				if(peerList.length > 1) {
					var view = peerList.length-1;
					$(".view-count").text(view);
					
					var i = 0;
					
					while(true) {
						if(peerList[i].uid) {
							
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
							tBtn.setAttribute("data-toggle", "dropdown");
							tBtn.setAttribute("aria-haspopup", "true");
							tBtn.setAttribute("aria-expanded", "false");

							// spanTag
							var tSpan = "<span class='targetNickName'>" + peerList[i].userName + "</span> (<span class='targetId'>" + peerList[i].uid +"</span>)";
							tBtn.innerHTML = tSpan;
							
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
							tLi_1_tI.classList.add("icon-lightbulb");
							
							tLi_1_tA.appendChild(tLi_1_tI);
							tLi_1_tA.textContent = "기쁨 선물";
							
							tLi_1.appendChild(tLi_1_tA);
							
							// 두번째 li tag 
							var tLi_2 = document.createElement("li");
									
							var tLi_2_tA = document.createElement("a");
							tLi_2_tA.setAttribute("href", "#");
							tLi_2_tA.setAttribute("data-toggle", "modal");
							tLi_2_tA.setAttribute("data-target", "#leaveModal");
							
							var tLi_2_tI = document.createElement("i");
							tLi_2_tI.classList.add("dropdown-menu-icon");
							tLi_2_tI.classList.add("icon-mobile");
							
							tLi_2_tA.appendChild(tLi_2_tI);
							tLi_2_tA.textContent = "강퇴";
							
							tLi_2.appendChild(tLi_2_tA);
							
							// 세번째 li tag 
							var tLi_3 = document.createElement("li");
									
							var tLi_3_tA = document.createElement("a");
							tLi_3_tA.setAttribute("href", "#");
							
							var tLi_3_tI = document.createElement("i");
							tLi_3_tI.classList.add("dropdown-menu-icon");
							tLi_3_tI.classList.add("icon-mobile");
							
							tLi_3_tA.appendChild(tLi_3_tI);
							tLi_3_tA.textContent = "블랙리스트 등록";
							
							tLi_3.appendChild(tLi_3_tA);
							
							// 태그 구조 생성
							tUl.appendChild(tLi_1);
							tUl.appendChild(tLi_2);
							tUl.appendChild(tLi_3);
							
							tDiv.appendChild(tBtn);
							tDiv.appendChild(tUl);
							viewerArea.appendChild(tDiv);
							
						}
						
						i++;
						
						if (i >= peerList.length) { break; }
					}
				}
			});
		}
	});
	
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
					tP.classList.add("font-size-11");
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
					tH3.classList.add("font-size-13");
					tH3.textContent = sendMember;
					
					tP = document.createElement("p");
					tP.classList.add("services-v5-text");
					tP.classList.add("font-size-12");
					tP.textContent = acceptedMessage;
					
					tDiv2.appendChild(tH3);
					tDiv1.appendChild(tDiv2);
					tDiv1.appendChild(tP);
					chattingArea.appendChild(tDiv1);
					
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
				// Mute 버튼
				$("#videoMute").attr("disabled", "disabled");
				$("#audioMute").attr("disabled", "disabled");
				
				// 방송상태 변경
				broadcastStatusCheck = false;
				
				$("video").remove();	// 비디오 태그 삭제
				$("#applyBroadcastTitle").html("&nbsp;");
				$(".view-count").text("0");
				$("#viewerArea").text(" ");
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
		var param = $("#broadcastForm").serialize() + "&broadcastNo=${broadcastResult.broadcastNo}&broadcastStatus=e1";
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
		var tDiv1;
		var tDiv2;
		var tH3;
		var tP;
		var message = $("#sendTextArea").val();
		var sendMessage = "#2/" + mine + "/ " + "/" + message +"/" + appBj.getPeerId();
		
		event.preventDefault();
		
		if(message) {
			appBj.sendText(sendMessage);
			
			tDiv1 = document.createElement("div");
			tDiv1.classList.add("services-v5");
			tDiv1.style.padding = "0px 15px 0px 15px";
			
			tDiv2 = document.createElement("div");
			tDiv2.classList.add("services-v5-wrap");
			tDiv2.style.marginBottom = "0px";
			
			tH3 = document.createElement("h3");
			tH3.classList.add("services-v5-body-title");
			tH3.classList.add("font-size-13");
			tH3.textContent = mine;
			
			tP = document.createElement("p");
			tP.classList.add("services-v5-text");
			tP.classList.add("font-size-12");
			tP.style.workBreak = "break-all";
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
	$("#viewerArea").on("click", ".target" ,function(e) {
		var nodeName = e.target.nodeName;
		
		if(nodeName == "SPAN" || nodeName == "BUTTON") {
			//console.log(e.target);
			targetNickName = $(e.target).parent().find(".targetNickName").text();
			targetMemberId = $(e.target).parent().find(".targetId").text();
			targetPeerId = appBj.getPeerByUserId(targetMemberId).id;
			targetMember = targetNickName + " (" + targetMemberId + ")";
			//console.log(targetNickName + "/" + targetMemberId + "/" + targetPeerId + "/" + targetMember);
			
			// 기쁨 선물 모달
			$("#receiveMember").text(targetMember);
			$("#inReceiveMemberId").val(targetMemberId);
			// 강퇴 모달
			$("#leaveMember").text(targetMember);
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
			//console.log(data);
			if(data.trans.outErrorcode == -1) {
				$("#pointErrorMsg").text(data.trans.outMessage);
				$("#pointFail2").fadeIn();
			} else if (data.trans.outErrorcode > 0) {
				$(".pointModalClose").click();
				$("#myPoint").text($.number(data.member.point));
				
				var pointMsg = "#4/" + mine + "/" + targetMember + "/" + $.number(inTranslatePoint) + "/" + appBj.getPeerId();
				appBj.sendText(pointMsg);
				
				var tDiv1 = document.createElement("div");
				tDiv1.classList.add("chat-point-wrap");
				
				var tDiv2 = document.createElement("div");
				tDiv2.classList.add("chat-point");
				tDiv2.innerHTML = 
					"<div class='chat-point-img-gradient'>" + 
						"<img class='img-responsive' src='assets/img/round.jpg'>" + 
					"</div>" + 
					"<div class='chat-point-content'>" + 
						"<div class='chat-point-center-align'>" + 
							"<h4 class='chat-point-member'>" + $.number(inTranslatePoint) + "</h4>" + 
							"<span class='chat-point chat-point-member-position'>기쁨!</span>" + 
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
	
	// 모달 닫기 / 취소 버튼 클릭 시
	$(".pointModalClose").click(function() {
		$("#pointAlert").hide();
		$("#pointConfirm").hide();
		$("#pointFail").hide();
		$("#pointFail2").hide();
		$("#inTranslatePoint").val(" ");
		$("#pointEvent1").css("display", "block");
		$("#pointEvent2").css("display", "none");
	});
	
	/* End 방송 중 포인트 선물 */
	
	/* 강퇴 이벤트 */ 
	$("#leaveYesBtn").click(function(e) {
		
		var message = "#5/" + mine + "/" + targetMember + "/ 님이 강제퇴장되셨습니다." + "/" + targetPeerId;
		appBj.sendText(message);
		
		var tP = document.createElement("p");
		tP.style.paddingLeft = "5px";
		tP.classList.add("font-size-11");
		tP.innerHTML = "＃ " + targetMember + " 님이 강제퇴장되셨습니다.";
		chattingArea.appendChild(tP);
		
		$("#leaveModal").modal("hide");
	});
	
	/* End 강퇴 이벤트 */
	
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
	
	// 비디오 & 오디오 mute 이벤트
	function getRemoteMedia(appBj) {
		var val, property;
		var peers = appBj.calling.peers;
		if (peers) {
			for (property in peers) {
				if (peers.hasOwnProperty(property)) {
					if (property.indexOf('TKS') >= 0) {
						val = peers[property];
						return val.peer.getMedia();
					}
				}
			}
		} else {
			return null;
		}
	}
	
	videoMute.addEventListener('click', function() {
		var checked = $(this).is(":checked");
		console.log(checked);
		var local = appBj.getMedia();
		if (local) {
			local.videoMute(!checked);
		}
	}, false);
	
	audioMute.addEventListener('click', function() {
		var checked = $(this).is(":checked");
		console.log(checked);
		var local = appBj.getMedia();
		if (local) {
			local.audioMute(!checked);
		}
	}, false);
	
	/* End BJ 방송 관련 Javascript */

	$(function() {

		// 동적 크기 조절
		$("#videoArea").css("height", $("#leftArea").width() / 1.33);
		$("#chattingArea").css("height", $("#videoArea").height() - 130);
		$("#viewerList").css("height", $("#chattingArea").height() / 1.8);
		$("#viewerArea").css("height", $("#viewerList").height() * 0.85);
		$(window).resize(function() {
			$("#videoArea").css("height", $("#leftArea").width() / 1.35);
			$("#chattingArea").css("height", $("#videoArea").height() - 130);
			$("#viewerList").css("height", $("#chattingArea").height() / 1.8);
			$("#viewerArea").css("height", $("#viewerList").height() * 0.85);
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
