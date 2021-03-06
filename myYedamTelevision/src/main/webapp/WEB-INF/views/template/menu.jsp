<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!--========== HEADER VERTICAL ==========-->
    <header class="header-vertical scrollbar">
        <!-- Navbar -->
        <nav class="navbar" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="menu-container">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="toggle-icon"></span>
                    </button>

                    <!-- BJ 이미지 -->
                    <div class="navbar-logo">
						<c:if test="${empty login}">	
							<img class="navbar-logo-img" src="${pageContext.request.contextPath}/assets/img/mayetel-logo.png" 
								 alt="My Yedam Television">
						</c:if>
						<c:if test="${!empty login}">
							<img class="navbar-logo-img" src="./img/${login.memberImage}" >
						</c:if>
                    </div>
                    <!-- End Logo -->
                    
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-collapse">
                    <div class="menu-container">
    					<!-- BJ 닉네임 -->
    					<div class="row text-center margin-b-20">
    					<c:if test="${!empty login}">
							<p>
								<span class="font-size-18 fweight-700">${login.nickName}</span>
								<span class="font-size-16">님</span>
							</p>
    					</c:if>
    					</div>
    					<!-- End BJ 닉네임 -->                
	                    
						<!-- 로그인 / 방송하기 버튼 -->
	                    <div class="row text-center margin-b-30">
	                    <c:if test="${empty login}">
							<button type="button" class="btn-dark-bg btn-base-animate-to-top btn-base-md radius-50" 
									onclick="location.href='${pageContext.request.contextPath}/login.do';">
								<b>로그인</b>
	                        	<span class="btn-base-element-md">
	                        		<i class="btn-base-element-icon fa fa-sign-in"></i>
	                        	</span>
	                    	</button>       
	                    </c:if>
	                    <c:if test="${!empty login}">
							<button type="button" class="btn-dark-bg btn-base-animate-to-top btn-base-md radius-50"
									onclick="bjOpen('${pageContext.request.contextPath}/insUpdBroadcastForm.do', '${login.nickName}')">
								<b>방송하기</b>
	                        	<span class="btn-base-element-md">
	                        		<i class="btn-base-element-icon fa fa-video-camera"></i>
	                        	</span>
	                    	</button>
	                    </c:if>
						</div>
			            <!-- End 방송하기 버튼 -->                    

						<!-- 사용자 메뉴 -->
                        <ul class="header-vertical-menu margin-b-30">
                            
                            <!-- Home -->
                            <li class="nav-item nav-main-item">
                                <a class="nav-item-child nav-main-item-child nav-main-item-child-dropdown active font-size-18 fweight-700" 
                                	href="javascript:void(0);" onclick="location.href='getOnBroadcastList.do'">
                                	<i class="bordered-icon-box-item fa fa-home" style="padding-right:5px;"></i>
                                	Home
                                </a>
                            </li>
                            <!-- End Home -->
                            
                            <!-- My 정보 -->
                            <li class="nav-item nav-main-item">
                                <a class="nav-item-child nav-main-item-child nav-main-item-child-dropdown active font-size-18 fweight-700" 
                                	href="javascript:void(0);">
                                	<i class="bordered-icon-box-item fa fa-user" style="padding-right:5px;"></i>
                                	My 정보
                                </a>
                                <ul class="nav-dropdown-menu">
                                    <!-- 회원정보수정 -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/correctMemberForm.do">회원정보수정</a>
                                    </li>
                                    <!-- End 회원정보수정 -->
                                    <!-- 회원탈퇴 -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/deleteMemberForm.do">회원탈퇴</a>
                                    </li>
									<c:if test="${login.memberId == 'admin'}">
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/adminIndex.do">관리자페이지</a>
                                    </li>
                                    </c:if>
                                    <!-- End 회원탈퇴 -->
                                </ul>
                            </li>
                            <!-- End My 정보 -->

                            <!-- My 기쁨 -->
                            <li class="nav-item nav-main-item">
                                <a class="nav-item-child nav-main-item-child nav-main-item-child-dropdown active font-size-18 fweight-700" 
                                	href="javascript:void(0);">
                                	<i class="bordered-icon-box-item fa fa-gift" style="padding-right:5px;"></i>
                                	My 기쁨
                                </a>
                                <ul class="nav-dropdown-menu">
                                 
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/getChargeList.do">충전 신청 및 확인</a>
                                    </li>
                                    <!-- End -->
                                    <!--  -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/getExchangeList.do">환전 신청 및 확인</a>
                                    </li>
                                    <!-- End -->
                                    <!--  -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/getReceivePointList.do">받은 기쁨내역</a>
                                    </li>
                                    <!-- End -->
                                    <!--  -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/getSendPointList.do">선물한 기쁨내역</a>
                                    </li>
                                    <!-- End -->
                                </ul>
                            </li>
                            <!-- End My 기쁨 -->

                            <!-- 고객센터 -->
                            <li class="nav-item nav-main-item">
                                <a class="nav-item-child nav-main-item-child nav-main-item-child-dropdown active font-size-18 fweight-700" 
                                	href="javascript:void(0);">
                                	<i class="bordered-icon-box-item fa fa-question-circle" style="padding-right:5px;"></i>
                                	고객센터
                                </a>
                                <ul class="nav-dropdown-menu">
                                    <!-- 공지사항 -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/getNoticeList.do">공지사항</a>
                                    </li>
                                    <!-- End 공지사항 -->
                                    <!-- 1:1 문의하기 -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    		href="${pageContext.request.contextPath}/insertInquiry.do">1:1 문의하기</a>
                                    </li>
                                    <!-- End 1:1 문의하기 -->
                                    <!-- My 문의내역 -->
                                    <li class="nav-dropdown-menu-item">
                                    	<a class="nav-dropdown-menu-link font-size-14" 
                                    	href="${pageContext.request.contextPath}/getInquiryList.do">My 문의내역</a>
                                    </li>
                                    <!-- End My 문의내역 -->
                                </ul>
                            </li>
                            <!-- End 고객센터 -->

                        </ul>
                        <!-- End 사용자 메뉴 -->
                        
                    </div>
                </div>
                <!-- End Navbar Collapse -->
	
			</div>
        </nav>
        <!-- Navbar -->
    </header>
    <!--========== END HEADER VERTICAL ==========-->