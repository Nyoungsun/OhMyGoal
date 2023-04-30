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
<title>관리자</title>
<style type="text/css">
#container-fluid {
  margin-top: 50px;
}
/*전체 회원/ 전체 미션 수 표시 */
.dashboard {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 5vh;
}

.dashboard-row {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.dashboard-block {
  position:relative;
  background-color: #ffffff;
  border: 1px solid #dddddd;
  border-radius: 5px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  flex: 1;
  text-align: center;
  padding: 10px;
  display: flex;
  flex-direction: column;  
  justify-content: center;
  align-items: center;
  margin-right: -770px;
  margin-left: 250px;
  margin-top: -700px;
  max-width:550px;
  max-height: 200px; /* 최대 높이 설정 */
  height: auto;
}


.dashboard-block + .dashboard-block {
  margin-top: -30px;
}

.block-title {
  font-size: 30px;
  margin-top: 15px;
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


/*ranking table */
.medal-table table {
  border-collapse: collapse;
  justify-content: center;
  margin-left: auto;
  margin-right: auto;
  margin-top: -100px;
  margin-bottom:0px;
  width: 70%;
}


.medal-table th, .medal-table td {
  margin-top:50px;
  padding: 10px;
  text-align: center;
  vertical-align: middle;
}

.medal-table th {
  border: none;
  
}

.medal-table td {
  border: none;
}

.medal-table .label {
  font-weight: bold;
}

.medal-table img {
  max-width: 50px;
  display: block;
  margin: 0 auto;
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
	<div style="display:flex; margin-top: 50px; margin-right:250px;">
		  <div id="donutchart" style="width: 70%; height: 700px;"></div>
	</div><br><br>
		
	<div class="dashboard">
	  <div class="dashboard-row">
	    <div class="dashboard-block">
	      <h2 class="block-title">회원 수</h2><br>
	      <i class="fa fa-user icon"></i>
	      <p class="block-data">${dashboard.totalB}</p>
	    </div>
	 
	    <div class="dashboard-block">
	      <h2 class="block-title">전체 글 수</h2><br>
	      <i class="far fa-list-alt icon"></i>
	      <p class="block-data">${dashboard.totalA}</p>
	    </div>
	   
	  </div>
	  
	</div>
		<br>
 		

<!-- ranking  -->
<div class="medal-table" style="margin-bottom:70px;">
  <table>
    <thead>
      <tr>
        <th colspan="4">회원 미션 순위</th>
       </tr>
       <th></th>
        <th>금메달</th>
        <th>은메달</th>
        <th>동메달</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="label"><strong>메달</strong></td>
        <td><img src="../img/medal/first.png" alt="금메달"></td>
        <td><img src="../img/medal/second.png" alt="은메달"></td>
        <td><img src="../img/medal/third.png" alt="동메달"></td>
      </tr>
      <tr>
        <td class="label"><strong>아이디</strong></td>
        <td>${rankList[0].id}</td>
        <td>${rankList[1].id}</td>
        <td>${rankList[2].id}</td>
      </tr>
      
    </tbody>
  </table>
</div>

 <br><br>
    
</section>   
 <footer class="footer" align="center">
        <div class="footerDiv" style="margin-bottom:0px;">
            <p><strong>OhMyGoal! 2023</strong></p>
            <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
            <p>ohmygoal.help@gmail.com</p>
        </div>
</footer>

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
      ['취미', ${dashboard.hobby}],
      ['기타', ${dashboard.etc}]
    ]);

    var options = {
      title: 'Mission Category',
      pieHole: 0.4,
    };

    var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
    chart.draw(data, options);
  }
  
 
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

//페이징 처리
function boardPaging(pg, tag, word){
	location.href="/OhMyGoal/admin/adminMission?pg="+pg+"&tag="+tag+"&word="+word;
}
</script>
</body>
</html>