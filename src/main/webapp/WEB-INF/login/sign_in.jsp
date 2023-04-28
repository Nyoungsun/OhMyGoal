<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/35dbfa967d.js" crossorigin="anonymous"></script>
<title>로그인</title>
<style type="text/css">
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}
*{
font-family: 'Pretendard-Regular';
}
#login-wrap {
  display: none;
  position: fixed;
  top: 35%;
  left: 45%;
  margin-top: -100px;
  margin-left: -150px;
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
  z-index: 1500;
}
#login-wrap fieldset li {
    font: 0.75em 'Nanum Gothic',Verdana,Dotum,AppleGothic,sans-serif;
    font-family: 'Montserrat','Nanum Gothic',sans-serif;
    color: #353535;
    background: #fff;
    line-height: 20px;
}
.link {
    font: 0.75em 'Nanum Gothic',Verdana,Dotum,AppleGothic,sans-serif;
    font-family: 'Montserrat','Nanum Gothic',sans-serif;
    color: #353535;
    background: #fff;
    line-height: 20px;
}
#logintitle {
    margin-top: 0;
    margin-bottom: 30px;
    text-align: center;
}
#logintitle h2 {
    font-weight: bold;
    font-size: 15px;
    color: #3c3c3c;
}
#logintitle span {
    font-size: 12px;
    line-height: 35px;
    color: #666666;
}
#login-wrap .login {
    margin: 0 auto;
    padding: 40px 0;
    color: #2e2e2e;
    width: 500px;
}
#login-wrap fieldset {
    position: relative;
    width: 380px;
    margin: 0 auto;
}
img, fieldset {
    border: none;
    vertical-align: top;
}
#login-wrap .idbox input {
    border: 1px solid #ccc;
    width: 258px;
    height: 28px;
    margin-bottom: 5px;
    color: #000;
    font-size: 12px;
    background-image: url(/web/upload/ga09/login/id.gif);
    background-repeat: no-repeat;
    background-position-x: 10px;
    background-position-y: 12px;
}
#login-wrap .pwbox input {
    border: 1px solid #eaeaea;
    width: 258px;
    height: 28px;
    margin: 0;
    color: #000;
    font-size: 12px;
    background-image: url(/web/upload/ga09/login/pw.gif);
    background-repeat: no-repeat;
    background-position-x: 10px;
    background-position-y: 12px;
}
.memberloginbox-popup .login fieldset li a {
    color: rgb(46, 46, 46);
}
.memberloginbox-popup .login fieldset li {
    float: left;
}
.memberloginbox-popup .login fieldset .link {
    position: relative;
    margin-top: 25px;
    padding: 25px 0px 0px;
    color: rgb(83, 83, 83);
    border-top: 1px solid rgb(233, 233, 233);
}
.memberloginbox-popup .login img {
    opacity: 1;
    transition-duration: 0.3s;
  
}
.memberloginbox-popup .login fieldset > a {
    position: absolute;
    top: 0;
    right: 0;
}
legend {
    visibility: hidden;
    position: absolute;
    left: -9999px;
    top: -9999px;
    width: 0;
    height: 0;
    line-height: 0;
}
.memberloginbox-popup .login fieldset .link a {
    position: absolute;
    top: 25px;
    right: 0;
}
.security {
    padding: 0;
    margin: 0;
    color: #757575;
}
.fa-check:before {
    content: "\f00c";
}
.fa-lock:before {
    content: "\f023";
}
/* 작동안함 */
#login-wrap input[type=text], #login-wrap input[type=password] {
    height: 28px;
    line-height: 20px;
    padding: 5px 4px;
    border: 1px solid #eaeaea;
    color: #000;
    font-size: 12px;
}
.memberloginbox-popup .login fieldset ul {
    overflow: hidden;
    padding: 0px;
    margin-bottom: 0px;
    border: 0px;
}
.memberloginbox-popup .login a:hover {
    text-decoration: none;
}
.memberloginbox-popup .login fieldset .security {
    padding: 0px;
    margin: 0px;
    color: rgb(117, 117, 117);
}
</style>
</head>
<body>

<div id="login-wrap" class="xans-element- xans-member xans-member-login memberloginbox-popup ">
	<div class="login">
	    <div id="logintitle">
	        <h2>Member Login</h2>
	        <span>가입 시 입력하신 아이디와 비밀번호로 로그인이 가능합니다.</span>
	    </div>
	    <fieldset>
	        <legend>회원로그인</legend>
	        <label class="idbox" title="아이디">
	            <input id="login_id" name="login_id" fw-filter="isFill" fw-label="아이디" fw-msg=""
	                class="inputTypeText" placeholder="ID" value="" type="text" />
	        </label>
	        <label class="pwbox" title="비밀번호">
	            <input id="login_pwd" name="login_pwd" fw-filter="isFill&isMin[4]&isMax[16]" fw-label="패스워드"
	                fw-msg="" autocomplete="off" placeholder="PASSWORD" value="" type="password" />
	        </label>
	        <a href="#none" id="loginBtn"><img
	                src="/OhMyGoal/image/btn_login.gif" alt="로그인" /></a>
	        <ul style="margin-top:15px">
	            <li style="list-style-type: none;">
	            	<a href="member/findIdPwd">
	            		<i id="findIdPwd" class="fas fa-check" style="color:#979797; margin-right:5px; font-size:10px"></i>아이디/비밀번호 찾기
	            	</a>
	            </li>
	            <li style="float:right; list-style-type: none;">
	                <p class="security">
	                    <i class="fas fa-lock" style="color:#979797; font-size:10px"></i>
	                    <!-- <img src="https://img.echosting.cafe24.com/design/skin/default/member/ico_access.gif" alt="보안접속" /> -->
	                    보안접속
	                </p>
	            </li>
	            <div style="clear:both"></div>
	        </ul>
	        <p class="link">
	            회원가입을 하시면 다양하고 특별한<br />혜택이 준비되어 있습니다.
	            <a id="sign_up">
	            	<img src="https://minav.co.kr/web/upload/ga09/login/btn_join.gif" style="margin-top:0" alt="회원가입" />
	            </a>
			</p>
		</fieldset>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$('#sign_up').click(function() {
	$('#login-wrap').fadeOut(300);
	$('#signup-wrap').fadeIn(300);
});

$('#loginBtn').click(function(){
	$.ajax({
		type: 'post', //'get' or 'post'
		url: '/OhMyGoal/board/login',
		data: 'id='+$('#login_id').val()+'&pwd='+$('#login_pwd').val(), //서버로 보낼 데이터(id, pwd)
		dataType: 'text', //서버로부터 받는 자료형, text, xml, html, json
		success: function(data){
			data = data.trim();
			
			if(data == 'admin'){
				alert("로그인에 성공하였습니다.")
				location.href = '/OhMyGoal/admin/adminMain';
			}else if(data == 'true'){
				alert("로그인에 성공하였습니다.")
				location.href = '/OhMyGoal/';
			}else{
				alert("아이디 또는 비밀번호가 맞지 않습니다.")
			}
		},	
		error: function(err){
			console.log(err);
		}
	});
});
</script>
</body>
</html>
