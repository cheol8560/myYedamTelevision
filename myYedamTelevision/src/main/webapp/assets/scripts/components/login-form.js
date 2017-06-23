// Login
var Login = function() {
    "use strict";
    
    // Login Form
    var handleLoginForm = function() {
        $(".login-form").validate({
            rules: {
            	memberId: {
                    required: true,
                    remote: {
            			type: "post",
            			url: "./chkLoginId.do"
            		}
                },
                password: {
                    required: true
                }
            },
            messages: {
            	memberId: {
                    required: "ID를 입력해주세요.",
                    remote:"존재하지 않는 ID입니다."
                },
                password: {
                    required: "비밀번호를 입력해주세요."
                }
            }
            }), $(".login-form input").keypress(function(e) {
            return 13 == e.which ? ($(".login-form").validate().form() && $(".login-form").submit(), !1) : void 0
        })
    };

    // Forgot Password Form
    var handleForgotPasswordForm = function() {
        $(".forgot-password-form").validate({
            ignore: "",
            rules: {
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                email: {
                    required: "이메일을 입력해주세요."
                }
            }
        }), $(".forgot-password-form input").keypress(function(e) {
            return 13 == e.which ? ($(".forgot-password-form").validate().form() && $(".forgot-password-form").submit(), !1) : void 0
        }), $("#forgot-password").on('click', function() {
            $(".login-form").hide(), $(".forgot-password-form").show()
        }), $("#back-btn").on('click', function() {
            $(".login-form").show(), $(".forgot-password-form").hide()
        })
    };

    // Signup Form
    var handleSignupForm = function() {
        $(".signup-form").validate({
            ignore: "",
            rules: {
            	memberId: {
            		required: true,
            		remote: {
            			type: "post",
            			url: "./chkDupId.do"
            		}
            	},
            	password: {
                    required: true,
                    minlength: 6
                },
                confirm_password: {
                    required: true,
                    minlength: 6,
                    equalTo: "#signup_password"
                },
                memberName: {
                    required: true
                },
                nickName: {
                    required: true,
                    remote: {
            			type: "post",
            			url: "./chkDupNick.do"
            		}
                },
                birthDate: {
                	required: true
                },
                email: {
                    required: true,
                    email: true,
                    remote: {
            			type: "post",
            			url: "./chkDupMail.do"
            		}
                },
                tel: {
                	required: true
                }
            },
            messages: {
            	memberId: {
                	required: "아이디를 입력해주세요.",
                	remote: "중복된 아이디입니다."
                },
                password: {
                    required: "비밀번호를 입력해주세요.",
                    minlength: "비밀번호는 6글자 이상이 필수입니다."
                },
                confirm_password: {
                    required: "비밀번호를 다시 한번 입력해주세요.",
                    minlength: "비밀번호는 6글자 이상이 필수입니다.",
                    equalTo: "위의 비밀번호와 동일하게 입력해주세요."
                },
                memberName: {
                	required: "이름을 입력해주세요."
                },
                nickName: {
                	required: "닉네임을 입력해주세요.",
                	remote: "중복된 닉네임입니다."
                },
                birthDate: {
                	required: "생년월일을 입력해주세요."
                },
                email: {
                	required: "이메일을 입력해주세요.",
                	email: "이메일 형식에 맞춰 입력해주세요.",
                	remote: "중복된 이메일입니다."
                },
                tel: {
                	required: "연락처를 입력해주세요."
                }
            }
        }), $(".signup-form input").keypress(function(e) {
            return 13 == e.which ? ($(".signup-form").validate().form() && $(".signup-form").submit(), !1) : void 0
        }), $("#go-to-signup-form-btn").on('click', function() {
            $(".login-form").hide(), $(".signup-form").show()
        }), $("#back-to-login-form-btn").on('click', function() {
            $(".login-form").show(), $(".signup-form").hide()
        })
    };
    return {
        init: function() {
            handleLoginForm(); // initial setup for login form
            handleForgotPasswordForm(); // initial setup for forgot password form
            handleSignupForm(); // initial setup for signup form
        }
    }
}();

$(document).ready(function() {
    Login.init()
});