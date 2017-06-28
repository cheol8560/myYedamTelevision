<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <div class="navbar">
                <div class="navbar-inner">
                    <div class="sidebar-pusher">
                        <a href="javascript:void(0);" class="waves-effect waves-button waves-classic push-sidebar">
                            <i class="fa fa-bars"></i>
                        </a>
                    </div>
                    <div class="logo-box">
                        <a href="index.html" class="logo-text"><span>MYT</span></a>
                    </div><!-- Logo Box -->
                    <div class="search-button">
                        <a href="javascript:void(0);" class="waves-effect waves-button waves-classic show-search"><i class="fa fa-search"></i></a>
                    </div>
                    <div class="topmenu-outer">
                        <div class="top-menu">
                            <ul class="nav navbar-nav navbar-left">
                                <li>		
                                    <a href="javascript:void(0);" class="waves-effect waves-button waves-classic sidebar-toggle"><i class="fa fa-bars"></i></a>
                                </li>
                                
                               
                                
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                              
                                
                              
                                <!-- <li class="dropdown">
                                    <a href="#" class="dropdown-toggle waves-effect waves-button waves-classic" data-toggle="dropdown">
                                        <span class="user-name">David<i class="fa fa-angle-down"></i></span>
                                        <img class="img-circle avatar" src="assets/images/avatar1.png" width="40" height="40" alt="">
                                    </a>
                                    <ul class="dropdown-menu dropdown-list" role="menu">
                                        <li role="presentation"><a href="profile.html"><i class="fa fa-user"></i>Profile</a></li>
                                        <li role="presentation"><a href="calendar.html"><i class="fa fa-calendar"></i>Calendar</a></li>
                                        <li role="presentation"><a href="inbox.html"><i class="fa fa-envelope"></i>Inbox<span class="badge badge-success pull-right">4</span></a></li>
                                        <li role="presentation" class="divider"></li>
                                        <li role="presentation"><a href="lock-screen.html"><i class="fa fa-lock"></i>Lock screen</a></li>
                                        <li role="presentation"><a href="login.html"><i class="fa fa-sign-out m-r-xs"></i>Log out</a></li>
                                    </ul>
                                </li> -->
                                <li>
                                    <a href="${pageContext.request.contextPath}/login.do" class="log-out waves-effect waves-button waves-classic">
                                        <span><i class="fa fa-sign-out m-r-xs" ></i>Log out</span>
                                    </a>
                                </li>
                                
                            </ul><!-- Nav -->
                        </div><!-- Top Menu -->
                    </div>
                </div>
            </div><!-- Navbar -->
            <div class="page-sidebar sidebar">
                <div class="page-sidebar-inner slimscroll">
                    <br>
                    <ul class="menu accordion-menu">
                        <li><a href="${pageContext.request.contextPath}/adminIndex.do" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-home"></span><p>관리자 홈</p></a></li>
                        <li><a href="${pageContext.request.contextPath}/adminMemberForm.do" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-user"></span><p>회원관리</p></a></li>
                        <li class="droplink"><a href="#" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-envelope"></span><p>공지사항 및 문의</p><span class="arrow"></span></a>
                            <ul class="sub-menu">
                                <li><a href="${pageContext.request.contextPath}/adminNoticeList.do">공지사항 관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/getQuestionListAll.do">문의내역 관리</a></li>
                            </ul>
                        </li>
                        <li class="droplink"><a href="#" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-stats"></span><p>충전 및 환전관리</p><span class="arrow"></span></a>
                            <ul class="sub-menu">
                                <li><a href="${pageContext.request.contextPath}/getTranslatePointList.do">교환관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/adminCharge.do">충전관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/adminExchangeList.do">환전관리</a></li>
                                
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/getContentList.do" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th"></span><p>컨텐츠 관리</p></a></li>
						<li><a href="${pageContext.request.contextPath}/getOnBroadcastList.do" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-log-in"></span><p>사용자 홈</p></a></li>
                </div><!-- Page Sidebar Inner -->
            </div><!-- Page Sidebar -->
          
       
        
 