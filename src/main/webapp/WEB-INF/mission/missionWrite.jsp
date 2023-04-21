<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">

    <title>Make your own Mission</title>
    
	<link rel="shortcut icon" href="../img/icon/check.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/mission/missionWrite.css">


    <!--Popperjs -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.2/dist/umd/popper.min.js"
            crossorigin="anonymous"></script>

    <!-- Tempus Dominus JavaScript -->
    <script src="https://cdn.jsdelivr.net/gh/Eonasdan/tempus-dominus@master/dist/js/tempus-dominus.js"
            crossorigin="anonymous"></script>

    <!--  Tempus Dominus Styles -->
    <link href="https://cdn.jsdelivr.net/gh/Eonasdan/tempus-dominus@master/dist/css/tempus-dominus.css"
          rel="stylesheet" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          rel="stylesheet">

    <!--  ckeditor-->
    <script src="https://cdn.ckeditor.com/ckeditor5/29.1.0/classic/ckeditor.js"></script>


</head>
<body>
<div class="total">

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container" style="">
            <a class="OMGlogo" href="../"><img src="../img/logo/logo_no_bg2.png" alt="OhMyGoal!"></a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="#navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav " style="margin-left: 20px;">
                    <li class="nav-item">
                        <a class="nav-link" href="../board/about">소개</a>
                    </li>
                </ul>
            </div>

            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <c:if test="${empty memName}">
                        <li class="nav-item">
                            <a id="topnav_loginBtn" class="nav-link" href="#" style="text-decoration: none;">로그인</a>
                        </li>
                    </c:if>

                    <c:if test="${not empty memName}">
                        <li class="nav-item">
                            <a class="nav-link" href="../member/myPage" style="text-decoration: none;">${memName}님
                                환영합니다.&nbsp;&nbsp;&nbsp;마이페이지</a>
                        </li>
                        <li class="nav-item">
                            <a id="logoutBtn" class="nav-link" href="#" style="text-decoration: none;">로그아웃</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</header>

    <form name="form" id="form" role="form" method="post" action="">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" id="box"
             style="height: 100%; width: 50%; margin-bottom:30px;" >
            <div class="main1 container-fluid" style=" ">
                <h2>Make your own Mission!</h2>

                <hr style="width: 100%; margin-left: auto; margin-right: auto; height: 3px; border: 0; background: black;">

                <div class="subject">

                    <label for="subject" > &ensp; 미션 제목 ✍ <span id="subjectSpan" style=""></span> </label>

                    <input type="text" class="form-control" name="subject" id="subject" placeholder="미션 제목을 입력하세요">
                </div>


                <div class="category container-fluid">
                    <label for="category" >카테고리 📌  <span id="categorySpan" ></span> </label>

                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="category">
                        <option value="" disabled selected hidden>카테고리를 선택하세요</option>
                        <option value="1">취업</option>
                        <option value="2">어학</option>
                        <option value="3">운동</option>
                        <option value="4">기타</option>
                    </select>
                </div>


                <div style="" class='input-group' id='datetimepicker1' data-td-target-input='nearest' data-td-target-toggle='nearest'>
                    <label for="datetimepicker1Input">미션 기간 📆
                        <span id="date1Span"></span>
                        <span id="date2Span"></span>

                    </label>
                    <div class="dateDiv" >
                        <input id='datetimepicker1Input' type='text' class='form-control' data-td-target='#datetimepicker1' placeholder="시작 날짜" data-td-target-toggle='datetimepicker' readonly="readonly"/>


                        <span class='input-group-text' data-td-target='#datetimepicker1' data-td-toggle='datetimepicker' style="cursor: pointer">
			      <span class='fa-solid fa-calendar'></span>
			    </span>

                        <input id='datetimepicker1Input2' type='text' class='form-control' data-td-target='#datetimepicker1' data-td-target-input='nearest' data-td-toggle='datetimepicker' placeholder="종료 날짜" data-td-target-toggle='datetimepicker' />

                        <span class='input-group-text' data-td-target='#datetimepicker1' data-td-toggle='datetimepicker' style="cursor: pointer">
			      <span style="" class='fa-solid fa-calendar'></span>
			    </span>

                    </div>

                </div>

                <div style="" class="people label container-fluid">
                    <label for="people">참여 인원 🧑‍🤝‍🧑 <span id="peopleSpan"></span></label>

                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="people">
                        <option value="" disabled selected hidden>참여 인원을 선택하세요</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                    </select>
                    <span id="peopleSpan" style="margin-left: 0px; margin-top:0px;"></span>
                </div>
            </div>

            <form method="post" enctype="multipart/form-data">
                <div class="button" id="image-upload">
                    <label for="chooseFile" class="label-text" id="thumb"> 썸네일 사진 선택 📸 <span id="thumbSpan"></span>&ensp;&ensp;&ensp;</label>
                    <div class="fileInput" style="">
                        <h7><p>FILE NAME:</p>
                            <p id="thumbNail"></p>
                        </h7>

                    </div>

                </div>
                <input type="file" id="chooseFile" name="chooseFile"
                       accept="image/*" onchange="loadFile(this)">
            </form>


            <div class="main2" style="">
                <div class="classic" >
                    <label class="contentLabel" for="content">미션 내용 📝 <span id="contentSpan"></span></label>
                    <div id="classic" >
                        <textarea id="content"></textarea>
                    </div>

                </div>


                <div class="missionBtn d-grid gap-2 " style="margin-bottom: 10px;" align="center">
                    <input type="submit" id="msBtn"  value="그룹미션 만들기">
                </div>


            </div>

        </div>
    </form>

    <footer class="footer" align="center">
        <div class="footerDiv" style="">
            <p><strong>OhMyGoal! 2023</strong></p>
            <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
            <p>ohmygoal.help@gmail.com</p>
        </div>
    </footer>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jQuery.com/jquery-3.6.4.min.js"></script>
<!--<script src="//cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>-->
<script src="//cdn.ckeditor.com/4.21.0/basic/ckeditor.js"></script>
<script type="text/javascript" src="../webapp/js/mission/missionWrite.js"></script>



<!-- 유효성 검사 -->

<script type="text/javascript">
$('#logoutBtn').click(function(){
	$.ajax({
		type: 'post',
		url: '/OhMyGoal/board/logout',
		success: function(){
			alert("로그아웃이 완료되었습니다.");
			location.href = '/OhMyGoal/';
		},
		error: function(err){
			console.log(err);
		}
	});
});

    $(document).ready(function() {
        $('#msBtn').on('click', function(event) {
            event.preventDefault(); // submit 버튼의 기본 동작인 form 전송을 막음

            $('#subjectSpan').empty();
            $('#categorySpan').empty();
            $('#date1Span').empty();
            $('#date2Span').empty();
            $('#peopleSpan').empty();
            $('#thumbNail').empty();
            $('#contentSpan').empty();


            var subject = $('#subject').val(); 						// 미션 제목
            var category = $('#category option:selected').val(); // 카테고리
            var date1 = $('#datetimepicker1Input').val(); 		// 시작 날짜
            var date2 = $('#datetimepicker1Input2').val(); 		// 종료 날짜
            var people = $('#people option:selected').val();	// 참여 인원
            var thumb_img = $('#thumbNail').val();				// 썸네일 사진
            var content = $('#content').val();					// 미션 내용

            console.log("thumb_img=" + thumb_img);
            console.log("subject=" + subject);

            for(var instanceName in CKEDITOR.instances) {
                console.log( "ck: " +CKEDITOR.instances[instanceName].id );
            }

            //var textarea = $('textarea').val(); // 문의 내용
            //var name = $('input[type="text"][placeholder="담당자이름을 입력해주세요"]').val(); // 담당자 이름
            //var email_id = $('input[name="email_id"]').val(); // 이메일 주소

            var is_valid = true; // 유효성 검사 통과 여부


            // 미션 제목 유효성 검사
            if (subject == '') {
                $('#subjectSpan').text('미션 제목을 입력해주세요.').show();
                $('#subject').focus();
                is_valid = false;
            }

            // 미션 카테고리 유효성 검사
            else if (category == '') {
                $('#categorySpan').text('미션 카테고리를 선택해주세요.').show();
                $('#category').focus();
                is_valid = false;
            }

            // 시작 날짜 유효성 검사
            else if (date1 == '') {
                $('#date1Span').text('시작 날짜를 입력하세요.').show();
                $('#datetimepicker1Input').focus();
                is_valid = false;
            }

            // 종료 날짜 유효성 검사
            else if (date2 == '') {
                $('#date2Span').text('종료 날짜를 입력하세요.').show();
                $('#datetimepicker1Input2').focus();
                is_valid = false;
            }

            // 참여인원 유효성 검사
            else if (people == '') {
                $('#peopleSpan').text('최대 참여 인원 수를 입력하세요.').show();
                $('#people').focus();
                is_valid = false;
            }

            // 썸네일 사진 유효성 검사
            else if (thumb_img == '') {
                $('#thumbSpan').text('썸네일 이미지를 첨부해 주세요').show();
                $('#thumbNail').focus();
                is_valid = false;
            }


            // 미션 내용 유효성 검사
            else if (content == '') {
                $('#contentSpan').text('미션 내용을 작성해 주세요.').show();
                $('#content').focus();
                is_valid = false;
            } /*else {
                $('#contentSpan').hide();
            }*/

            if(CKEDITOR.instances.content.getData() ==''
                || CKEDITOR.instances.content.getData().length ==0){
                alert("내용을 입력해주세요.");
                $("#content").focus();
                return false;
            }
        });
    });

</script>


<!-- 날짜 달력 js-->
<script type="text/javascript">

    new tempusDominus.TempusDominus(document.getElementById('datetimepicker1'), {
        display: {
            components: {
                seconds: false,
                useTwentyfourHour: false,
            },
            icons: {
                type: 'icons',
                date: 'fa fa-solid fa-calendar',
                up: 'fa fa-solid fa-arrow-up',
                down: 'fa fa-solid fa-arrow-down',
                previous: 'fa fa-solid fa-chevron-left',
                next: 'fa fa-solid fa-chevron-right',
                today: 'fa fa-solid fa-calendar-check',
                clear: 'fa fa-solid fa-trash',
                close: 'fas fa-solid fa-xmark'
            },
        },
    });

    new tempusDominus.TempusDominus(document.getElementById('datetimepicker1'), {
        display: {
            components: {
                seconds: false,
                useTwentyfourHour: false,
            },
            icons: {
                type: 'icons',
                date: 'fa fa-solid fa-calendar',
                up: 'fa fa-solid fa-arrow-up',
                down: 'fa fa-solid fa-arrow-down',
                previous: 'fa fa-solid fa-chevron-left',
                next: 'fa fa-solid fa-chevron-right',
                today: 'fa fa-solid fa-calendar-check',
                clear: 'fa fa-solid fa-trash',
                close: 'fas fa-solid fa-xmark'
            },
        },
    });

</script>


<!-- 이미지 업로드 -->
<script type="text/javascript">
    function loadFile(input) {
        var file = input.files[0];	//선택된 파일 가져오기

        //미리 만들어 놓은 div에 text(파일 이름) 추가
        var name = document.getElementById('thumbNail');
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

    };

    /* function showImage() {
        var newImage = document.getElementById('image-show').lastElementChild;
       */
    //이미지는 화면에 나타나고
    newImage.style.visibility = "visible";

    //이미지 업로드 버튼은 숨겨진다
    document.getElementById('image-upload').style.visibility = 'hidden';

    document.getElementById('thumbNail').textContent = null;     //기존 파일 이름 지우기
    /* }  */
</script>



<!-- 컨텐트 에디터 -->
<script>
    ClassicEditor
        .create( document.querySelector( '#classic' ))
        .catch( error => {
            console.error( error );
        } );
</script>


<script type="text/javascript" th:inline="javascript">
    /*<![CDATA[*/
    $(function() {

        CKEDITOR.replace('contents',{
            filebrowserUploadUrl: '/common/ckeditor/fileUpload',
            font_names : "맑은 고딕/Malgun Gothic;굴림/Gulim;돋움/Dotum;바탕/Batang;궁서/Gungsuh;Arial/Arial;Comic Sans MS/Comic Sans MS;Courier New/Courier New;Georgia/Georgia;Lucida Sans Unicode/Lucida Sans Unicode;Tahoma/Tahoma;Times New Roman/Times New Roman;MS Mincho/MS Mincho;Trebuchet MS/Trebuchet MS;Verdana/Verdana",
            font_defaultLabel : "맑은 고딕/Malgun Gothic",
            fontSize_defaultLabel : "12",
            skin : "office2013",
            language : "ko"
        });

        // ...
    });
</script>


</body>
</html>