<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
<link rel="shortcut icon" href="../img/icon/check.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<!-- 구글 차트 Api -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<link rel="stylesheet" href="../css/admin/adminMain.css">
<title>AdminPage👅</title>

</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container">
				<a class="OMGlogo" href="/OhMyGoal/admin/adminMain"><img src="../img/logo/logo2.png" alt="OhMyGoal!"></a>					
					<button type="button" class="sec_btn" >
					<a href="/OhMyGoal/admin/adminMain">대시보드</a></button>
					<div class ="console1" id ="dash"></div>
					<button type="button" class="sec_btn" id="member_manage" >
					<a href="/OhMyGoal/admin/adminMember">회원관리</a></button>
					
					<div class ="console2" id ="memberlist"></div>
					<button type="button" class="sec_btn" >
					<a href="/OhMyGoal/admin/adminMission">미션관리</button>
					<div class ="console3" id ="mission"></div>
					
					<!-- 햄버거 -->
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
					</button>
					<!-- 햄버거 -->
					<div class="collapse navbar-collapse justify-content-end" id="navbarNav">						
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" id="headerBtn" href="#"
								style="text-decoration: none;">로그아웃</a></li>
						</ul>
					</div>
			</div>
		</nav>
	</header>
<div id = "changeDiv">
	<div class="member">
      <div class="member_title">
        <h2><pre><strong>대시 보드</strong></pre></h2>
      </div><br>      
	<!-- 이름 & 아이디로 서치 -->
	<form>
		<div class="list">
            <div class="sec-option" >
			  <select name="condition">
			    <option value="id" <%= "id".equals(request.getParameter("condition")) ? "selected" : "" %>>아이디</option>
			    <option value="name" <%= "name".equals(request.getParameter("condition")) ? "selected" : "" %>>이름</option>
			    <option value="idName" <%= "idName".equals(request.getParameter("condition")) ? "selected" : "" %>>아이디 + 이름</option>
			  </select>
			  <input type="text" class="search-input" placeholder="검색" name="search" size="10">
			  <button type="submit" class="search_onclick_submit">검색</button>
			</div>
        </div>
	</form>

	<div class="member_list">
        <table class="admin_board_wrap">
          <tbody class="admin_boardList">
            <th class="admin_board_head">이름</th>
            <th class="admin_board_head">아이디</th>
            <th class="admin_board_head">가입일</th>
            <th class="admin_board_head">게시글수</th>
            <th class="admin_board_head">댓글수</th>
          </tbody>
          <tbody>
            <tr class="admin_board_content">
              <td class="admin_board_content_nm"><a href="#" class="mypageModal">고길동</a> </td>
              <td class="admin_board_content_nm">홍홍홍</td>
              <td class="admin_board_content_nm">2022.03.03</td>
              <td class="admin_board_content_nm"><a href="#" class="modal_boardList_admin">32</a></td>
              <td class="admin_board_content_nm"><a href="#" class="modal_reply_admin">22</a></td>
            </tr>
            <tr class="admin_board_content">
              <td class="admin_board_content_nm"><a href="#" class="mypageModal">둘리</a></td>
              <td class="admin_board_content_nm">요리보고</td>
              <td class="admin_board_content_nm">2022.03.04</td>
              <td class="admin_board_content_nm"><a href="#" class="modal_boardList_admin">4</a></td>
              <td class="admin_board_content_nm"><a href="#" class="modal_reply_admin">2</a></td>
            </tr>
            <tr class="admin_board_content">
              <td class="admin_board_content_nm"><a href="#" class="mypageModal"></a>또치</td>
              <td class="admin_board_content_nm">뚜루루루</td>
              <td class="admin_board_content_nm">2022.03.07</td>
              <td class="admin_board_content_nm"><a href="#" class="modal_boardList_admin">4</a></td>
              <td class="admin_board_content_nm"><a href="#" class="modal_reply_admin">2</a></td>
            </tr>
            <tr class="admin_board_content">
              <td class="admin_board_content_nm"><a href="#" class="mypageModal">희동이</a></td>
              <td class="admin_board_content_nm">홍길동</td>
              <td class="admin_board_content_nm">2022.03.03</td>
              <td class="admin_board_content_nm"><a href="#" class="modal_boardList_admin">4</a></td>
              <td class="admin_board_content_nm"><a href="#" class="modal_reply_admin">2</a></td>
            </tr>
            <tr class="admin_board_content">
              <td class="admin_board_content_nm"><a href="#" class="mypageModal">꼴뚜기왕자</a></td>
              <td class="admin_board_content_nm">바람</td>
              <td class="admin_board_content_nm">2022.03.07</td>
              <td class="admin_board_content_nm"><a href="#" class="modal_boardList_admin">4</a></td>
              <td class="admin_board_content_nm"><a href="#" class="modal_reply_admin">5</a></td>
            </tr>

          </tbody>
        </table>

        <!-- 페이징 버튼 -->
        <s_paging>
          <div id="paging">
            <br>
            <a href="#" class="prev" title="이전페이지">◀ PREV </a>
            <s_paging_rep><a href="#" class="num">1</a></s_paging_rep>
            <s_paging_rep><a href="#" class="num">2</a></s_paging_rep>
            <s_paging_rep><a href="#" class="num">3</a></s_paging_rep>
            <a href="#" class="prev" title="다음페이지">NEXT ▶</a>
            <br />&nbsp;
          </div>
        </s_paging>
      </div>
     <!-- 구글 차트  -->
      <div class="chart_zone">
        <div class="chart_box"></div>
       <div id="columnchart_material" class="googlechart" style="width: 800px; height: 500px;"></div>
      </div>
    </div> <!-- class member -->
   
    <!-- 게시글 모달로 가져오기-->
    <div class="modal_list">
      <div class="modal_boradlist">
        <div class="reply_listWrap">

          <div class="modal_wrap">
            <h3>000님이 작성하신 글입니다.</h3>
            <p>작성한 게시글 수 : 총 01개</p>
            <div class="tableleng">
              <table class="admin_boardM_wrap">
              <tbody class="admin_boardMList">
                <th class="admin_boardM_title">작성글 번호</th>
                <th class="admin_boardM_title leng">글 내용</th>
                <th class="admin_boardM_title">작성일</th>
                <th class="admin_boardM_title">좋아요</th>
              </tbody>
              </tbody>
              <tbody>
                <tr class="admin_boardM_content">
                  <td class="admin_boardM_nm"><a href="#">11</a></td>
                  <td class="admin_boardM_nm"><a href="">둘리 나가라</a></td>
                  <td class="admin_boardM_nm">2022.03.03</td>
                  <td class="admin_boardM_nm">7</td>
                </tr>
                <tr class="admin_boardM_content">
                  <td class="admin_boardM_nm"><a href="#">11</a></td>
                  <td class="admin_boardM_nm"><a href="">둘리 나가라</a></td>
                  <td class="admin_boardM_nm">2022.03.03</td>
                  <td class="admin_boardM_nm">7</td>
                </tr>
                <tr class="admin_boardM_content">
                  <td class="admin_boardM_nm"><a href="#">11</a></td>
                  <td class="admin_boardM_nm"><a href="">둘리 나가라</a></td>
                  <td class="admin_boardM_nm">2022.03.03</td>
                  <td class="admin_boardM_nm">7</td>
                </tr>
                <tr class="admin_boardM_content">
                  <td class="admin_boardM_nm"><a href="#">11</a></td>
                  <td class="admin_boardM_nm"><a href="">둘리 나가라</a></td>
                  <td class="admin_boardM_nm">2022.03.03</td>
                  <td class="admin_boardM_nm">7</td>
                </tr>
                <tr class="admin_boardM_content">
                  <td class="admin_boardM_nm"><a href="#">11</a></td>
                  <td class="admin_boardM_nm"><a href="">둘리 나가라</a></td>
                  <td class="admin_boardM_nm">2022.03.03</td>
                  <td class="admin_boardM_nm">7</td>
                </tr>
              </tbody>
            </table>
            </div>
            <!-- 모달 페이징 -->
            <s_paging>
              <div id="pagingM">
                <br>
                <a href="#" class="prev" title="이전페이지">◀ PREV </a>
                <s_paging_rep><a href="#" class="num">1</a></s_paging_rep>
                <s_paging_rep><a href="#" class="num">2</a></s_paging_rep>
                <s_paging_rep><a href="#" class="num">3</a></s_paging_rep>
                <a href="#" class="prev" title="다음페이지">NEXT ▶</a>
                <br />&nbsp;
              </div>
            </s_paging>
            <div class="close_modal_btn">
              <button class="modal_list_end_btn">닫기</button>
            </div>
          </div>
        </div>
      </div>

    </div>

    <div class="modal_reply">
      <div class="modal_replylist">
        <div class="reply_listWrap">
          <div class="modal_wrap">
            <div>
              <h3>000님이 작성하신 댓글입니다.</h3>
              <p>작성한 글 댓글수 : 총 01개</p>
            </div>

            <table class="admin_reply_wrap">
              <tbody class="admin_replyList">
                <th class="admin_reply_title leng">작성한 댓글</th>
                <th class="admin_reply_title">글번호</th>
                <th class="admin_reply_title">작성한 일자</th>
              </tbody>
              <tbody>
                <tr class="admin_reply_content">
                  <td class="admin_reply_con"><a href="#">가나다라</a></td><!-- 댓글로 이동 -->
                  <td class="admin_reply_con"><a href="#">12</a></td><!-- 댓글을 작성한 글로 이동 -->
                  <td class="admin_reply_con">2022.03.03</td>
                </tr>
                <tr class="admin_reply_content">
                  <td class="admin_reply_con"><a href="#">일요일</a></td><!-- 댓글로 이동 -->
                  <td class="admin_reply_con"><a href="#">12</a></td><!-- 댓글을 작성한 글로 이동 -->
                  <td class="admin_reply_con">2022.03.03</td>
                </tr>
                <tr class="admin_reply_content">
                  <td class="admin_reply_con"><a href="#">나다라마</a></td><!-- 댓글로 이동 -->
                  <td class="admin_reply_con"><a href="#">3</a></td><!-- 댓글을 작성한 글로 이동 -->
                  <td class="admin_reply_con">2022.03.03</td>
                </tr>
                <tr class="admin_reply_content">
                  <td class="admin_reply_con"><a href="#">가나다</a></td><!-- 댓글로 이동 -->
                  <td class="admin_reply_con"><a href="#">10</a></td><!-- 댓글을 작성한 글로 이동 -->
                  <td class="admin_reply_con">2022.03.03</td>
                </tr>
                <tr class="admin_reply_content">
                  <td class="admin_reply_con"><a href="#">월요일</a></td><!-- 댓글로 이동 -->
                  <td class="admin_reply_con"><a href="#">89</a></td><!-- 댓글을 작성한 글로 이동 -->
                  <td class="admin_reply_con">2022.03.03</td>
                </tr>
              </tbody>
            </table>
            <!-- 모달 페이징 -->
            <div>

              <s_paging>
                <div id="pagingM">
                  <br>
                  <a href="#" class="prev" title="이전페이지">◀ PREV </a>
                  <s_paging_rep><a href="#" class="num">1</a></s_paging_rep>
                  <s_paging_rep><a href="#" class="num">2</a></s_paging_rep>
                  <s_paging_rep><a href="#" class="num">3</a></s_paging_rep>
                  <a href="#" class="prev" title="다음페이지">NEXT ▶</a>
                  <br />&nbsp;
                </div>
              </s_paging>
              <div class="close_modal_btn">
                <button class="modal_reply_end_btn">닫기</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 회원관리 모달 -->
    <div class="mypage_modal">
      <div class="service_box">
        <div class="mem_box_inner">
          <div class="mypage">
            <div class="mypage_form">
              <h3>000님의 회원정보</h3>
              <div class="insert">
                <!--이름-->
                <div class="name_box">
                  &nbsp;&nbsp;<p>이름</p> <input type="text" name="name" readonly value="홍길동"><br>
                </div>
                <!--아이디-->
                <div class="id_box">
                  &nbsp;&nbsp;<p>아이디</p> <input type="text" name="id" readonly value="abc1234"><br>

                </div>
                <!--비밀번호-->
                <div class="pw_box">
                  &nbsp; <p>비밀번호</p> <input type="password" name="pw" readonly><br>

                </div>
                <!--전화번호-->
                <div class="tel_box">
                  &nbsp; <p>전화번호</p> <input type="tel" name="phone" readonly><br>
                </div>
                <!--주소-->
                <div class="addr_box">
                  &nbsp; <p>주소</p> <input type="text" name="addr_num" readonly>

                  <input type="text" class="addr addr1" name="addr1" readonly><br>
                  <input type="text" class="addr addr2" name="addr2" readonly>
                </div>
              </div>
              <div class="close_btn">
                <button class="close">닫기</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
 <footer>
 <div id="footer">
        <p><strong>OhMyGoal! 2023</strong></p>
        <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
        <p>OhMyGoal.help@gmail.com</p>
    
  </div>
</footer>


    <!-- 구글차트 스크립트 -->
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Month', '게시물수', '댓글수', '회원수'],
          ['1월', 87, 160, 10],
          ['2월', 120, 220, 20],
          ['3월', 200, 400, 30],
          ['4월', 400, 500, 100]
        ]);

        var options = {
          chart: {
            title: '미션 게시판 및 회원 동향',
            subtitle: 'mission , member increase/decrease: 2022-2023',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>

    <!-- 구글 차트 종료! -->
    
    <script>

// 모달 스크립트 
$(function () {
  $('.modal_boardList_admin').click(function () {
    $('.modal_list').fadeIn();
    $('header').css('position', 'static');
  });
  $('.modal_reply_admin').click(function () {
    $('.modal_reply').fadeIn();
    $('header').css('position', 'static');
  });
  $('.modal_list_end_btn').click(function () {
    $('.modal_list').fadeOut();
    $('header').css('position', 'sticky');
  });
  $('.modal_reply_end_btn').click(function () {
    $('.modal_reply').fadeOut();
    $('header').css('position', 'sticky');
  });
  $('.mypageModal').click(function () {
    $('.mypage_modal').fadeIn();
    $('header').css('position', 'static');
  });
  $('.close').click(function () {
    $('.mypage_modal').fadeOut();
    $('header').css('position', 'sticky');
  });

// 스크롤 이벤트 추가
  $(window).scroll(function () {
    var scrollTop = $(this).scrollTop();
    if (scrollTop === 0) {
      $('header').css('position', 'sticky');
    }
  });
});

// 로그아웃
      $('#headerBtn').click(function() {
        // confirm 창 띄우기
        if (confirm("정말 로그아웃 하시겠습니까?")) {
          // 로그아웃 기능 실행 코드 작성
          alert("로그아웃 되었습니다."); // 로그아웃 후 메시지를 알림으로써 사용자에게 알리기
          location.href = "http://localhost:8080/OhMyGoal/"; // 로그아웃 후 이동할 페이지 경로 입력
          
        }
      });

      
//검색
      $('.search_onclick_submit').click(
        function () {
          alert('검색할 항목을 선택하여 주세요')
          location.href = "" + "검색어 이름" + "" + "검색어 아이디";
        }
      );
      // 엔터키누를시 검색버튼 눌리기
      $('.search-input').keypress(function (e) {
        if (e.keyCode == 13) {
          //실행할 function작성
          alert("엔터");
        }
      });
    </script>
</body>
</html>