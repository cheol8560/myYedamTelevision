<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function chkDupNick() {
		var nickName = $("#nickName").val();

		if ($("#nickName").val() == '') {
			alert('Nick를 입력해주세요.');
			return;
		}

		if ($("#nickName").val() != '${member.nickName}') {
			$.ajax({
				type : 'POST',
				data : "nickName=" + nickName,
				dataType : 'text',
				url : './chkDupNick.do',
				success : function(rData, textStatus, xhr) {
					var chkRst = rData;
					if (chkRst == "true") {
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
		} else {
			$("#NickChk").val('Y');
		}
	}
	
	
	/* ----------------------------------------------------------------------------------- */

	function chkDupMail() {
		var email = $('#email').val();

		if ($("#email").val() == '') {
			alert('E-Mail을 입력해주세요.');
			return;
		}

		if ($("#email").val() != '${member.email}') {
		$.ajax({
			type : 'POST',
			data : "email=" + email,
			dataType : 'text',
			url : './chkDupMail.do',
			success : function(rData, textStatus, xhr) {
				var chkRst = rData;
				if (chkRst == "true") { 
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
		} else {
			$("#MailChk").val('Y');
		}
	}

	function insertChk() {

		var frm = document.companyForm;

		if ($("#NickChk").val() == 'Y' && $("#MailChk").val() == 'Y') {
			return true;
		} else if ($("#NickChk").val() == 'N') {
			alert('닉네임 중복체크를 해주세요.');
			return false;
		} else if ($("#MailChk").val() == 'N') {
			alert('E-Mail 중복체크를 해주세요.');
			return false;
		} else {
			alert('중복체크 & 입력하지 않은 정보가 있습니다.');
			return false;
		}
	}
</script>

		<!--========== PAGE CONTENT ==========-->
		<!-- Login -->
		<div class="content-sm container center-block">
			<!-- Login -->
			<div class="login">
				<!-- Login Form Logo -->
				<div class="margin-b-50">
					<a href="${pageContext.request.contextPath}/"> <img
						class="login-form-logo"
						src="${pageContext.request.contextPath}/assets/img/mayetel-logo.png"
						alt="Home">
					</a>
				</div>
				<!-- End Login Form Logo -->

				<div class="login-content radius-3 margin-b-30 form-horizontal">
					<form class="signup-form" onsubmit="return insertChk();"
						action="${pageContext.request.contextPath}/correctMember.do"
						method="post" enctype="multipart/form-data">
						<div class="margin-b-30">
							<h1 class="login-form-title">회원수정</h1>
						</div>
						
						
						<div class="form-group">
							<input class="form-control" type="text" autocomplete="on"
								id="memberId" placeholder="ID" name="memberId" 
								value="${member.memberId}" readonly="readonly"/>
						</div>
						
						<div class="form-group">
							<input class="form-control" type="password" autocomplete="on"
								id="signup_password" placeholder="Password" name="password" 
								value="${member.password}" />
						</div>
						<div class="form-group">
							<input class="form-control" type="password" autocomplete="on"
								id="confirm_password" placeholder="Confirm Password"
								name="confirm_password" value="${member.password}" />
						</div>
						
						<div class="form-group">
							<input type="hidden" id="NickChk" value="N">
							<div class="col-md-9">
								<input class="form-control" type="text" autocomplete="on"
									id="nickName" placeholder="nickname" name="nickName" 
									value="${member.nickName}" />
							</div>
							<button class="col-md-3 control-label" type="button" onclick="chkDupNick();">중복체크</button>
						</div>
						
						<div class="form-group">
							<input type="hidden" id="MailChk" value="N">
							<div class="col-md-9">
								<input class="form-control" type="text" id="email"
									placeholder="Email" name="email" 
									value="${member.email}"/>
							</div>
							<button class="col-md-3 control-label" type="button" onclick="chkDupMail();">중복체크</button>
						</div>
						
						<div class="form-group">
							<input class="form-control" type="text" autocomplete="on"
								id="tel" placeholder="phoneNum" name="tel" 
								value="${member.tel}"/>
						</div>
						
						<div class="form-group">
							<input class="form-control" type="file" autocomplete="on"
								id="insertImg" placeholder="img" name="uploadFile" 
								value="${member.memberImage}"/>
						</div>
						
						<button type="submit" id="signup-submit-btn" 
							class="btn-base-bg btn-base-sm btn-block radius-3 margin-b-30">회원수정
							완료</button>
					</form>
				</div>
			</div>
		</div>
