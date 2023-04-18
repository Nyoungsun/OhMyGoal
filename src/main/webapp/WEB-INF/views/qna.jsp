<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>QnA💐</title>
<link rel="stylesheet" href="css/QnA.css">
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
<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<script>
	new WOW().init(); // wow 활성화
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#upBtn').on('click', function(event) {
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

</head>

<body>
	<form name="myForm" method="post" data-email="sssuperkoreann@gmail.com" target="iframe1"
			action="https://script.google.com/macros/s/AKfycbz-n2LdvDP-TdZ5thK9FZLILqHuujM4jYT-LCCIaE4xWv0NDXME-WFF62Y3rpuGuD-tYg/exec">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<div class="container">
					<a class="OMGlogo" href="#"><img src="img/logo/logo_no_bg2.png"
						alt="OhMyGoal!"></a>
				</div>
				<!-- 햄버거 -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<!-- 햄버거 -->
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#"
							style="text-decoration: none;">마이페이지</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="text-decoration: none;">로그아웃</a></li>
					</ul>
				</div>
			</nav>
		</header>
		
		<br> <br>
		<main style="margin-left: 20%;">
			<div class="banner">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<img src="img/logo/logo_no_bg2.png" style="width: 200px;">
							<br> <br>
							<h1>If you have any questions, please contact our customer
								service.</h1>

							<a href="#" class="btn btn-primary">We are going to reply to
								your inquiry within 24 hours.</a>
						</div>
						<div class="col-md-4 col-sm-8">
							<img src="img/QnA.png" alt="Mission" class="img-fluid">
						</div>
					</div>
				</div>
			</div>
		</main>
	<section class="bg_re wow zoomIn" data-wow-duraion="3s">
		<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box"
			style="height: auto; width: 50%; max-width: 100%">
			<h3 style="text-align: center">👌1:1 문의하기</h3>
			<hr
				style="width: 100%; margin-left: auto; margin-right: auto; height: 3px; border: 0; background: black;">
			<div class="option_ann1">
				<label for="title">✍ 문의 제목 <em style="color: red;">*</em></label> <input
					type="text" name="title" id="title" placeholder="제목을 입력해주세요.">&nbsp;
				<span id="title-error" style="color: red;"></span>
			</div>
			<div class="option_ann">
				<label>✍ 문의 유형 <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</label> <select class="selectbox">
					<option value="" disabled selected hidden>문의 선택</option>
					<option value="">입금/결제</option>
					<option value="">접속 장애</option>
					<option value="">회원 탈퇴</option>
					<option value="">기타문의 및 제안의견</option>
					<option value="">환경설정</option>
					<option value="">주소록</option>
					<option value="">계정 문제</option>
					<option value="">비밀번호 찾기</option>
				</select><br> <!-- <span id="selectbox-error" style="color: red;"> --></span>
			</div>

			<div class="option_ann">
				<label for="message">✍ 문의 내용 <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</label><br>
				<textarea id="message" name="message" style="resize: none;"
					placeholder="문의 유형을 선택 후 문의내용을 자세하게 작성해주세요."></textarea>
				<br> <span id="textarea-error" style="color: red;"></span>
			</div>

			<form method="post" enctype="multipart/form-data">
				<div class="button">
					<label for="chooseFile"> 👉 파일 선택 👈 </label>
				</div>
				<input type="file" id="chooseFile"
					   name="chooseFile" onchange="loadFile(this)">
			</form>
			<div class="fileContainer">
				<div class="fileInput">
					<p>FILE NAME:</p>
					<p id="fileName"></p>
				</div>
			</div>

			<div class="option_ann">
				<label for="name">✍ 이름 <em style="color: red">*</em></label>
				 <input 
					id="name" name="name"
					type="text" placeholder="이름을 입력해주세요">&nbsp; <span
					id="name-error" style="color: red;"></span>
			</div>

			<div class="option_ann">
				<label for="email">✍ 이메일 <em style="color: red">*</em> 
				<input type="email" id="email" name="email"
					placeholder="ex)example@naver.com">&nbsp;&nbsp;
				</label><br> <span id="email-error" style="color: red;"></span>
			</div>

			<hr
				style="width: 100%; margin-left: auto; margin-right: auto; height: 3px; border: 0; background: black;">
			<div class="option_ann">
				<input type="checkbox" id="agreement" name="agreement"> <label
					for="agreement">개인정보, 수집, 이용 동의 <em style="color: red;">*</em></label>
				<span id="agreement-error" style="color: red;"></span>
			</div>
			<br>
			<div>
				<input type="submit" id="upBtn" value="문의 접수">
			</div>
		</div>
	</section>	
	</form>
	<iframe id="iframe1" name="iframe1" style="display:none"></iframe>
	<footer>
		<p>
			<strong>OhMyGoal! 2023</strong>
		</p>
		<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
		<p>OhMyGoal.help@gmail.com</p>
	</footer>
</body>
</html>
