<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FAQ</title>

<link rel="stylesheet" href="../css/board/faq.css">
<link rel="shortcut icon" href="../img/icon/check.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.4.min.js">
      </script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<script>
        new WOW().init(); // wow 활성화
      </script>
<style>
/* 아코디언 스타일 */
.accordion {
	border: 1px solid #ddd;
	background-color: #f1f1f1;
	margin: 10px 0;
	border-radius:5pt;
}

.accordion h2 {
	padding: 10px;
	margin: 0;
	font-size: 18px;
	cursor: pointer;
	
}

.accordion p {
	padding: 10px;
	margin: 0;
	display: none;
	
	
}

.accordion h2.active+p {
	display: block;
}
</style>
<script>
        $(document).ready(function () {
          $('#upBtn').on('click', function (event) {
            event.preventDefault(); // submit 버튼의 기본 동작인 form 전송을 막음

            var title = $('#title').val(); // 문의 제목
            /* var selectbox = $('.selectbox option:selected').val(); */ // 문의 유형
            var textarea = $('textarea').val(); // 문의 내용
            var name = $('input[type="text"][placeholder="이름을 입력해주세요"]').val(); // 담당자 이름
            var email = $('input[name="email"]').val(); // 이메일 주소

            var is_valid = true; // 유효성 검사 통과 여부

            // 문의 제목 유효성 검사
            if (title == '') {
              $('#title-error').text('문의 제목을 입력해주세요.').show();
              is_valid = false;
            } else {
              $('#title-error').hide();
            }

            // 문의 유형 유효성 검사
            /*   if (selectbox == '') {
                  $('#selectbox-error').text('문의 유형을 선택해주세요.').show();
                  is_valid = false;
              } else {
                  $('#selectbox-error').hide();
              } */

            // 문의 내용 유효성 검사
            if (textarea == '') {
              $('#textarea-error').text('문의 내용을 입력해주세요.').show();
              is_valid = false;
            } else {
              $('#textarea-error').hide();
            }

            // 담당자 이름 유효성 검사
            if (name == '') {
              $('#name-error').text('이름을 입력해주세요.').show();
              is_valid = false;
            } else {
              $('#name-error').hide();
            }

            // 이메일 주소 유효성 검사
            if (email == '') {
              $('#email-error').text('이메일 주소를 입력해주세요.').show();
              is_valid = false;
            } else {
              $('#email-error').hide();
            }

            // 개인정보,수집,이용동의 체크박스 유효성 검사
            if (!$('#agreement').is(':checked')) {
              $('#agreement-error').text('개인정보,수집,이용동의에 체크해주세요.').show();
              is_valid = false;
            } else {
              $('#agreement-error').hide();
            }

            if (is_valid) {
              // 유효성 검사 통과시 form 전송
              $('form').submit();
            }
          });
        });
        function loadFile(input) {
          var file = input.files[0];	//선택된 파일 가져오기

          //미리 만들어 놓은 div에 text(파일 이름) 추가
          var name = document.getElementById('fileName');
          name.textContent = file.name;

          //새로운 이미지 div 추가
          var newImage = document.createElement("img");
          newImage.setAttribute("class", 'img');

          //이미지 source 가져오기
          newImage.src = URL.createObjectURL(file);

          newImage.style.width = "70%";
          newImage.style.height = "70%";
          newImage.style.visibility = "hidden";   //버튼을 누르기 전까지는 이미지를 숨긴다
          newImage.style.objectFit = "contain";

          //이미지를 image-show div에 추가
          var container = document.getElementById('image-show');
          container.appendChild(newImage);
        };
        var submit = document.getElementById('submitButton');
        submit.onclick = showImage;     //Submit 버튼 클릭시 이미지 보여주기

        function showImage() {
          var newImage = document.getElementById('image-show').lastElementChild;

          //이미지는 화면에 나타나고
          newImage.style.visibility = "visible";

          //이미지 업로드 버튼은 숨겨진다
          document.getElementById('image-upload').style.visibility = 'hidden';

          document.getElementById('fileName').textContent = null;    //기존 파일 이름 지우기
        }

      </script>
<script>
		window.addEventListener('load', function() {
			// 아코디언 클릭 이벤트 등록
			var accordionHeaders = document.querySelectorAll('.accordion h2');
			for (var i = 0; i < accordionHeaders.length; i++) {
				accordionHeaders[i].addEventListener('click', function() {
					// 클릭한 아코디언 활성화
					this.classList.toggle('active');
				});
			}
		});
	</script>
</head>

<body>

	<form name="myForm" method="post" data-email="sssuperkoreann@gmail.com"
		target="iframe1" id="formf"
		action="https://script.google.com/macros/s/AKfycbz-n2LdvDP-TdZ5thK9FZLILqHuujM4jYT-LCCIaE4xWv0NDXME-WFF62Y3rpuGuD-tYg/exec">

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

					<div class="collapse navbar-collapse justify-content-end"
						id="navbarNav">
						<ul class="navbar-nav">
							<c:if test="${empty memName}">
								<li class="nav-item"><a id="topnav_loginBtn"
									class="nav-link" href="#" style="text-decoration: none;">로그인</a>
								</li>
							</c:if>

							<c:if test="${not empty memName}">
								<li class="nav-item"><a class="nav-link"
									href="../member/myPage" style="text-decoration: none;">${memName}님
										환영합니다.&nbsp;&nbsp;&nbsp;마이페이지</a></li>
								<li class="nav-item"><a id="logoutBtn" class="nav-link"
									href="#" style="text-decoration: none;">로그아웃</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</nav>
		</header>

		<br> <br>
		<main style="margin-left: 20%;">
			<div class="banner">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<img src="../img/logo/logo_no_bg2.png" style="width: 200px;">
							<br> <br>
							<h1>
								자주 묻는 질문입니다. <br> 편리하게 질문을 찾아보세요. 
							</h1>

							<a href="/OhMyGoal/board/qna" class="btn btn-primary" style="border-radius: 5px; border-color: #0000ff; background-color: #0000ff;">1:1 문의하기</a>
						</div>
						<div class="col-md-4 col-sm-8">
							<img src="../img/faq.png" alt="Mission" class="img-fluid">
						</div>
					</div>
				</div>
			</div>
		</main>
		<section class="bg_ye wow rollIn" data-wow-duraion="5s">
			<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box"
				style="height: auto; width: 50%; max-width: 100%; ">
				<h3 style="text-align: center; font-weight:bold; margin-top: 2%; margin-bottom: 2%;" id="title">자주 묻는 질문</h3>
				<hr
					style="width: 100%; margin-left: auto; margin-right: auto; height: 3px; border: 0; background: black;">
				<div class="option_ann1">
					<div class="accordion">
						<h2>Q: 서비스 이용 방법은 어떻게 되나요?</h2>
						<p>A: 서비스 이용 방법은 로그인  후 메인 페이지에서 확인하실 수 있습니다.</p>
					</div>

					<div class="accordion">
						<h2>Q: 비밀번호를 분실했어요. 어떻게 해야 하나요?</h2>
						<p>A: 로그인 페이지에서 비밀번호 찾기를 클릭하여 비밀번호를 재설정할 수 있습니다.</p>
					</div>

					<div class="accordion">
						<h2>Q: 서비스 이용에 대한 문의는 어디로 해야 하나요?</h2>
						<p>A:  서비스 이용에 대한 문의는 고객센터 또는 1:1 문의를 통해 문의해주시면 친절하게 안내해드리겠습니다.</p>
					</div>
					
					<div class="accordion">
						<h2>Q: 서비스 이용 중 오류가 발생했어요. 어떻게 해결하나요?</h2>
						<p>A:   오류가 발생한 경우, 먼저 재시도를 해보시고, 문제가 지속되는 경우에는 고객센터 또는 1:1 문의를 통해 문의해주시면 신속하게 처리해드리겠습니다.</p>
					</div>
					
					<div class="accordion">
						<h2>Q: 서비스 이용에 대한 약관은 어디에서 확인하나요?</h2>
						<p>A: 서비스 이용에 대한 약관은 로그인 후 마이페이지에서 확인하실 수 있습니다.</p>
					</div>
					
					<div class="accordion">
						<h2>Q: 회원탈퇴를 하려면 어떻게 해야 하나요?</h2>
						<p>A: 로그인 후 마이페이지에서 회원탈퇴를 클릭하여 탈퇴 신청을 하실 수 있습니다. 단, 탈퇴 전에 모든 개인정보 및 서비스 이용 내역을 확인하시기 바랍니다.</p>
					</div>
					
					<div class="accordion">
						<h2>Q: 레벨은 어떤 기준으로 높일 수 있나요?</h2>
						<p>A: 미션개수에 따라 0~1개 스타터, 2개 비기너, 3~4개 아마추어, 5~6개 세미프로, 10개이상 프로 입니다.</p>
					</div>
					
				</div>
				</div>
		</section>
	</form>
	<iframe id="iframe1" name="iframe1" style="display: none"></iframe>
	<footer>
		<p>
			<strong>OhMyGoal! 2023</strong>
		</p>
		<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
		<p>OhMyGoal.help@gmail.com</p>
	</footer>
	<script type="text/javascript"
		src="http://code.jQuery.com/jquery-3.6.4.min.js"></script>
	<script type="text/javascript">
	/*
		$(document).ready(function() {
		    $('.accordion').click(function() {
		        var $content = $(this).children('p');
		        if ($content.is(':hidden')) {
		            $content.slideDown();
		            $(this).siblings().children('p').slideUp();
		        } else {
		            $content.slideUp();
		        }
		    });
		});
*/
		const accordions = document.querySelectorAll('.accordion');
		
		accordions.forEach((accordion) => {
		  const accordionTitle = accordion.querySelector('h2');
		  const accordionContent = accordion.querySelector('p');
		
		  accordionTitle.addEventListener('click', () => {
		    if (accordionContent.style.display === 'block') {
		      accordionContent.style.display = 'none';
		    } else {
		      accordions.forEach((a) => {
		        a.querySelector('p').style.display = 'none';
		      });
		      accordionContent.style.display = 'block';
		    }
		  });
		});
	
        $('#logoutBtn').click(function () {
          $.ajax({
            type: 'post',
            url: '/OhMyGoal/board/logout',
            success: function () {
              alert("로그아웃이 완료되었습니다.");
              location.href = '/OhMyGoal/';
            },
            error: function (err) {
              console.log(err);
            }
          });
        });

        $("#formf")[0].reset()

      </script>
</body>

</html>
