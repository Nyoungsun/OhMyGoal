<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>아이디/비밀번호 찾기</title>
<style type="text/css">
header {
	width: 100%;
	position: sticky;
	top: 0;
	z-index: 1;
	background: #ffffff;
}

#navbarNav a {
	font-weight: bold;
	font-size: 16px;
	color: #212529;
	text-decoration: none
}

.navbar {
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#navbarNav a:hover {
	color: #6c757d;
}

.nav-link {
	color: #333;
	font-weight: 500;
	margin-right: 20px;
}

.OMGlogo img {
	height: 20px;
	margin-top: 15px;
	margin-bottom: 15px;
	margin-left: 20px;
}

input[type="button"], 
input[type="reset"],
input[type="text"] {
	border-radius: 5px;
}

</style>
<!--BootStrap-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!--BootStrap-->

<link rel="stylesheet" href="../css/member/findIdPwd.css">
<link rel="stylesheet" href="../css/member/edit.css">
<link rel="stylesheet" href="../css/member/myPage.css">
<link rel="stylesheet" href="../css/member/checkPwd.css">
<link rel="shortcut icon" href="../img/icon/check.ico">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"
	rel="stylesheet">
</head>
<meta charset="UTF-8">
<body>

	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container" style="">
				<a class="OMGlogo" href="../"> <img 
					src="../img/logo/logo_no_bg2.png" alt="OhMyGoal!"></a> 
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="#navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<div class="navbar-toggler-icon"></div>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav " style="margin-left: 20px;">
						<li class="nav-item"><a class="nav-link" href="../board/about">소개</a></li>
						<li class="nav-item"><a class="nav-link" href="../board/qna">문의하기</a></li>
					</ul>
				</div>
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a id="topnav_loginBtn" class="nav-link"
							href="/OhMyGoal/" style="text-decoration: none;">로그인</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div id="wrap">
		<div class="shadow p-3 mb-5 bg-body rounded find">
			<form name="idFind">
				<h4>
					<strong>아이디 찾기</strong>
				</h4>
				<br>
				<br>
				<div class="findDiv" style="display:flex;" >
					<div style="margin-left: 33%; margin-right: 2%; margin-top: 2.5%;"><h6>이름</h6></div>
					<input type="text" id="findName" style="border-radius:5px; width:25%; heigth:10%; margin-right:2%;">
					<div id="checkFindName" style="margin-top: 2%; color:red;"></div>
				</div>
				<div class="findDiv">
					<div>핸드폰 번호</div>
					<input type="text" id="findPhone" placeholder="'-'(하이픈) 제외" style="border-radius:5px;"> 
					<input type="button" id="recieveNumber" value="인증번호 받기" style="border-radius:5px;">
					<div id="checkFindPhone" style="margin-top: 1%; color:red;"></div>
					<input type="text" id="certification" placeholder="인증번호를 입력하세요" style="border-radius:5px;">
					<div id="checkCertification" style="margin-top: 1%; color:red;" ></div>
				</div>
				<div class="findBtnDiv">
					<input type="button" id="findIdOk" value="확인" style="border-radius:5px;">
					<input type="reset" id="reset" value="다시작성" style="border-radius:5px;">
				</div>
			</form>
		</div>

		<div class="shadow p-3 mb-5 bg-body rounded find">
			<form name="pwdFind">
				<h4>
					<strong>비밀번호 찾기</strong>
				</h4>
				<br>
				<br>
				<div class="findDiv" style="display:flex;">
					<div style="margin-left: 33%; margin-right: 2%; margin-top: 2.5%;"><h6>아이디</h6></div>
					<input type="text" id="findId" style="border-radius:5px; width:25%; heigth:10%; margin-right:2%;">
					<div id="checkFindId" style="margin-top: 2%; color:red;"></div>
				</div>
				<div class="findDiv" >
					<div ><h6>핸드폰 번호</h6></div>
					<input type="text" id="findPhone2" placeholder="'-'(하이픈) 제외" style="border-radius:5px;"> 
					<input type="button" id="recieveNumber2" value="인증번호 받기" style="border-radius:5px;">
					<div id="checkFindPhone2" style="margin-top: 1%; color:red;"></div>
					<input type="text" id="certification2" placeholder="인증번호를 입력하세요" style="border-radius:5px;">
					<div id="checkCertification2" style="margin-top: 1%; color:red;"></div>
				</div>
				<div class="findBtnDiv">
					<input type="button" id="findPwdOk" value="확인" style="border-radius:5px;"> 
					<input type="reset" id="reset" value="다시작성" style="border-radius:5px;">
				</div>
			</form>
		</div>
	</div>
	<footer>
		<p>
			<strong>OhMyGoal! 2023</strong>
		</p>
		<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
		<p>OhMyGoal.help@gmail.com</p>
	</footer>

	<!-- modal -->
	<jsp:include page='findIdResult.jsp'></jsp:include>
	<jsp:include page='findPwdResult.jsp'></jsp:include>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
		
	</script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
	var phoneRegex = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;
	
		//아이디 찾기
		$('#recieveNumber').click(function() {
			$('#checkFindPhone').empty();
			if ($('#findPhone').val() == '' || !phoneRegex.test($('#findPhone').val())) {
				$('#checkFindPhone').text('올바른 핸드폰 번호를 입력하세요.');
				$('#findPhone').focus();
			} else {
				$.ajax({
					type : 'post',
					url : 'send-one',
					async : false,
					data : 'phone=' + $('#findPhone').val(),
					success : function(data) {
						$('#checkFindPhone').text('인증번호 전송 완료');
						$('#findIdOk').click(
								function() {
									$('#checkFindName').empty();
									$('#checkFindPhone').empty();
									$('#checkCertification').empty();
									
									if ($('#findName').val() == '') {
										$('#checkFindName').text('이름을 입력하세요.');
										$('#findName').focus();
									} else if ($('#findPhone').val() == ''
											&& $('#certification').val() == '') {
										$('#checkFindPhone').text('핸드폰 인증을 진행해주세요.');
										$('#findPhone').focus();
									} else if ($('#findPhone').val() != ''
											&& $('#certification').val() == '') {
										$('#checkCertification').text('인증번호를 입력하세요.');
										$('#certification').focus();
									} else if ($('#certification').val() != data){
										$('#checkCertification').text('인증번호가 맞지 않습니다.');
										$('#certification').focus();
									} else {
										$.ajax({
											type : 'post',
											url : 'findId',
											async : false,
											data: 'name=' + $('#findName').val() +'&phone=' + $('#findPhone').val(),
											success: function(data) {
												$('#resultId').text($('#findName').val() + "님의 아이디는 " + data + "입니다.")
												$('#ModalResultId').modal('show');
							                },
							                error: function(err) {
							                    alert('다시 시도해주세요.');
							                }
										});
									}
								});
					},
					error : function(err) {
						alert('다시 시도해주세요.');
					}
				});
			}
		});
		
		//비밀번호 찾기
		$('#recieveNumber2').click(function() {
			$('#checkFindPhone2').empty();

			if ($('#findPhone2').val() == '' || !phoneRegex.test($('#findPhone2').val())) {
				$('#checkFindPhone2').text('올바른 핸드폰 번호를 입력하세요.');
				$('#findPhone2').focus();
			} else {
				$.ajax({
					type : 'post',
					url : 'send-one',
					async : false,
					data : 'phone=' + $('#findPhone2').val(),
					success : function(data) {
						$('#checkFindPhone2').text('인증번호 전송 완료');
						$('#findPwdOk').click(
								function() {
									$('#checkFindId').empty();
									$('#checkFindPhone2').empty();
									$('#checkCertification2').empty();
									
									if ($('#findId').val() == '') {
										$('#checkFindName').text('아이디를 입력하세요.');
										$('#findId').focus();
									} else if ($('#findPhone2').val() == ''
											&& $('#certification2').val() == '') {
										$('#checkFindPhone2').text('핸드폰 인증을 진행해주세요.');
										$('#findPhone2').focus();
									} else if ($('#findPhone2').val() != ''
											&& $('#certification2').val() == '') {
										$('#checkCertification2').text('인증번호를 입력하세요.');
										$('#certification2').focus();
									} else if ($('#certification2').val() != data){
										$('#checkCertification2').text('인증번호가 맞지 않습니다.');
										$('#certification2').focus();
									} else {
										$.ajax({
											type : 'post',
											url : 'findPwd',
											async : false,
											data: 'id=' + $('#findId').val(),
											success: function(data) {
												if(data == 'false'){
													$('#resultPwd').text("존재하지 않는 아이디입니다. 다시 시도해주세요.");
												} else {
													$('#resultPwd').html($('#findId').val() + "님의 임시 비밀번호는 " + data + "입니다. <br>" + 
													"로그인 후 반드시 비밀번호를 변경해주세요.")
												}
												$('#ModalResultPwd').modal('show');
							                },
							                error: function(err) {
							                    alert('다시 시도해주세요.');
							                }
										});
									}
								});
					},
					error : function(err) {
						alert('다시 시도해주세요.');
					}
				});
			}
		});
		
		$('#findIdOk').click(
				function() {
					$('#checkFindName').empty();
					$('#checkFindPhone').empty();
					$('#checkCertification').empty();

					if ($('#findName').val() == '') {
						$('#checkFindName').text('이름을 입력하세요.');
						$('#findName').focus();
					} else if ($('#findPhone').val() == '') {
						$('#checkFindPhone').text('핸드폰 인증을 진행해주세요.');
						$('#findPhone').focus();
					}  else if ($('#certification').val() == '') {
						$('#checkFindPhone').text('핸드폰 인증을 진행해주세요.');
						$('#findPhone').focus();
					}
				});

		$('#findPwdOk').click(
				function() {
					$('#checkFindId').empty();
					$('#checkFindPhone2').empty();
					$('#checkCertification2').empty();

					if ($('#findId').val() == '') {
						$('#checkFindId').text('아이디를 입력하세요.');
						$('#findId').focus();
					}  else if ($('#findPhone2').val() == '') {
						$('#checkFindPhone2').text('핸드폰 인증을 진행해주세요.');
						$('#findPhone2').focus();
					}  else if ($('#certification2').val() == '') {
						$('#checkFindPhone2').text('핸드폰 인증을 진행해주세요.');
						$('#findPhone2').focus();
					} 
				});
	</script>
</body>
</html>