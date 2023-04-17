<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">

    <title>Make your own Mission</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/missionWrite.css">
    
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
<div class="total" style="border: black 2px solid">
    <header class="rootAppHeader">
        <nav class="navbar navbar-expand-lg ">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img id='logo' alt="logo" src="img/logo/logo2.png">
                </a>
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-1">
                        <li class="nav-item">
                            <a href="#"class="nav-link active" aria-current="page" style="margin-right: 10px; margin-top: 5px; font-weight: bold">그룹미션
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/" class="nav-link " aria-current="page" style="margin-top:5px; font-weight: bold">소개
                            </a>
                        </li>

                    </ul>

        			<button type="button" class="headerBtn" >로그아웃</button>
                </div>
            </div>
        </nav>
    </header>

    <form name="form" id="form" role="form" method="post" action="">
      <div class="mainContainer container-fluid" >
          <div class="main1 container-fluid" style=" ">
              <h2>Make your own Mission!</h2>
              <div class="subject">

                  <label for="subject" > &ensp; 미션 제목</label>

                  <input type="text" class="form-control" name="subject" id="subject" placeholder="미션 제목을 입력하세요">
              </div>
              <div class="subject" style="">
        </div>

        <div class="label container-fluid">
            <label for="category">카테고리</label>

            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="category">
                <option selected>카테고리를 선택하세요</option>
                <option value="1">취업</option>
                <option value="2">어학</option>
                <option value="3">운동</option>
                <option value="4">기타</option>
            </select>
        </div>

        <div style="" class='input-group' id='datetimepicker1' data-td-target-input='nearest' data-td-target-toggle='nearest'>
			  <label for="datetimepicker1Input">미션 기간</label>
			  <div class="dateDiv">
			    <input id='datetimepicker1Input' type='text' class='form-control' data-td-target='#datetimepicker1' placeholder="시작 날짜" data-td-target-toggle='datetimepicker' />
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
              <label for="people">참여 인원</label>

              <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="people">
                  <option selected>참여 인원을 선택하세요</option>
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
          </div>
        </div>

        <div class="main2">
            <div class="classic" >
               <label class="contentLabel" for="content">미션 내용</label>
               <div id="classic" >
                   <p id="content"></p>
               </div>
            </div>

            <div class="userInfo" style=" ">
              <div class="missionBtn d-grid gap-2" style="" align="center">
                <a class="MuiButtonBase-root MuiButton-root MuiButton-contained jss269 MuiButton-containedSecondary" tabindex="0" aria-disabled="false" href="#" target="_blank">
                  <butoon class="msBtn d-grid gap-2 btn btn-primary" type="button">그룹미션 만들기</butoon>
                </a>
              </div>
            </div>

        </div>

        <footer class="footer" align="center">
          <div class="footerDiv" style="">
            <p><strong>OhMyGoal! 2023</strong></p>
            <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
            <p>ohmygoal.help@gmail.com</p>
          </div>
        </footer>
      </div>
    </form>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jQuery.com/jquery-3.6.4.min.js"></script>
<!--<script src="//cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>-->
<script src="//cdn.ckeditor.com/4.21.0/basic/ckeditor.js"></script>


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
		
		new tempusDominus.TempusDominus(document.getElementById('datetimepicker1Input2'), {
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

<script type="text/javascript">
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import FileRepository from '@ckeditor/ckeditor5-upload/src/filerepository';
import Base64UploadAdapter from '@ckeditor/ckeditor5-upload/src/adapters/base64uploadadapter';

ClassicEditor
    .create( document.querySelector( '#editor' ), {
        plugins: [ FileRepository ],
        toolbar: [ 'imageUpload' ],
        image: {
            // You need to configure the image toolbar, too, so it uses the new style buttons.
            toolbar: [ 'imageStyle:full', 'imageStyle:side', '|', 'imageTextAlternative' ]
        },
        // Configure the file repository to use the Base64 upload adapter.
        fileRepository: {
            uploadAdapter: Base64UploadAdapter
        }
    } )
    .then( editor => {
        window.editor = editor;
    } )
    .catch( err => {
        console.error( err.stack );
    } );

</script>
</body>
</html>