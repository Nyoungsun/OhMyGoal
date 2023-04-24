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
}

th,
td {
  padding: 2.55rem;
  text-align: center;
  border-top: 1px solid #dee2e6;
  border-bottom: 1px solid #dee2e6;
  border-left: none;
  border-right: none;
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
  background-color: #e9ecef;
  border-bottom: 2px solid #dee2e6;
}

tbody tr:nth-of-type(even) {
  background-color: #f8f9fa;
}

/* 마지막 행 배경 색상 */
tbody tr:last-of-type {
  background-color: #e9ecef;
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
                        <a class="nav-link" href="../admin/adminMain">대시보드</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../admin/adminMember">회원관리</a>
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
        <h2><strong>미션 관리</strong></h2><br/><br/>
      </div><br>      
	<!-- 이름 & 아이디로 서치 -->
	<form>
		<div class="list">
            <div class="sec-option" style="display:flex;align-items:center;justify-content:center">
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
	&nbsp;&nbsp;
                     

<input type = "hidden" id ="pg" value ="${pg }">
 <div class="container">
  <div class="contents">		
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
            <td colspan="8" class="text-center">OhMyGoal Mission</td>
          </tr>
        </tfoot>
     </table>
     &nbsp;&nbsp;
      <div class="pagination" id ="boardPagingDiv"  style="margin-top:10px;display: inline-block; margin-left:360px;width:450px; text-align:center;"></div>
    </div>
</div>
</div> 
</div>
<!-- <footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						<strong>OhMyGoal! 2023</strong>
					</p>
					<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>  
					<p>OhMyGoal.help@gmail.com</p>
				</div>
			</div>
		</div>
	</footer>
 -->

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
	
	$('.btn-outline-primary').click(function(){
		console.log("버튼눌림");
	});
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