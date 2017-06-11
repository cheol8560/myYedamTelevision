<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- BEGIN BODY -->
<body>

<!-- WRAPPER -->
<div class="wrapper animsition fullheight" >
	<!-- Logo -->
	<div class="bg-color-white" style="border-bottom: 2px solid #00bcd4;">
		<div class="container-sm" style="margin-left: 30px;">
			<div class="col-md-10">
				
				<p class="font-size-30 font-style-italic font-family-droid line-height-2 margin-b-0">
					<a href="${pageContext.request.contextPath}/">My Yedam Television</a>
				</p>
			</div>
			<div class="col-md-2">
			
			</div>
		</div>
	</div>
	<!-- End Logo -->
	
    <!--========== PAGE CONTENT ==========-->
    <!-- Viewer Page -->
    <div class="full-width-container">
        <div class="row no-space-row">
            <!-- Left Area -->
            <div class="col-md-8">
                <!-- Video Player -->
                <div class="full-width-container">
					<video src="${pageContext.request.contextPath}/assets/video/sail-away/sail-away.mp4" autoplay="autoplay" controls="controls" width="100%" height="100%"></video>
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
								<h3 class="icon-box-v4-body-title">송욜로의 점심시간</h3>
								<p class="icon-box-v4-body-text">송욜로</p>
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
			                    <span class="view-count">2</span> 명 시청중
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
                        <div class="blog-sidebar-content scrollbar" style="min-height:665px;">
                           
                        </div>
                        <div class="margin-b-20" style="border-top: 1px solid #00bcd4;">
		                    <!-- Comment Form v1 -->
		                    <div class="bg-color-white">
		                        <!-- Comment Form v1 -->
		                        <form id="comment-form" class="comment-form-v1" action="#" method="get">
		                            <div class="padding-10">
		                                <textarea class="form-control comment-form-v1-input" style="resize:none;" rows="4" 
		                                		  placeholder="Your message" name="textarea"></textarea>
		                            </div>
		                            <div class="row text-right margin-l-10 margin-r-10">
			                            <button type="reset" class="btn-base-brd btn-base-xs radius-3">지우기</button>
			                            <button type="submit" class="btn-base-bg btn-base-xs radius-3">보내기</button>
		                            </div>
		                        </form>
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
<!--========== END JAVASCRIPTS ==========-->
</body>
<!-- END BODY -->
