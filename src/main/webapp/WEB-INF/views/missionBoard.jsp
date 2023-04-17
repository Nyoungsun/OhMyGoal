<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">  <!-- bootstrap -->
    <title>Check out the Mission Here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/missionBoard.css">

</head>
<body>

<div class="total">

<header class="rootAppHeader" style="">
    <nav class="navbar navbar-expand-lg bg-white">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img id="logo" alt="logo" src="img/logo/logo2.png" >
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

<div class="mainContainer container-fluid" >
    <div class="mainThumnail" align="center">
        <img src="img/thumbnail/thumb1.jpg" alt="썸네일" style="width: 600px; height: 250px; border-radius: 15px;">
    </div>
    <div class="subject" style="">
        <h1 >갓생! 미라클 모닝 ☀️</h1>
    </div>
    <div class="label container-fluid">
        <h4>
            <span class="innerLabel badge rounded-pill " style="margin-right: 13px;">기타</span>
            <span class="innerLabel badge rounded-pill ">20명</span>
        </h4>
    </div>

    <div class="userInfo" style="">
        <div class="userInfo2" style=""  >
            <div class="userInfo3" style="">
                <a href="https://github.com/DirtyBoyz" target="_blank" rel="noreferrer">
                    <span class="userInfo4" style="">
                        <span class="userImg" style="border: 2px solid yellowgreen">
                            <svg class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24" aria-hidden="true" style="height:30px; width:30px">

                                <!-- 깃헙 이미지, 이미지 클릭 시 해당 깃허브로 감-->
                                <!--                    <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>-->
                            </svg>
                        </span>
                        <span class="userId">choi1475</span>
                    </span>
                </a>

            </div>
            <div class="dateDiv" style="">
                <span class="date">2023.01.01 ~ 2023.06.30</span>
            </div>
            <div class="likeDiv" style="">
                <svg class="MuiSvgIcon-root MuiSvgIcon-colorDisabled MuiSvgIcon-fontSizeLarge" focusable="false" viewBox="0 0 24 24" aria-hidden="true" title="프로젝트 응원하기" style="border: 1.5px solid palevioletred; border-radius: 100px; padding: 4px; cursor: pointer; height:30px; width:30px; margin-top:-3px;">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
                </svg>
                <span class="likeName"> &ensp; 23</span>
            </div>
        </div>

    </div>

    <div class="contentContainer" >
        <pre class="content bg-primary p-2 text-dark bg-opacity-10" style="white-space: pre-line;">
            💪 갓반인 도전! 💪 어저구저쩌구<br><br><br><br><br><br><br>
        </pre>

        <div class="missionBtn d-grid gap-2" style="" align="center">
            <a class="MuiButtonBase-root MuiButton-root MuiButton-contained jss269 MuiButton-containedSecondary" tabindex="0" aria-disabled="false" href="#" target="_blank">
                <butoon class="msBtn d-grid gap-2 btn btn-primary " type="button">그룹미션 참여하기</butoon>
            </a>
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
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>