<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보</title>
<style type="text/css">
#signup-wrap {
  display: none;
  position: fixed;
  top: 30%;
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
.memberloginbox-popup .login {
    margin: 0 auto;
    color: #2e2e2e;
    width: 500px;
}
.memberloginbox-popup .login fieldset {
    width: 380px;
    margin: 0 30px;
}
img, fieldset {
    border: none;
    vertical-align: top;
}
.memberloginbox-popup .login fieldset .link {
    position: relative;
    margin-top: 25px;
    padding: 25px 0px 0px;
    color: rgb(83, 83, 83);
    border-top: 1px solid rgb(233, 233, 233);
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
/* 추가부분 */
#signup-wrap input {
	border: 1px solid #eaeaea;
	height: 28px;
	margin-bottom: 5px;
}
fieldset table {
	position: relative;
    border: none;
    border-left: none;
    border-right: none;
    border-top: 0;
    line-height: 1.5;
    font-family: 'Nanum Gothic',sans-serif;
    font: 0.75em 'Nanum Gothic',Verdana,Dotum,AppleGothic,sans-serif;
}
#signup-wrap table td, th {
	text-align: left;
	padding: 10px;
    height: 50px;
}
#signup-wrap table th {
	white-space: nowrap;
}
fieldset div {
    color: #353535;
    background: #fff;
    line-height: 20px;
    display: inline-block;
    vertical-align: middle;
}
fieldset th {
	background-color: #e9ecef;
}
fieldset td {
	background-color: #fff;
}
</style>
</head>
<body>

<form id="writeForm">
<div id="signup-wrap" class="xans-element- xans-member xans-member-login memberloginbox-popup ">
	<div class="login">
	    <div id="logintitle">
	        <h2>Member Info</h2>
	    </div>
	    <fieldset>
	    	<table border="1" cellpadding="5" cellspacing="0">
				<tr>
					<th>아이디</th>
					<td>
					 <input type="text" name="id" id="id" size="12" readonly>
					 <input type="hidden" id="check" value="">
					 <div id="idDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td>
					 <input type="text" name="pwd" id="pwd" size="30" readonly>
					 <div id="pwdDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>이름</th>
					<td>
					 <input type="text" name="name" id="name" readonly>
					 <div id="nameDiv"></div>
					</td>
				</tr>
				
				<tr>
				 <th>이메일</th>
				 <td>
				  <input type="text" name="email1" id="email1" style="width: 100px;" readonly>
				@
				<input type="text" name="email2" id="email2" style="width: 100px;" readonly>
				 </td>
				</tr>
				
				<tr>
				 <th>휴대폰</th>
				 <td>
				<input type="text" name="tel1" id="tel1" style="width: 70px;" maxlength="4" readonly>
				-
				<input type="text" name="tel2" id="tel2" style="width: 70px;" maxlength="4" readonly>
				-
				<input type="text" name="tel3" id="tel3" style="width: 70px;" maxlength="4" readonly>
				 </td>
				</tr>
				
				<tr>
				 <th>주소</th>
				 <td>
				  <input type="text" name="zipcode" id="zipcode" size="10" placeholder="우편번호" readonly>
				<br>
				<input type="text" name="addr1" id="addr1" style="width: 350px;" placeholder="주소" readonly/>
				<br>
				<input type="text" name="addr2" id="addr2" style="width: 350px;" placeholder="상세주소" readonly/>
				 </td>
				</tr>
			 </table>
		</fieldset>
	</div>
</div>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>