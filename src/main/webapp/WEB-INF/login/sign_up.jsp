	<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<style type="text/css">
#signup-wrap {
  display: none;
  position: fixed;
  top: 25%;
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
    font-size: 15px;
    line-height: 35px;
    color: #666666;
}
#signup-wrap .login {
    padding: 40px 0;
    color: #2e2e2e;
    width: 500px;
}
#signup-wrap .login fieldset {
    position: relative;
    width: 380px;
    margin-left: 40px;
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
table td, th {
	padding: 10px;
    height: 50px;
}
fieldset div {
    color: #353535;
    background: #fff;
    line-height: 20px;
    display: inline-block;
    vertical-align: middle;
}


input{
	border-radius: 5px;
}
</style>
</head>
<body>

<form id="writeForm">
<div id="signup-wrap" class="xans-element- xans-member xans-member-login memberloginbox-popup ">
	<div class="login">
	    <div id="logintitle">
	        <h2>Member Join</h2>
	        <span>회원가입으로 여러가지 혜택을 누려보세요.</span>
	    </div>
	    <fieldset>
	    	<table border="1px " cellpadding="5" cellspacing="0" >
				<tr>
					<th>아이디</th>
					<td>
					 <input type="text" name="id" id="id" size="12" placeholder="아이디 입력">
					 <input type="hidden" id="check" value="">
					 <div id="idDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td>
					 <input type="password" name="pwd" id="pwd" size="30" >
					 <div id="pwdDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>재확인</th>
					<td>
					 <input type="password" name="rdpwd" id="repwd" size="30" >
					 <div id="repwdDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>이름</th>
					<td>
					 <input type="text" name="name" id="name" placeholder="이름 입력">
					 <div id="nameDiv"></div>
					</td>
				</tr>
				
				<tr>
				 <th>이메일</th>
				 <td>
				  <input type="text" name="email1" id="email1" style="width: 100px;">
				@
				<input type="text" name="email2" id="email2" style="width: 100px;">
				&nbsp;
				<select name="email3" id="email3" style="width: 100px;" onchange="select()">
					<option value="">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
				</select>
				<br>
				<input type="hidden" name="codeC" id="codeC" >
				<input type="text" name="code" id="code" placeholder="인증번호 입력" size="12" maxlength="6">
				<input type="button" value="인증번호 받기" id="checkBtn">
				<div id="codeDiv"></div>
				 </td>
				</tr>
				
				<tr>
				 <th>휴대폰</th>
				 <td>
				  <select name="tel1" style="width: 70px;">
				 <option value="010">010</option>
				 <option value="011">011</option>
				 <option value="019">019</option>
				 <option value="070">070</option>
				</select>
				-
				<input type="text" name="tel2" style="width: 70px;" maxlength="4">
				-
				<input type="text" name="tel3" style="width: 70px;" maxlength="4">
				 </td>
				</tr>
				
				<tr>
				 <th>주소</th>
				 <td>
				  <input type="text" name="zipcode" id="zipcode" size="10" placeholder="우편번호" readonly>
				  <input type="button" value="우편번호검색" onclick="execDaumPostcode()">
				<br>
				<input type="text" name="addr1" id="addr1" style="width: 350px;" placeholder="주소" readonly/>
				<br>
				<input type="text" name="addr2" id="addr2" style="width: 350px;" placeholder="상세주소" />
				 </td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
					 <input type="button" value="회원가입" id="writeBtn">
					 <input type="reset" value="다시작성">
					</td>
				</tr>
			 </table>
		</fieldset>
	</div>
</div>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$('#id').focusout(function(){ //중복 아이디 체크
	if($('#id').val() == ''){
		$('#idDiv').text('먼저 아이디를 입력하세요.');
		$('#idDiv').css('color', 'red');
		
	}else{
		//서버 요청
		$.ajax({
			type: 'post',
			url: '/OhMyGoal/board/checkId',
			data: 'id='+$('#id').val(), //서버로 보내는 데이터
			dataType: "text", //서버로부터 받은 데이터형, "text", "html", "xml", "json"
			success: function(data){
				data = data.trim();
				
				if(data == 'exist'){
					$('#idDiv').text('사용 불가능한 아이디입니다.');
					$('#idDiv').css('color', 'red');
					
				}else if(data == 'non_exist'){
					$('#idDiv').text($('#id').val()+' 는 사용 가능한 아이디입니다.');
					$('#idDiv').css('color', 'blue');
					
					//중복체크 확인용
					$('#check').val($('#id').val());
				}
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});
function select(){
	document.getElementById("email2").value = document.getElementById("email3").value;
}
$('#checkBtn').click(function(){
	if($('#checkBtn').val() == '인증번호 받기'){ //인증번호 받기
		$('#checkBtn').val('인증번호 확인');
		//$("#code").attr("placeholder", "인증번호 입력");
		
		$.ajax({
			type: 'post',
			url: '/OhMyGoal/email/send',
			data: 'email1='+$('#email1').val()+'&email2='+$('#email2').val(), //서버로 보낼 데이터
			dataType: 'text', //서버로부터 받는 자료형, text, xml, html, json
			success: function(data){
				$('#code').val('');
				$('#codeC').val(data);
			},
			error: function(err){
				console.log(err);
			}
		});
	}
	else{ //인증번호 입력후 확인
		if($('#codeC').val() == $('#code').val()){
			$("#code").hide();
			$('#checkBtn').val('인증완료 되었습니다.');
		}
		else{
			alert("잘못된 번호입니다.");
		}
	}
});
$('#writeBtn').click(function(){ //checkWrite() 함수를 jQuery형식으로 구현
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	$('#repwdDiv').empty();
	$('#nameDiv').empty();
	$('#codeDiv').empty();
	
	if($('#id').val() == ''){
		$('#idDiv').text('아이디를 입력하세요.');
		$('#idDiv').css('color', 'red');
		$('#id').focus();
	}
	else if($('#pwd').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력하세요.');
		$('#pwdDiv').css('color', 'red');
		$('#pwd').focus();
	}
	else if($('#pwd').val() != $('#repwd').val()){
		$('#repwdDiv').text('비밀번호가 맞지 않습니다.');
		$('#repwdDiv').css('color', 'red');
		$('#repwd').focus();
	}
	else if($('#checkBtn').val() != '인증완료 되었습니다.'){
		$('#codeDiv').text('이메일 인증을 진행해주세요.');
		$('#codeDiv').css({'color': 'red', 'font-size': '8pt'});
		$('#code').focus();
	}
	else if($('#code').val() == ''){
		
	}
	else{
		$.ajax({ //처리하고 반드시 해당 자리로 돌아온다.
			type: 'post',
			url: '/OhMyGoal/board/sign_up',
			data: $('#writeForm').serialize(),
			dataType: 'text',
			success: function(data){
				alert('회원가입을 축하합니다');
				location.href = '/OhMyGoal/';
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});
/* Daum 우편번호 */
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수
            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}
</script>

</body>
</html>