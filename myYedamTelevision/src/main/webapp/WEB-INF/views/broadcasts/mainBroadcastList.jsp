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
						<div data-filter="*" class="cbp-filter-item-active cbp-filter-item"
							 style="padding: 5px 10px 0 0">
							<i class="theme-icons theme-icons-base-hover theme-icons-xs radius-circle fa fa-asterisk"></i>
							All	<div class="cbp-filter-counter"></div>
						</div>
					<c:forEach items="${contentList}" var="content">	
						<div data-filter=".${content.contentCode}" class="cbp-filter-item" style="padding: 5px 10px 0 0">
							<i class="theme-icons theme-icons-base-hover theme-icons-xs radius-circle ${content.contentIcon}"></i>
							${content.contentName} <div class="cbp-filter-counter"></div>
						</div>
					</c:forEach>	
					</div>
					<!-- End Portfolio 5 Columns Grid Filter -->
		
					<!-- Portfolio 5 Columns Grid -->
					<div id="portfolio-5-col-grid" class="cbp">
					
					<c:forEach items="${broadcastList}" var="broadcast">	
						<!-- Cbp Item -->
						<div class="cbp-item ${broadcast.contentCode} theme-portfolio-item-v2 theme-portfolio-item-xs">
							<div class="cbp-caption">
								<div class="cbp-caption-defaultWrap">
									<img src="img/${broadcast.memberImage}" class="img-responsive" style="max-height:180px;">
								</div>
							</div>
							<div class="theme-portfolio-title-heading theme-portfolio-title-heading-sm">
								<h4 class="theme-portfolio-title margin-b-10 text-left">
									<a href="getOnBroadcast.do?broadcastNo=${broadcast.broadcastNo}&memberId=${broadcast.memberId}">
										${broadcast.broadcastTitle}
									</a>
								</h4>
								<span class="theme-portfolio-subtitle" style="padding:15px;"> 
									<span style="float: left;">${broadcast.nickName}</span> 
									<span style="float: right;" class="viewSpan">
										<i class="bordered-icon-box-item fa fa-group"></i> 
										<span class="view-count">0</span> 명 시청
										<span class="channelId" style="display: none;">${broadcast.channelId}</span> 
									</span>
								</span>
							</div>
						</div>
						<!-- End Cbp Item -->
					</c:forEach>
					
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

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/playrtc.js"></script>
<script>
"use strict";

	var app = new PlayRTC({
		projectKey: "60ba608a-e228-4530-8711-fa38004719c1",
		data: true,
		video: false,
		audio: false
	});
	
	window.addEventListener("load", function(event) {
		
		$(".channelId").each(function() {
			var channelId = $(this).text();
			var viewCount = $(this).parent().find(".view-count");
			
			if(channelId != null && channelId != "") {
				app.getPeerList(channelId, function(data) {
					var view = data.peers.length-1;
					viewCount.text(view);
				});
			}
			
		});
	});
	
</script>
		