<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>MyPage</title>
    <!--Carousel-->
    <link rel="stylesheet" href="css/OwlCarousel/owl.theme.default.css">
    <link rel="stylesheet" href="css/OwlCarousel/owl.carousel.css">
    <!--Carousel-->
    <!--BootStrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!--BootStrap-->
    <link rel="stylesheet" href="css/editPage.css">
    <link rel="stylesheet" href="css/myPage.css">
</head>
<meta charset="UTF-8">
<body>

<!-- Modal -->
<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="ModalLabel">개인정보수정</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <table>
                <tr>
                    <td>
                        <div class="spacing">아이디</div>
                        <input type="text" name="id" id="id" readonly>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="spacing">비밀번호<span class="essential">*</span></div>
                        <input type="password" name="pwd" id="pwd" placeholder="비밀번호">
                        <div class="checkDiv" id="checkPwd"></div>
                        <input type="password" id="rePwd" placeholder="비밀번호 확인">
                        <div class="checkDiv" id="checkRePwd"></div>
                    </td>
                </tr>
        
                <tr>
                    <td>
                        <div class="spacing">이름<span class="essential">*</span></div>
                        <input type="text" name="name" id="name" placeholder="이름을 입력하세요">
                        <div class="checkDiv" id="checkName"></div>
                    </td>
                </tr>
                <tr>
                    <td id="emailTd">
                        <div class="spacing">이메일<span class="essential">*</span></div>
                        <input type="text" name="email1" id="email1"> @ <input type="text" name="email2" id="email2">&nbsp;
                        <select name="selectEmail" id="selectEmail" onChange="select()">
                            <option value="" selected>직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="nate.com">nate.com</option>
                            <option value="daum.net">daum.net</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="kakao.com">kakao.com</option>
                        </select>
                        <div class="checkDiv" id="checkEmail"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="spacing">연락처<span class="essential">*</span></div>
                        <input type="text" name="tel1" id="tel1" value="010" readonly>
                        - <input type="text" name="tel2" id="tel2">
                        - <input type="text" name="tel3" id="tel3">
                        <div class="checkDiv" id="checkTel"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="spacing">주소 <span class="essential">*</span></div>
                        <input type="text" name="zipcode" id="zipcode" placeholder="우편번호" size="5" readonly>
                        <input type="button" value="검색" id="search" onClick="search()">
                        <input type="text" name="addr1" id="addr1" placeholder="주소" readonly>
                        <input type="text" name="addr2" id="addr2" placeholder="상세주소">
                        <div class="checkDiv" id="checkAddr"></div>
                    </td>
                </tr>
                <tr>
                    <td id="btn">
                        <input type="button" id="save" value="저장">
                        <input type="reset" id="cancel" data-bs-dismiss="modal" value="취소">
                    </td>
                </tr>
            </table>
      </div>
    </div>
  </div>
</div>


    <header>
        <a href="#"><img id="logo" src="img/logo/logo2.png"></a>
        <button type="button" class="headerBtn" data-bs-toggle="modal" data-bs-target="#Modal">EDIT</button>
        <button type="button" class="headerBtn" >로그아웃</button>
    </header>

    <div id="profileDiv">
        <div id="profileContent">
            <span>"<span class="nickname">수박</span>" 님 안녕하세요.</span>
            <a href="#"><img src="img/icon/edit.png"></a><br>
            <p>오늘의 미션을 달성하세요!</p>
        </div>
        <img src="img/people.png">
    </div>

    <div id="missionDiv">
        <div id="missionList" class="shadow p-3 mb-5 bg-body rounded">
            <div id="grade">
                <img id="grade_img" src="img/grade/seed.png">
                <span><span class="nickname">수박</span>님의 미션</span>
            </div>
            <div id="carousel" class="owl-carousel owl-theme">
                <div class="item">
                    <div class="card" style="width: 19rem;">
                        <img src="img/mission/running.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="item test">
                    <div class="card" style="width: 19rem;">
                        <img src="img/mission/yoga.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card" style="width: 19rem;">
                        <img src="img/mission/climbing.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card" style="width: 19rem;">
                        <img src="img/mission/weight.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card" style="width: 19rem;">
                        <img src="img/mission/swim.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <p><strong>OhMyGoal! 2023</strong></p>
        <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
        <p>OhMyGoal.help@gmail.com</p>
    </footer>
    <!--BootStrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
    <!--BootStrap-->
    <!--jquery-->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!--jquery-->
    <!--Carousel-->
    <script src="js/owl.carousel.js"></script>
    <script src="js/owl.autoplay.js"></script>
    <script src="js/owl.navigation.js"></script>
    <script src="js/jquery.mousewheel.js"></script>
    <script>
        var owl = $('.owl-carousel');
        owl.owlCarousel({
            items: 5,
            margin: 10,
            loop: true,
            nav: true,
            navText: ['<', '>'],
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true
        });
        owl.on('mousewheel', '.owl-stage', function (e) {
            if (e.deltaY > 0) {
                owl.trigger('next.owl');
            } else {
                owl.trigger('prev.owl');
            }
            e.preventDefault();
        });
    </script>
    <!--Carousel-->
</body>

</html>