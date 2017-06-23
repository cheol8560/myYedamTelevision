<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- BODY -->
<body data-vide-bg="${pageContext.request.contextPath}/include/video/sail-away/sail-away" data-vide-options="{posterType: 'detect'}">

<!-- WRAPPER -->
<div class="wrapper animsition" style="min-height:950px;">   
    <!--========== PAGE CONTENT ==========-->
    <!-- Login -->
    <div class="content-sm container center-block">
        <!-- Login -->
        <div class="login">
            <!-- Login Form Logo -->
            <div class="margin-b-50">
                <a href="${pageContext.request.contextPath}/">
                    <img class="login-form-logo" src="${pageContext.request.contextPath}/assets/img/mayetel-logo.png" alt="Home">
                </a>
            </div>
            <!-- End Login Form Logo -->

            <div class="login-content radius-3 margin-b-30">
                <!-- Login Form -->
                <form class="login-form form-horizontal" action="${pageContext.request.contextPath}/login.do" method="post" >
                    <div class="margin-b-30">
                        <h1 class="login-form-title">Login</h1>
                        <p>로그인 후에 이용하실 수 있습니다.</p>
                    </div>
                    <div class="form-group">
                    	<label for="memberId" class="col-md-3 control-label">아이디</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="text" autocomplete="on" placeholder="Member ID" name="memberId" id="memberId"/>
                    	</div>
                    </div>
                    <div class="form-group">
                    	<label for="password" class="col-md-3 control-label">비밀번호</label>
                    	<div class="col-md-9">
                        <input class="form-control" type="password" autocomplete="on" placeholder="Password" name="password" id="password"/>
                    	</div>
                    </div>
                    <div class="login-form-actions">
                        <a href="javascript:;" id="forgot-password" class="login-form-forgot">아이디/비밀번호 찾기</a>
                    </div>
                    <button type="submit" class="btn-base-bg btn-base-sm btn-block radius-3 margin-b-30">로그인</button>
                    <p>
                        ID가 없으세요?
                        <a href="javascript:;" id="go-to-signup-form-btn">가입하기</a>
                    </p>
                </form>
                <!-- End Login Form -->

                <!-- Forgot Password Form -->
                <form class="forgot-password-form display-none form-horizontal" action="${pageContext.request.contextPath}/sendMail.do" method="post">
                    <div class="margin-b-30">
                        <h1 class="login-form-title">아이디/비밀번호 찾기</h1>
                        <p>이메일을 통해 비밀번호를 찾을 수 있습니다.</p>
                    </div>
                    <div class="form-group">
                    	<label for="memberId" class="col-md-3 control-label">아이디</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="text" autocomplete="on" id="memberId" placeholder="ID" name="memberId"/>
                    	</div>
                    </div>
                    <button type="submit" class="btn-base-bg btn-base-sm btn-block radius-3 margin-b-30">이메일 발송</button>
                    <div class="create-account">
                        <p>
                            로그인 준비가 되었나요?
                            <a href="javascript:;" id="back-btn">로그인</a>
                        </p>
                    </div>
                </form>
                <!-- End Forgot Password Form -->

                <!-- Registration Form -->
                <form class="signup-form display-none form-horizontal" action="${pageContext.request.contextPath}/memberInsert.do" method="post"
                			enctype="multipart/form-data">
                    <div class="margin-b-30">
                        <h1 class="login-form-title">회원가입</h1>
                    </div>
                    <div class="form-group">
	                   	 <label for="memberId" class="col-md-3 control-label">아이디</label>
	                   	 <div class="col-md-9">
                         	<input class="form-control" type="text" id="memberId" placeholder="ID" name="memberId"/>
                         </div>
                    </div>
                    
                    <div class="form-group">
                    	<label for="signup_password" class="col-md-3 control-label">비밀번호</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="password" autocomplete="on" id="signup_password" placeholder="PASSWORD" name="password"/>
                    	</div>
                    </div>
                    
                    <div class="form-group">
                    	<label for="confirm_password" class="col-md-3 control-label">비밀번호</label>
                       	<div class="col-md-9">
                       		<input class="form-control" type="password" autocomplete="on" id="confirm_password" placeholder="CONFIRM PASSWORD" name="confirm_password"/>
                    	</div>
                    </div>
                    
                    <div class="form-group">
                    	<label for="memberName" class="col-md-3 control-label">회원이름</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="text" autocomplete="on" id="memberName" placeholder="NAME" name="memberName"/>
                    	</div>
                    </div>
                    
                    <div class="form-group">
                    	<label for="nickName" class="col-md-3 control-label">닉네임</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="text" autocomplete="on" id="nickName" placeholder="NICK NAME" name="nickName"/>
                    	</div>
                    </div>
                    
                    <div class="form-group">
                    	<label for="email" class="col-md-3 control-label">이메일</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="text" id="email" placeholder="E-MAIL" name="email"/>
                    	</div>
                    </div>
                    
                    <div class="form-group">
                    	<label for="tel" class="col-md-3 control-label">폰번호</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="text" autocomplete="on" id="tel" placeholder="PHONE NUMBER" name="tel"/>
                    	</div>
                    </div>
                    
                    <div class="form-group">
                    	<label for="insertImg" class="col-md-3 control-label">대표사진</label>
                    	<div class="col-md-9">
                        	<input class="form-control" type="file" autocomplete="on" id="insertImg" placeholder="대표이미지" name="uploadFile"/>
                    	</div>
                    </div>
                    
                    <div class="margin-b-30">
                        <p class="font-size-13">
                           가입시 
                            <a href="javascript:;">이용 약관 </a>
                            및 
                            <a href="javascript:;"> 개인 정보 정책</a>에 동의합니다.
                        </p>
                    </div>
                    <button type="submit" id="signup-submit-btn" class="btn-base-bg btn-base-sm btn-block radius-3 margin-b-30" >회원가입 완료</button>
                    <p>
                        로그인 준비가 되었나요?
                        <a href="javascript:;" id="back-to-login-form-btn">로그인</a>
                    </p>
                </form>
                <!-- End Registration Form -->
            </div>
			
            <p class="color-white">&#169; 2016 Prothemes. All Rights Reserved.</p>
        </div>
        <!-- End Login -->
    </div>
    <!-- End Login -->
    <!--========== END PAGE CONTENT ==========-->
</div>
<!-- END WRAPPER -->

<!--========== JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) ==========-->
<!-- CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/html5shiv.js"></script>
<script src="assets/plugins/respond.min.js"></script>
<![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- END CORE PLUGINS -->

<!-- PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.smooth-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.animsition.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/validation/additional-methods.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.html5.video.vide.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- PAGE LEVEL SCRIPTS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/animsition.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/login-form.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!--========== END JAVASCRIPTS ==========-->
</body>
<!-- END BODY -->