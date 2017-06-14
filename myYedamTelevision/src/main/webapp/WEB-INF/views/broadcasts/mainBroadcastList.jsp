<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!--========== PAGE CONTENT ==========-->
		<div class="bg-color-sky-light">
			<!-- Theme Portfolio -->
			<div class="content-sm container" style="padding-left:100px; padding-right:100px;">
				<div class="theme-portfolio">
					<!-- Portfolio 5 Columns Grid Filter -->
					<div id="portfolio-5-col-grid-filter" class="cbp-l-filters-alignCenter">
						<div data-filter="*" class="cbp-filter-item-active cbp-filter-item">
							All	<div class="cbp-filter-counter"></div>
						</div>
					<c:forEach items="${contentList}" var="content">	
						<div data-filter=".${content.contentCode}" class="cbp-filter-item">
							${content.contentName} <div class="cbp-filter-counter"></div>
						</div>
					</c:forEach>	
					</div>
					<!-- End Portfolio 5 Columns Grid Filter -->
		
					<!-- Portfolio 5 Columns Grid -->
					<div id="portfolio-5-col-grid" class="cbp">
					
					<c:forEach items="${broadcastList}" var="broadcast" >	
						<!-- Cbp Item -->
						<div class="cbp-item ${broadcast.contentCode} theme-portfolio-item-v2 theme-portfolio-item-xs">
							<div class="cbp-caption">
								<div class="cbp-caption-defaultWrap theme-portfolio-active-wrap">
									<img src="assets/img/970x647/01.jpg" alt="">
									<div class="theme-icons-wrap theme-portfolio-lightbox">
										<a class="cbp-lightbox" href="assets/img/970x647/02.jpg" data-title="Portfolio"> 
											<i class="theme-icons theme-icons-white-bg theme-icons-sm radius-3 icon-focus"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="theme-portfolio-title-heading theme-portfolio-title-heading-sm">
								<h4 class="theme-portfolio-title margin-b-10 text-left">
									<a href="getOnBroadcast.do?broadcastNo=${broadcast.broadcastNo}">
										${broadcast.broadcastTitle}
									</a>
								</h4>
								<span class="theme-portfolio-subtitle" style="padding:15px;"> 
									<span style="float: left;">${broadcast.nickName}</span> 
									<span style="float: right;">
										<i class="bordered-icon-box-item fa fa-group"></i> 2 명 시청
									</span>
								</span>
							</div>
						</div>
						<!-- End Cbp Item -->
					</c:forEach>
					
					
						<!-- Cbp Item -->
						<div class="cbp-item 1 theme-portfolio-item-v2 theme-portfolio-item-xs">
							<div class="cbp-caption">
								<div class="cbp-caption-defaultWrap theme-portfolio-active-wrap">
									<img src="assets/img/970x647/01.jpg" alt="">
									<div class="theme-icons-wrap theme-portfolio-lightbox">
										<a class="cbp-lightbox" href="assets/img/970x647/02.jpg" data-title="Portfolio"> 
											<i class="theme-icons theme-icons-white-bg theme-icons-sm radius-3 icon-focus"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="theme-portfolio-title-heading theme-portfolio-title-heading-sm">
								<h4 class="theme-portfolio-title margin-b-10 text-left">
									<a href="#">
										송욜로의 점심시간
									</a>
								</h4>
								<span class="theme-portfolio-subtitle" style="padding:15px;"> 
									<span style="float: left;">BJ송욜로</span> 
									<span style="float: right;">
										<i class="bordered-icon-box-item fa fa-group"></i> 2 명 시청
									</span>
								</span>
							</div>
						<!-- End Cbp Item -->
						</div>
					</div>
					<!-- End Portfolio 5 Columns Grid -->
		
					<!-- Load More Button -->
					<div id="portfolio-grid-load-more-button" class="cbp-l-loadMore-text">
						<a href="#" class="cbp-l-loadMore-link radius-3" rel="nofollow">
							<span class="cbp-l-loadMore-defaultText">더 보기</span> 
							<span class="cbp-l-loadMore-loadingText">처리중...</span> 
							<span class="cbp-l-loadMore-noMoreLoading">No more works</span>
						</a>
					</div>
					<!-- End Load More Button -->
		
				</div>
			</div>
			<!-- End Theme Portfolio -->
		
		</div>
		<!--========== END PAGE CONTENT ==========-->
