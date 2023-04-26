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

/* .dashboard-row {
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
 */
.dashboard {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.dashboard-row {
  display: flex;
  gap: 20px;
}

.dashboard-block {
  background-color: #ffffff;
  border: 1px solid #dddddd;
  border-radius: 4px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  flex: 1;
  text-align: center;
  padding: 25px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top:-350px;
}

.block-title {
  font-size: 30px;
  margin-top: 0;
}

.icon {
  font-size: 30px;
  margin-bottom: 10px;
}

.block-data {
  font-size: 30px;
  font-weight: bold;
  margin: 0;
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
#calendar_basic {
  margin: -450px auto 0; /* 가로 중앙 정렬 및 위로 100px 이동 */
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
                        <a class="nav-link" href="../admin/adminMain" style=" color:#0000ff;">대시보드</a>
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
	      <h2 class="block-title">회원 수</h2><br>
	      <i class="fas fa-smile icon"></i>
	      <p class="block-data">${dashboard.totalB}</p>
	    </div>
	    <div class="dashboard-block">
	      <h2 class="block-title">전체 글 수</h2><br>
	      <i class="far fa-list-alt icon"></i>
	      <p class="block-data">${dashboard.totalA}</p>
	    </div>
	  </div>
	</div>
		<br><br><br>
 		<div style="display:flex; margin-top: -450px;">
		  <div id="donutchart" style="width: 50%; height: 500px;"></div>
		  <!-- <div id="chart_div" style="width: 50%; height: 500px;"></div> -->
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

 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 <script type="text/javascript">
 <!-- 도넛 차트 -->
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Mission Category', 'Count per Category'],
      ['취업',     ${dashboard.job}],
      ['어학',      ${dashboard.lang}],
      ['운동',  ${dashboard.health}],
      ['기타', ${dashboard.etc}]
    ]);

    var options = {
      title: 'Mission Category',
      pieHole: 0.4,
    };

    var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
    chart.draw(data, options);
  }
  
  /* <!-- 히스토그램 -->
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Dinosaur', 'Length'],
      ['Acrocanthosaurus (top-spined lizard)', 12.2],
      ['Albertosaurus (Alberta lizard)', 9.1],
      ['Allosaurus (other lizard)', 12.2],
      ['Apatosaurus (deceptive lizard)', 22.9],
      ['Archaeopteryx (ancient wing)', 0.9],
      ['Argentinosaurus (Argentina lizard)', 36.6],
      ['Baryonyx (heavy claws)', 9.1],
      ['Brachiosaurus (arm lizard)', 30.5],
      ['Ceratosaurus (horned lizard)', 6.1],
      ['Coelophysis (hollow form)', 2.7],
      ['Compsognathus (elegant jaw)', 0.9],
      ['Deinonychus (terrible claw)', 2.7],
      ['Diplodocus (double beam)', 27.1],
      ['Dromicelomimus (emu mimic)', 3.4],
      ['Gallimimus (fowl mimic)', 5.5],
      ['Mamenchisaurus (Mamenchi lizard)', 21.0],
      ['Megalosaurus (big lizard)', 7.9],
      ['Microvenator (small hunter)', 1.2],
      ['Ornithomimus (bird mimic)', 4.6],
      ['Oviraptor (egg robber)', 1.5],
      ['Plateosaurus (flat lizard)', 7.9],
      ['Sauronithoides (narrow-clawed lizard)', 2.0],
      ['Seismosaurus (tremor lizard)', 45.7],
      ['Spinosaurus (spiny lizard)', 12.2],
      ['Supersaurus (super lizard)', 30.5],
      ['Tyrannosaurus (tyrant lizard)', 15.2],
      ['Ultrasaurus (ultra lizard)', 30.5],
      ['Velociraptor (swift robber)', 1.8]]);

    var options = {
      title: 'Lengths of dinosaurs, in meters',
      legend: { position: 'none' },
    };

    var chart = new google.visualization.Histogram(document.getElementById('chart_div'));
    chart.draw(data, options);
  } */
// 로그아웃
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