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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<!-- 구글 차트 Api -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<link rel="stylesheet" href="../css/admin/adminMain.css">
<style type="text/css">
#currentPaging{
	text-align:center;
	color:red;
	text-decoration:underline;
	cursor: pointer;
}

#paging{
	text-align:center;
	color:black;
	text-decoration:none;
	cursor: pointer;
	
}
</style>
<title>AdminMission</title>

</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container">
				<a class="OMGlogo" href="http://localhost:8080/OhMyGoal/"><img src="../img/logo/logo2.png" alt="OhMyGoal!"></a>					
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
        <h2><pre><strong>미션 관리</strong></pre></h2>
      </div><br>      
	<!-- 이름 & 아이디로 서치 -->
	<form>
		<div class="list">
            <div class="sec-option" style="display:flex;align-items:center;justify-content:center" >
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
	<input type = "hidden" id ="pg" value ="${pg }">
	<div class="member_list">
        <table id = "userListTable" class="admin_board_wrap">
          <tr class="admin_boardList">
          	<th class="admin_board_head">#</th>
            <th class="admin_board_head">아이디</th>
            <th class="admin_board_head">제목</th>
            <th class="admin_board_head">카테고리</th>
            <th class="admin_board_head">참가멤버</th>
            <th class="admin_board_head">기한</th>
            
          </tr>
          <!-- 동적 처리 -->
        </table>
        <div id ="boardPagingDiv" style="margin-top:10px; width:450px; text-align:center;"></div>
     </div>
     
 <!-- <footer>
 <div id="footer">
        <p><strong>OhMyGoal! 2023</strong></p>
        <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
        <p>OhMyGoal.help@gmail.com</p>
  </div>
</footer> -->

<script type="text/javascript" src="Http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type= "text/javascript" src="../js/admin/adminMission.js"></script>

<script>
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
//페이징 처리
	function boardPaging(pg){
		location.href="/OhMyGoal/admin/adminMission?pg="+pg;
	}
</script>
</body>
</html>