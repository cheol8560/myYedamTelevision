<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
<script type="text/javascript">

	function chkDupId() {
		var prmId = $('#insertId').val();

		if ($("#insertId").val() == '') {
			alert('ID를 입력해주세요.');
			return;
		}

		$.ajax({
			type : 'POST',
			data : "memberId=" + prmId,
			dataType : 'text',
			url : './chkDupId.do',
			success : function(rData, textStatus, xhr) {
				var chkRst = rData;
				if (chkRst==0) {
					alert("등록 가능 합니다.");
					$("#idChk").val('Y');
				} else {
					alert("중복 되어 있습니다.");
					$("#idChk").val('N');
				}
			},
			error : function(xhr, status, e) {
				alert(e);
			}
		});
	}

	function insertChk() {

		var frm = document.companyForm;

		if ($("#idChk").val() == 'Y' && $("#NickChk").val() == 'Y' && $("#MailChk").val() == 'Y') {
			return true;
		} else if($("#idChk").val() == 'N'){
			alert('ID중복체크를 해주세요.');
			return false;
		} else if($("#NickChk").val() == 'N'){
			alert('닉네임 중복체크를 해주세요.');
			return false;
		} else if($("#MailChk").val() == 'N'){
			alert('E-Mail 중복체크를 해주세요.');
			return false;
		} else {
			alert('중복체크 & 입력하지 않은 정보가 있습니다.');
			return false;
		}
	}
	/* -------------------------------------------------------------------------------------- */
	
	function chkDupNick() {
		var prmNick = $('#insertNick').val();

		if ($("#insertNick").val() == '') {
			alert('Nick를 입력해주세요.');
			return;
		}

		$.ajax({
			type : 'POST',
			data : "prmNick=" + prmNick,
			dataType : 'text',
			url : './chkDupNick.do',
			success : function(rData, textStatus, xhr) {
				var chkRst = rData;
				if (chkRst==0) {
					alert("등록 가능 합니다.");
					$("#NickChk").val('Y');
				} else {
					alert("중복 되어 있습니다.");
					$("#NickChk").val('N');
				}
			},
			error : function(xhr, status, e) {
				alert(e);
			}
		});
	}

	/* ----------------------------------------------------------------------------------- */
		function chkDupMail() {
		var prmMail = $('#insertMail').val();

		if ($("#insertMail").val() == '') {
			alert('E-Mail을 입력해주세요.');
			return;
		}

		$.ajax({
			type : 'POST',
			data : "prmMail=" + prmMail,
			dataType : 'text',
			url : './chkDupMail.do',
			success : function(rData, textStatus, xhr) {
				var chkRst = rData;
				if (chkRst==0) {
					alert("등록 가능 합니다.");
					$("#MailChk").val('Y');
				} else {
					alert("중복 되어 있습니다.");
					$("#MailChk").val('N');
				}
			},
			error : function(xhr, status, e) {
				alert(e);
			}
		});
	}

	
</script>
 --%>
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
                <form class="login-form" action="${pageContext.request.contextPath}/login.do" method="post">
                    <div class="margin-b-30">
                        <h1 class="login-form-title">Login</h1>
                        <p>로그인 후에 이용하실 수 있습니다.</p>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" autocomplete="on" placeholder="Member ID" name="memberId" id="memberId"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" autocomplete="on" placeholder="Password" name="password" id="password"/>
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
                <form class="forgot-password-form display-none" action="${pageContext.request.contextPath}/sendMail.do" method="post">
                    <div class="margin-b-30">
                        <h1 class="login-form-title">아이디/비밀번호 찾기</h1>
                        <p>이메일을 통해 비밀번호를 찾을 수 있습니다.</p>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" autocomplete="on" placeholder="ID" name="memberId"/>
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
                <form class="signup-form display-none" action="${pageContext.request.contextPath}/memberInsert.do" method="post"
                			enctype="multipart/form-data">
                    <div class="margin-b-30">
                        <h1 class="login-form-title">회원가입</h1>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" id="memberId" placeholder="ID" name="memberId"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" autocomplete="on" id="signup_password" placeholder="Password" name="password"/>
                    </div>
                    <div class="form-group">
                       	<input class="form-control" type="password" autocomplete="on" id="confirm_password" placeholder="Confirm Password" name="confirm_password"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" autocomplete="on" id="memberName" placeholder="name" name="memberName"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" autocomplete="on" id="nickName" placeholder="nickname" name="nickName"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="date" autocomplete="on" id="birthDate" placeholder="birth" name="birthDate"/>
                    </div>
                    
                    <div class="form-group">
                        <input class="form-control" type="text" id="email" placeholder="Email" name="email"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" autocomplete="on" id="tel" placeholder="phoneNum" name="tel"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="file" autocomplete="on" id="insertImg" placeholder="img" name="uploadFile"/>
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