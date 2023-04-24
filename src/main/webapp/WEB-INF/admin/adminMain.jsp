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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
<link rel="shortcut icon" href="../img/icon/check.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- 구글 차트 Api -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<link rel="stylesheet" href="../css/admin/adminMain.css">
<title>AdminPage👅</title>
<style type="text/css">
#container-fluid {
  margin-top: 50px;
}

.dashboard-row {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  margin-top: 40px;
}

.dashboard-block {
  background-color: #ffffff;
  border: 0.5px solid #dddddd;
  border-radius: 4px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  padding: 20px;
  width: 400px;
  margin-right: -10px;
  margin-bottom: 40px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  
}

.block-title {
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
}

.block-data {
  font-size: 24px;
  font-weight: bold;
  margin: 0;
}

.block-data i {
  margin-left: 5px;
}

.dashboard {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}

#recent-mission {
  border: none;
  position: absolute;
  top: calc(50% + 50px);
  left: 50%;
  transform: translate(-50%, -50%);
  width: 80%;
}

/*table */
#userListTable {
  top:10px;
  border-collapse: separate;
  border-spacing: 2px 2px;
  margin: 0 auto;
  margin-top: 30px;
  text-align: center;
  width:1100px;
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
<section>
	<div class="dashboard">
  		<div class="dashboard-row">
    		<div class="dashboard-block">
      			<h2 class="block-title">사용자 수</h2>
      			<i class="fas fa-smile"></i><p class="block-data">4 </p>
    		</div>
    		<div class="dashboard-block">
	      		<h2 class="block-title">전체 글 수</h2>
	      		<i class="far fa-list-alt"></i><p class="block-data">16 </p>
    		</div>
    		<div class="dashboard-block">
      			<h2 class="block-title">방문자 수</h2>
      			<i class="fas fa-users"></i><p class="block-data">10 </p>
    		</div>
 		 </div>
  		<br><br><br>
  		<p>
		<div class="dashboard-row2">
	    	<div class="dashboard-block" id="recent-mission" style="margin-top: 180px;">
	     		<h2 class="block-title">Recent Mission</h2>
	      		<select id="dateRangeSelect" class="form-select shadow-none row border-top" style="display: inline-block; margin-right:-1030px;margin-bottom:10px; float: right; width:150px;">
				   <option>이번 주</option>
				   <option>이번 달</option>
				   <option>전체</option>
				</select>

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
				            <th class="admin_board_head">참여자</th>
				            <th class="admin_board_head">등록날짜</th>
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
				      <div class="pagination" id ="boardPagingDiv"  style="margin-top:10px;display: inline-block; margin-left:40px;width:450px; text-align:center;"></div>
				    </div>
				</div>
				</div> 
				</div>
	    	</div>
	 	</div>
		</p>
	</div>


	 
     
     <!--  <div class="chart_zone" style="margin-top:180px;margin-left:120px;text-align:center;" >
        <div class="chart_box"></div>
       <div id="columnchart_material" class="googlechart" style="width: 800px; height: 500px;"></div>
      </div>
    </div> -->
    
</section>   
<!-- <div class="footer" style="width:100%;text-align:center">  
        &nbsp;&nbsp;&nbsp;&nbsp;
            <p><strong>OhMyGoal! 2023</strong></p>
            <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
            <p>ohmygoal.help@gmail.com</p>
</div> -->


<script type= "text/javascript" src="../js/admin/adminMain.js"></script>
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


// 로그아웃
/ 로그아웃
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

</script>
</body>
</html>