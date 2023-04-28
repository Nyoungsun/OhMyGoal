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

<link rel="stylesheet" href="../css/admin/adminMember.css">

<title>회원관리</title>
<style type="text/css">
.wrapper {position:relative; min-height:100%;}
.wrapper .header {height:90px;}
.wrapper .contents {padding-bottom:150px;}
.wrapper .footer {position:absolute; width:100%; height:200px; bottom:0;}
@font-face {
	font-family: 'Pretendard-Regular';
	src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	font-weight: 400;
	font-style: normal;
}
* {
    margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    font-family: 'Pretendard-Regular';
}
entPaging{
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

#userListTable {
    margin: 0 auto; /* 수평 가운데 정렬 */
    text-align: center; /* 내용 가운데 정렬 */
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
  border-top: 1px solid #d6ebff;
  border-bottom: 1px solid #d6ebff;
  border-left: none;
  border-right: none;
}

thead{
	background-color: #b6d0fa;
	text-align:cetner;
	border-bottom: 3px solid black;
  	border-collapse: collapse;
}

.admin_member_head {
    text-align: center;
    font-size: 16pt;
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

#userListTable tbody td:nth-child(6) {
  overflow-x: auto;
  white-space: nowrap;
}

/* 마지막 행 배경 색상 */
tbody tr:last-of-type {
  border-top: 2px solid #d6ebff;
}
div#grayLayer {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	background: black;
	/* filter: alpha(opacity=60); */
	opacity: 0.60;  /* 0.0 ~ 1.0, 값이 작을수록 더 투명하게 만든다. */
	z-index: 100;
}
</style>
</head>

<body>
<div id='grayLayer'></div>
<jsp:include page='sign_info.jsp' />

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
                        <a class="nav-link" href="../admin/adminMain">대시보드</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../admin/adminMember" style=" color:#0000ff;">회원관리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../admin/adminMission">미션관리</a>
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
      <div class="member_title">
        <h2><strong>회원 관리</strong></h2><br/><br/>
      </div><br>      
	<!-- 이름 & 아이디로 서치 -->
	<form>  
		<div class="list">
            <div class="sec-option" style="display:flex;align-items:center;justify-content:center">
			  <select class="form-select" name="tag" id="condition" >
			    <option value="id" <%= "id".equals(request.getParameter("condition")) ? "selected" : "" %>>아이디</option>
			    <option value="name" <%= "name".equals(request.getParameter("condition")) ? "selected" : "" %>>이름</option>
			  </select>
			  <input type="text" class="form-control me-2" id="search-input" placeholder="검색어 입력" name="word" size="10"">
			  <button type="button" class="btn btn-outline-primary" id="search_onclick_submit" style="width:40%; opacity:90%;">검색</button>
			</div>
        </div>
	</form>
	&nbsp;&nbsp;
                     

<input type = "hidden" id ="pg" value ="${pg}">
<input type = "hidden" id ="tag" value ="${tag}">
<input type = "hidden" id ="word" value ="${word}">
 <div class="container">
  <div class="contents" >		
      <table id="userListTable" class="table table-bordered" border="1" style ="width:100%">
        <thead >
          <tr class="admin_boardList" >
            <th class="admin_member_head">#</th>
            <th class="admin_member_head">이름</th>
            <th class="admin_member_head">아이디</th>
            <th class="admin_member_head">비밀번호</th>
            <th class="admin_member_head">참가 미션</th>
            <th class="admin_member_head">가입날짜</th>
          </tr>
        </thead>
        <tbody>
          <!-- 동적 처리 -->
        </tbody>
        <tfoot>
          <tr>
            <td colspan="8" class="text-center" style="border-top: 2px solid lightgrey;">OhMyGoal Member</td>
          </tr>
        </tfoot>
     </table>  
     &nbsp;&nbsp;
      <div class="pagination" id="memberPagingDiv" style="margin-top:10px;margin-left:20px; width:100%; text-align:center;"></div>
    </div>
</div>
</div> 
</div>
<footer class="footer" style="display:flex; justify-content:center;">
  <div class="footerDiv" >
    <p style="margin: 0 10px;"><strong>OhMyGoal! 2023</strong></p>
    <p style="margin: 0 10px;">모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
    <p style="margin: 0 10px;">ohmygoal.help@gmail.com</p>
  </div>
</footer>




<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type= "text/javascript" src="../js/admin/adminMember.js"></script>
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
			event.preventDefault();
		}
    });
});

//검색
$('#search_onclick_submit').click(function () {
	var searchInput = document.getElementById("search-input").value.trim();
    if (searchInput === "") {
        alert("검색할 아이디 혹은 이름을 입력하세요.");
        event.preventDefault();
    }
    else{location.href="/OhMyGoal/admin/adminMember?pg="+$('#pg').val()+"&tag="+$('#condition').val()+"&word="+$('#search-input').val();}
});

$('#search-input').keydown(function (event) {if (event.keyCode == 13) {$('#search_onclick_submit').click();}});

$(document).on('click', '.nameBtn', function() {
	$('#grayLayer').fadeIn(300);
	$('#signup-wrap').fadeIn(300);
	
	$.ajax({
		type: 'post',
		url: '/OhMyGoal/board/sign_info',
		data: {id: $(this).val()},
		dataType: 'json',
		success: function (data) {
			$("#id").val(data.id);
			$("#pwd").val(data.pwd);
			$("#name").val(data.name);
			$("#email1").val(data.email1);
			$("#email2").val(data.email2);
			$("#tel1").val(data.tel1);
			$("#tel2").val(data.tel2);
			$("#tel3").val(data.tel3);
			$("#zipcode").val(data.zipcode);
			$("#addr1").val(data.addr1);
			$("#addr2").val(data.addr2);
		},
		error: function (err) {
			console.log(err);
		}
	});
});

$('#grayLayer').click(function(){
	$(this).fadeOut(300);
	$('#signup-wrap').fadeOut(300);
});

//페이징 처리
function memberPaging(pg, tag, word){
	location.href="/OhMyGoal/admin/adminMember?pg="+pg+"&tag="+tag+"&word="+word;
}
</script>
</body>
</html>