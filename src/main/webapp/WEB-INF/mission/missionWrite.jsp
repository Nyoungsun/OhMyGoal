<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html> 
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">

    <title>미션 작성</title>
    
	<link rel="shortcut icon" href="../img/icon/check.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/mission/missionWrite.css">


    <!--Popperjs -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.2/dist/umd/popper.min.js"
            crossorigin="anonymous"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          rel="stylesheet">
          
   <style>
   
	   #start_date {
	    	background-image: none !important;
	    }
	    	
	  #start_date::after {
	    display: none !important;
	  }
	</style>
          

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

<br> <br>
		<main style="margin-left: 20%;">
			<div class="banner">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<img src="../img/logo/logo_no_bg2.png" style="width: 200px;">
							<br> <br> <br>
							<h1>
								당신만의 특별한 미션을<br>지금 만들어 보세요.
							</h1>
						</div>
						<div class="col-md-4 col-sm-8">
							<img src="../img/makeMission.png" alt="미션만들기" class="" style="margin-top: -8%; width:115%; height:105%; margin-left: -8%;">
						</div>
					</div>
				</div>
			</div>
		</main>
		

    <form name="missionWrite" id="missionWrite" role="form" method="get">
    
    <!-- 	<input type="text" id="seq" name="seq" value="1" > -->
    
      <div class="shadow-lg p-3 mb-5 bg-body rounded" id="box"
			style="height: 100%; width: 50%; margin-bottom:30px; margin-top: -5%;" >
          <div class="main1 container-fluid" style="margin-top: 3%; ">
              <h2 style="margin-bottom: 3%;">Make your own Mission!</h2>
              
              <hr style="width: 100%; margin-left: auto; margin-right: auto; height: 3px; border: 0; background: black;">

              <div class="subject">

                  <label for="subject" style="margin-top: 1%; margin-left: 1.5%;">미션 제목 ✍ <span id="subjectSpan" style=""></span> </label>

                  <input type="text" class="form-control" name="subject" id="subject" placeholder="미션 제목을 입력하세요" >
              </div>
            

        <div class="category container-fluid">
            <label for="category" >카테고리 📌  <span id="categorySpan" ></span> </label>

            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="category" name="category">
                <option value="" disabled selected hidden>카테고리를 선택하세요</option>
                <option value="job">취업</option>
                <option value="hobby">취미</option>
                <option value="lang">어학</option>
                <option value="health">운동</option>
                <option value="etc">기타</option>
            </select>
        </div>


        <div style="margin-top: 2%;" class='input-group' id='datetimepicker1' data-td-target-input='nearest' data-td-target-toggle='nearest'>
			  <label for="" style="margin-left: 0.4%;">미션 기간 📆  
			  	<span id="date1Span" style=" margin-top: 2%;"></span>
			  	<span id="date2Span" style=" margin-top: 2%;"></span>                                                                                                                                                                                                                                                                                                                                   
			  	</label>
			  
		
			  <div class="dateDiv" style=" margin-top: -1%; margin-bottom: -2%; padding: -0px; ">

			      <div class="col-md-6 mb-3" style="margin-right: 5%; margin-left: -1.5%;">
			        
			        <input type="date" class="form-control" id="start_date" name="start_date" id ="start_date" required min="<?php echo date('Y-m-d'); ?>"  >
			      </div>
			      <div class="col-md-6 mb-3">
			        <label for="end_date" class="form-label"></label>
			        <input type="date" class="form-control" id="end_date" name="end_date" id="end_date" required min="<?php echo date('Y-m-d'); ?>">
			      </div>
			    
			   <!--  <button type="submit" class="btn btn-primary">제출</button> -->
			  
			</div>
			  
		</div>

          <div style="margin-bottom: 4%;" class="maxmember label container-fluid">
              <label for="maxmember">참여 인원 🧑‍🤝‍🧑 <span id="maxmemberSpan"></span></label>

              <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="maxmember" name="maxmember">
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
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                  <option value="18">18</option>
                  <option value="19">19</option>
                  <option value="20">20</option>
              </select>
              <span id="peopleSpan" style="margin-left: 0px; margin-top:0px;"></span>
          </div>
        </div>
        
        <!-- <form method="post" enctype="multipart/form-data"> -->
				<div class="button" id="image-upload">	
					<label for="chooseFile" class="label-text" id="thumb" data-toggle="tooltip" data-placement="top"> 썸네일 사진 선택 📸 &ensp;&ensp;
					<span id="thumbSpan" style="color: #63b1ff">
						<br>&ensp;&ensp;* 미선택 시 기본 이미지로 지정
					</span></label>
					
					<div class="fileInput" style="text-align: center;">
						<h7 style="height: 150px;">
						
							<img id="img" name="img" src="../img/thumbnail/defaultThumb.png" alt="미리보기" style=" display: block; max-width:100%; max-height:100%; align:center;  cursor:pointer;" onclick="openModal()" data-toggle="tooltip" data-placement="right" title="이미지를 클릭하여 크게 볼 수 있어요." >	
							
						</h7>
					</div>
					
				</div>
				<input type="file" id="chooseFile" class="form-control-file" name="chooseFile"
					accept="image/*" onchange="loadPreview(event)">	
					
				<div id="myModal" class="modal">
				    <span class="close">&times;</span>
				    <img class="modal-content" id="modalImg">
				    <div id="caption"></div>
				</div>
		<!-- </form> -->


        <div class="main2" style="">
            
			  <label style="margin-bottom: 2%;" class="contentLabel" for="content">미션 내용 📝 <span id="contentSpan"></span></label>
			  <div id="content" name="content"> 
			  </div>	


              <div class="missionBtn d-grid gap-2 " style="" align="center">
 				<input type="button" id="msBtn" value="그룹미션 만들기">
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

<script src="//cdn.ckeditor.com/4.16.0/standard-all/ckeditor.js"></script>
<script src="//cdn.ckeditor.com/4.16.0/standard-all/lang/ko.js"></script>
			

<!-- <script type="text/javascript" src="../webapp/js/mission/missionWrite.js"></script> -->



<!-- jQuery Library -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
  <!-- Bootstrap 5 JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
  <!-- Datepicker CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
  <!-- Datepicker JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>




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

$('#msBtn').on('click', function(event) {
	event.preventDefault(); 		// submit 버튼의 기본 동작인 form 전송을 막음
    
    $('#subjectSpan').empty();	
    $('#categorySpan').empty();
    $('#date1Span').empty();
    $('#date2Span').empty();
    $('#peopleSpan').empty();
    $('#thumbNail').empty();
    $('#contentSpan').empty();
    
	var subject = $('#subject').val(); 							// 미션 제목
	var category = $('#category option:selected').val(); 		// 카테고리
	var date1 = $('#start_date').val(); 						// 시작 날짜
	var date2 = $('#end_date').val(); 							// 종료 날짜
	var maxmember = $('#maxmember option:selected').val();		// 참여 인원
	var img = document.getElementById('img');					// thumbnail img
	var editorData = CKEDITOR.instances.content.getData();		// 미션 내용
	
	/*
	console.log("제목: " + subject);
	console.log("카테고리: " + category);
	
	console.log("시작날짜: " + date1);
	console.log("종료날짜: " + date2);
	
	console.log("참여인원: " + people);
	
	console.log("데이터!!!!: " + editorData);
	
	console.log("썸네일!: " + img);
	*/

    var is_valid = true; // 유효성 검사 통과 여부
    
    // 미션 제목 유효성 검사
    if (subject == '') {
        $('#subjectSpan').text('* 미션 제목을 입력해주세요.').show();
        $('#subject').focus();
        is_valid = false;
    } 

    // 미션 카테고리 유효성 검사
    else if (category == '') {
        $('#categorySpan').text('* 미션 카테고리를 선택해주세요.').show();
        $('#category').focus();
        is_valid = false;
    } 

    // 시작 날짜 유효성 검사
    else if (date1 == '') {
        $('#date1Span').text('* 시작 날짜를 입력하세요.').show();
        $('#start_date').focus();
        is_valid = false;
    } 

    // 종료 날짜 유효성 검사
   else if (date2 == '') {
        $('#date2Span').text('* 종료 날짜를 입력하세요.').show();
        $('#end_date').focus();
        is_valid = false;
    } 

    // 참여인원 유효성 검사
    else if (maxmember == '') {
        $('#maxmemberSpan').text('* 최대 참여 인원 수를 입력하세요.').show();
        $('#maxmember').focus();
        is_valid = false;
    } 

    // 썸네일 사진 유효성 검사
    /* else if (thumb_img == '') {
        $('#thumbSpan').text('썸네일 이미지를 첨부해 주세요').show();
        $('#thumbNail').focus();
        is_valid = false;
    }  */


 	// 미션 내용 유효성 검사
 	else if (editorData == '') {
        $('#contentSpan').text('* 미션 내용을 작성해 주세요.').show();
        $('.content').focus();
        is_valid = false;
    } 
 	
 	// 유효성 검사 통과 시 데이터 전송 / 저장
 	else {
 		var formData = new FormData();
	 	formData.append("img", $("input[name=chooseFile]")[0].files[0]);
	 	if ($("input[name=chooseFile]")[0].files[0] != null) {
	 		console.log("1번들어옴");
	 		formData.append("img", $("input[name=chooseFile]")[0].files[0]);
	 	} else {
	 		console.log("2번들어옴");
	 		formData.append("img", new Blob(["../img/thumbnail/defaultThumb.png"]), "defaultThumb.png");
	 	}
	 	formData.append("id", '${memId}');
	 	formData.append("subject", $("#subject").val());
	 	formData.append("category", $("#category").val());
	 	formData.append("start_date", $("#start_date").val());
	 	formData.append("end_date", $("#end_date").val());
	 	formData.append("maxmember", $("#maxmember").val());
	 	formData.append("content", editorData);
	 	
	 	$.ajax({
	 		type: 'post',
 			url: '/OhMyGoal/board/upload',
	 	    enctype: 'multipart/form-data',
	 	    processData: false,
	 	    contentType: false,
	 	    data: formData,
	 	    success: function(data){
				location.href='/OhMyGoal/mission/missionBoard?seq='+data;
			},
			error: function(err){
				console.log(err);
			}
	 	});
    }    
}); // click func()
 </script>   
 
 
<!-- 날짜 달력 js-->
<script type="text/javascript">
$(document).ready(function(){
	
	
	  // 시작날짜 데이트피커 초기화
	  $("#start_date").datepicker({
	    format: 'yyyy-mm-dd',
	    todayBtn: 'linked',
	    //clearBtn: true,
	    autoclose: true,
	    todayHighlight: true,
	    showButtonPanel: true,
	    startDate: new Date(),
	    endDate: new Date(new Date().setFullYear(new Date().getFullYear() + 1)), // 1년 후까지 선택 가능하도록 설정
	  });
	  
	  // 종료날짜 데이트피커 초기화
	  $("#end_date").datepicker({
	    format: 'yyyy-mm-dd',
	    todayBtn: 'linked',
	    //clearBtn: true,
	    autoclose: true,
	    todayHighlight: true,
	    showButtonPanel: true,
	   	startDate: new Date(),
	    endDate: new Date(new Date().setFullYear(new Date().getFullYear() + 1)), // 1년 후까지 선택 가능하도록 설정
	    beforeShowDay: function(date) {
	      var startDate = $('#start_date').datepicker('getDate'); // 시작날짜
	      if (startDate) {
	        return date.valueOf() < startDate.valueOf() ? 'disabled' : '';
	      }
	      return '';
	    }
	  });
	  // 달력 아이콘 숨김 처리
	  /* $("#start_date, #end_date").datepicker().on('show', function(e) {
	    $(this).prev('.input-group-add on').addClass('d-none');
	  }); */
	  // 시작날짜 선택 시 종료날짜 최소값 설정
	  $('#start_date').on('change', function() {
	    $('#end_date').attr('min', $(this).val());
	    $('#end_date').datepicker('update');
	  });
	});
 
</script>


<!-- 이미지 업로드 -->
<script type="text/javascript">
	function loadPreview(event) {
		var img = document.getElementById('img');
	    var file = event.target.files[0];
	    
	    const files = event.currentTarget.files;
	    console.log(typeof files, files);
	      
	    if (file) {
	      var reader = new FileReader();
	      reader.onload = function() {
	        img.style.display = 'block';
	        img.src = reader.result;
	        
	        console.log("이미지1: "+ reader.result); // 이미지 링크 값 콘솔로그에 출력
	        console.log("img2:" + file);
	      }
	      reader.readAsDataURL(file);
	    } else {
	      img.style.display = 'block';
	      img.src = 'defaultThumb.png';
	     
	    }
  	}
	
	function getImageFiles(e) {
	      const files = e.currentTarget.files;
	      console.log(typeof files, files);
	    }
	
	// 모달 버튼 클릭 시 모달 열기
	function openModal() {
	      document.getElementById("myModal").style.display = "block";
	      document.getElementById("modalImg").src = document.getElementById("img").src;
	    }
	
	    function closeModal() {
	      document.getElementById("myModal").style.display = "none";
	    }
	
	    document.getElementsByClassName("close")[0].onclick = function() {
	      closeModal();
	    }
	    
	    
	    // 이미지에 마우스 호버 시 알림 띄우기
	    $(document).ready(function(){
		      $('[data-toggle="tooltip"]').tooltip({
		    	  placement: 'right'
		      }); 
		});
	
</script>
	  


<!-- 컨텐트 에디터 -->
<script>
	  CKEDITOR.replace('content', {
	    language: 'ko'
	  });
	  
	  var editorData = CKEDITOR.instances.content.getData();
	  console.log(editorData);
</script>

</body>
</html>