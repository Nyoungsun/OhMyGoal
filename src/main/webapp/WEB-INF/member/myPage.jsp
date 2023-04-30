<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>마이페이지</title>
<style>
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

input{
	border-radius: 5px; 
}

</style>
<!--BootStrap-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!--BootStrap-->

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
				<a class="OMGlogo" href="../"><img
					src="../img/logo/logo_no_bg2.png" alt="OhMyGoal!"></a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="#navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav " style="margin-left: 20px;">
						<c:if test="${not empty memName}">
							<li class="nav-item"><a class="nav-link"
								href="../mission/missionWrite">그룹미션
									만들기 </a></li>
						</c:if>
						<li class="nav-item"><a class="nav-link"
							href="../board/ranking">명예의 전당</a></li>
						<li class="nav-item"><a class="nav-link" href="../board/qna">문의하기</a>
						</li>
					</ul>
				</div>

				<div class="collapse navbar-collapse justify-content-end"
					id="navbarNav">
					<ul class="navbar-nav">
						<c:if test="${empty memName}">
							<li class="nav-item"><a id="topnav_loginBtn"
								class="nav-link" href="#" style="text-decoration: none;">로그인</a>
							</li>
						</c:if>

						<c:if test="${not empty memName}">
							<li class="nav-item"><a id="editBtn"
								class="nav-link headerBtn" style="text-decoration: none;">${memName}님
									환영합니다.&nbsp;&nbsp;&nbsp;개인정보수정</a></li>
							<li class="nav-item"><a id="logoutBtn" class="nav-link"
								href="#" style="text-decoration: none;">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- <header>
		<a href="/OhMyGoal/"><img id="logo" src="../img/logo/logo2.png"></a>
		<button type="button" id="editBtn" class="headerBtn">EDIT</button>
		<button type="button" id="" class="headerBtn">로그아웃</button>
	</header> -->

	<div id="profileDiv">
		<div id="profileContent">
			<div id="String">
				<span>"<span class="memberName"></span>" 님 안녕하세요.
				</span><br> <span>오늘의 미션을 달성하세요!✨</span>
			</div>
			<img id="banner" src="../img/people.png">
		</div>
	</div>
	<div id="gradeDiv">
		<span class="shadow p-3 mb-5 bg-body rounded"><span id="grade"></span>&nbsp;<span
			class="memberName"></span>님의 미션</span>
	</div>
	<div id="missionDiv">
		<!-- 동적 처리 -->
	</div>
	<footer>
		<p>
			<strong>OhMyGoal! 2023</strong>
		</p>
		<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
		<p>OhMyGoal.help@gmail.com</p>
	</footer>

	<!-- modal -->
	<jsp:include page='checkPwd.jsp'></jsp:include>
	<jsp:include page='edit.jsp'></jsp:include>
	<jsp:include page='changePwd.jsp'></jsp:include>
	<jsp:include page='withdrawl.jsp'></jsp:include>

	<!--BootStrap-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
	</script>
	<!--BootStrap-->

	<!--jquery-->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
		new WOW().init(); // wow 활성화
	</script>

	<script>
	/* Demo purposes only */
	var snippet = [].slice.call(document.querySelectorAll('.hover'));
	if (snippet.length) {
	  snippet.forEach(function (snippet) {
	    snippet.addEventListener('mouseout', function (event) {
	      if (event.target.parentNode.tagName === 'figure') {
	        event.target.parentNode.classList.remove('hover')
	      } else {
	        event.target.parentNode.classList.remove('hover')
	      }
	    });
	  });
	}
	</script>
	<script>
		$(function() {
			$.ajax({
				type : 'post',
				url : 'getMember',
				async : false,
				success : function(data) {
					$('#id').val(data.id);
					$('#name').val(data.name);
					$('.memberName').text(data.name); // OOO님 안녕하세요, OOO님의 미션
					$('#email1').val(data.email1);
					$('#email2').val(data.email2);
					$('#tel1').val(data.tel1);
					$('#tel2').val(data.tel2);
					$('#tel3').val(data.tel3);
					$('#zipcode').val(data.zipcode);
					$('#addr1').val(data.addr1);
					$('#addr2').val(data.addr2);
				},
				error : function(err) {
					console.log(err);
				}
			});
			
			$.ajax({
				type : 'post',
				url : 'getLevel',
				async : false,
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success : function(data) {
					$('#grade').text(data);
				},
				error : function(err) {
					console.log(err);
				}
			});
			
			$.ajax({
				type: 'post',
				url: 'getMyMission',
				async: false,
				success: function (data) {
					var i = 0;
					var today = new Date();
					$.each(data, function (index, items) {
						var end_date = new Date(items.end_date).setHours(24);
						console.log(end_date);
						i++;
						$('<div/>').append($('<div/>', {
							class: today <= end_date ? 'missionList shadow p-3 mb-5 bg-body rounded wow bounce' : 'missionList shadow p-3 mb-5 rounded expire'
						}).append($('<table/>',{
							class: 'table table-borderless'
						}).append($('<tr/>', {
						}).append($('<th/>', {
							rowspan: '3',
							id: 'seq' + i,
							class: 'seq',
							text: items.seq
						})).append($('<td/>', {
							rowspan: '3',
							class: 'img'
						}).append($('<img>', {
							src: items.img,
							alt: '미션 썸네일'
						}))).append($('<td/>', {
							id: 'subject' + i,
							class: 'subject',
							text: items.subject
						}))).append($('<tr/>').append($('<td/>'))).append($('<tr/>').append($('<td/>', {
							colspan:'3',
							id:'btn' + i,
							align: 'right'
						}).append($('<input/>', {
							type: 'button',
							id: 'move' + i,
							value: '미션 보러가기',
							onclick: "location.href='." + items.url + "?seq=" + items.seq + "'"
						}).css('border-radius','5px')).append($('<input>', {
							type: 'button',
							id: today <= end_date ? 'out' + i : 'expire' + i,
							value: today <= end_date ? '도망가기' : '종료된 미션입니다.',
							onclick: today <= end_date ? 'escape(' + items.seq + ')': null
						}).css('border-radius','5px')))))).appendTo($('#missionDiv')).trigger('create'); //.trigger('create'); - css 적용하기위해
					}) //each
				},
				error: function (err) {
					console.log(err);
				}
			});
		});
	</script>
	<script>
		function escape(seq){
			$.ajax({
				type : 'post',
				url : '/OhMyGoal/member/escape',
				data: 'seq=' + seq,
				success : function() {
					alert("도망가기 완료");
					location.reload();
				},
				error : function(err) {
					console.log(err);
				}
			});
		}
	</script>
	<script>
		$('#logoutBtn').click(function() {
			$.ajax({
				type : 'post',
				url : '/OhMyGoal/board/logout',
				success : function() {
					alert("로그아웃 되었습니다.");
					location.href = '/OhMyGoal/';
				},
				error : function(err) {
					console.log(err);
				}
			});
		});
	</script>

	<script>
		$('#editBtn').click(function() {
			$('#ModalCheckPwd').modal('show'); //checkPwd.jsp에 있음
		});
	</script>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		$('#search').click(function() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById("zipcode").value = data.zonecode;
					document.getElementById("addr1").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("addr2").focus();
				}
			}).open();
		});
	</script>
</body>
</html>