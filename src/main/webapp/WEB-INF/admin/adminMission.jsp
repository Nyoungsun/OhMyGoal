<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="shortcut icon" href="../img/icon/check.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<!-- 구글 차트 Api -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<link rel="stylesheet" href="../css/admin/adminMission.css">
<link rel="stylesheet" href="../css/admin/adminMain.css">

<title>AdminMission👅</title>
<style type="text/css">
.wrapper {position:relative; min-height:100%;}
.wrapper .header {height:90px;}
.wrapper .contents {padding-bottom:150px;}
.wrapper .footer {position:absolute; width:100%; height:200px; bottom:0;}
#currentPaging{
	text-align:center;
	font-size: 15px;
	font-weight: bold;
	color:blue;
	text-decoration:underline;
	cursor: pointer;
	margin-right: 10px;
    margin-left: 10px;
}
#paging{
	text-align:center;
	font-size: 15px;
    color: gray;
	text-decoration:none;
	cursor: pointer;
	
}
.member {
    margin-top: 100px;
}


#memberPagingDiv {
     margin-top: 10px;
     width: 450px;
     margin-left: auto;
     margin-right: auto;
     text-align: center;
  }
  
body { 
  font-size: 140%; 
}
#changeDiv {
  position: relative;
  top: -60px;
}

h2 {
  text-align: center;
  width:150px;
}
.text-center{
	margin-left: 50px;
  	margin-top: 20px;
  	margin-bottom: 20px;
}

#userListTable {
  top:30px;
  border-collapse: separate;
  border-spacing: 2px 2px;
  margin: 0 auto;
  margin-top: 60px;
  text-align: center;
  width:1200px;
  border-radius: 7px;
  border: 2px solid #87B5FF;
}

th,
td {
  padding: 2.55rem;
  text-align: center;
  border-top: 1px solid #eaf4ff;
  border-bottom: 1px solid #eaf4ff;
  border-left: none;
  border-right: none;
}

thead{
	background-color: #eaf4ff;
	
	border-bottom: 3px solid black;
  	border-collapse: collapse;
}

th:first-child,
td:first-child {
  border-left: none;
}

th:last-child,
td:last-child {
  border-right: none;
}

th {
  font-weight: bold;
  background-color: #d6ebff;
  border-bottom: 2px solid #d6ebff;
}

tbody tr:nth-of-type(even) {
	background-color: #eaf4ff;
}

/* 마지막 행 배경 색상 */
tbody tr:last-of-type {
  
}
.delBtn:hover {
	cursor: pointer;
}
</style>
</head>

<body>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container" style="">
            <a class="OMGlogo" href="../admin/adminMain"><img src="../img/logo/logo_no_bg2.png" alt="OhMyGoal!"></a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="#navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav " style="margin-left: 20px;">
                    <li class="nav-item">
                        <a class="nav-link" href="../admin/adminMain" >대시보드</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../admin/adminMember">회원관리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../admin/adminMission" style=" color:#0000ff;">미션관리</a>
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
                            <a class="nav-link" style="text-decoration: none;">${memName}님
                                환영합니다.&nbsp;&nbsp;&nbsp;</a>
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

<div id = "changeDiv">
	<div class="member">
      <div class="member_title" >
        <h2><strong>미션 관리</strong></h2><br/><br/>
      </div><br>
	<!-- 이름 & 아이디로 서치 -->
	<form>
		
        <div class="list" style=" display: flex; flex-direction: row; width: 100%;">
            <div class="sec-option" style="display: flex; flex-direction: row; width:100%;" >
				  <select class="form-select" name="condition" id="condition" style="width: 9%; margin-left:70%;">
				    <option value="subject" <%= "id".equals(request.getParameter("condition")) ? "selected" : "" %>>제목</option>
				    <option value="id" <%= "name".equals(request.getParameter("condition")) ? "selected" : "" %>>아이디</option>
				  </select>
				  <input type="text" class="form-control me-2" id="search-input" placeholder="제목 검색" name="search" style="width: 15%;">
				  <button class="btn btn-outline-primary" type="button" id="search_onclick_submit" style="width: 5.5%; opacity:90%;">검색</button>
			</div>
        </div>
	</form>
	&nbsp;&nbsp;
                     

<input type = "hidden" id ="pg" value ="${pg}">
<input type = "hidden" id ="tag" value ="${tag}">
<input type = "hidden" id ="word" value ="${word}">
 <div class="container" style="margin-top: -2.5%;">
  <div class="contents" style="margin-top: -2.5%;">		
      <table id="userListTable" class="table table-bordered" border="1">
        <thead>
          <tr class="admin_boardList">
          	<th class="admin_board_head">#</th>
            <th class="admin_board_head">아이디</th>
            <th class="admin_board_head">제목</th>
            <th class="admin_board_head">카테고리</th>
            <th class="admin_board_head">참가멤버</th>
            <th class="admin_board_head">기한</th>
            <th class="admin_board_head">삭제</th>
          </tr>
        </thead>
        <tbody>
          <!-- 동적 처리 -->
        </tbody>
        <tfoot>
          <tr>
            <td colspan="8" class="text-center" style="border-top: 2px solid lightgrey;">OhMyGoal Mission</td>
          </tr>
        </tfoot>
     </table>
     &nbsp;&nbsp;
      <div class="pagination" id ="boardPagingDiv"  style="width:100%; margin-top:10px; margin-bottom: 5%; display: flex; text-align:center; border: 2px solid blue;"></div>
    </div>
</div>
</div> 
</div>
<div class="footer">    
<footer class="footer" style="width:100%; text-align:center;">
        <div class="footerDiv">&nbsp;&nbsp;
            <p><strong>OhMyGoal! 2023</strong></p>
            <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
            <p>ohmygoal.help@gmail.com</p>
        </div>
</footer>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type= "text/javascript" src="../js/admin/adminMission.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//로그아웃
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
	
	$(document).on('click', '.delBtn', function(){
		if (!confirm('정말로 삭제를 진행하시겠습니까?')) {
			event.preventDefault(); // 기본 동작 중지
		}
    });
});

//검색
$('#search_onclick_submit').click(function () {
	var searchInput = document.getElementById("search-input").value.trim();
    if (searchInput === "") {
        alert("검색할 제목 혹은 아이디를 입력하세요.");
        event.preventDefault();
    }
    else{location.href="/OhMyGoal/admin/adminMission?pg="+$('#pg').val()+"&tag="+$('#condition').val()+"&word="+$('#search-input').val();}
});

$('#search-input').keydown(function (event) {if (event.keyCode == 13) {$('#search_onclick_submit').click();}});

//페이징 처리
function boardPaging(pg, tag, word){
	location.href="/OhMyGoal/admin/adminMission?pg="+pg+"&tag="+tag+"&word="+word;
}
</script>
</body>
</html>