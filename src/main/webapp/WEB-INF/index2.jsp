<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form id="emailForm">
<h3>이메일 인증</h3><br>
<input type="hidden" name="codeC" id="codeC" >
<input type="text" name="code" id="code" placeholder="이메일 입력" style="width: 55%">
<input type="button" value="인증번호 받기" id="checkBtn">
<div id="codeDiv"></div><br>

<input type="button" value="openAPI1" onclick="open_api1()" > <br>
<input type="button" value="openAPI2" onclick="open_api2()" > <br>

</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="./js/main.js"></script>
<script type="text/javascript">
$('#checkBtn').click(function(){
	$('#codeDiv').empty();
	
	if($('#code').val() == ''){ //무결성 검사
		$('#codeDiv').text('입력해주십쇼');
		$('#codeDiv').css({'color': 'red', 'font-size': '8pt'});
		$('#code').focus();
	}else{ //이메일 or 인증번호를 입력했을때
		if($('#checkBtn').val() == '인증번호 받기'){ //인증번호 받기
			$('#checkBtn').val('입력 완료');
			$("#code").attr("placeholder", "인증번호 입력");
			
			$.ajax({
				type: 'post',
				url: '/total_function/email/send',
				data: $('#emailForm').serialize(), //서버로 보낼 데이터
				dataType: 'text', //서버로부터 받는 자료형, text, xml, html, json
				success: function(data){
					$('#code').val('');
					$('#codeC').val(data);
				},	
				error: function(err){
					console.log(err);
				}
			});
		}
		else{ //인증번호 입력후 확인
			if($('#codeC').val() == $('#code').val()){
				$("#code").hide();
				$('#checkBtn').val('인증완료 되었습니다.');
			}
			else{
				alert("잘못된 번호입니다.");
			}
		}
	}
});

function getTrainNum() {
	  $.ajax({
	    url: "http://swopenAPI.seoul.go.kr/api/subway/766766737167686f32396f4e554545/json/realtimePosition/0/100/2호선",
	    method: "GET",
	    dataType: "json",
	    success: function(response) {
	    	let rows = response["realtimePositionList"]
	    	for(let i=0; i< rows.length; i++){
	    		if(rows[i]["updnLine"]=="0"  && (rows[i]["statnNm"]=="강남" || rows[i]["statnNm"]=="역삼" || rows[i]["statnNm"]=="선릉"))
	    		{
	    			let name = rows[i]["statnNm"]
	    			let num = rows[i]["trainNo"]
			    	console.log(name, num)
			    	//$("#codeDiv").text(name)
	    		}
	    	}
	    }
	  });
}

function getTrainCongestion(subwayLine, trainY) {
	  $.ajax({
	    url: "https://apis.openapi.sk.com/puzzle/congestion-train/rltm/trains/"+subwayLine+"/"+trainY,
	    headers: {
	    	'accept': 'application/json',
	    	'appkey': 'l7xx846db5f3bc1e48d29b7275a745d501c8'
	    	},
	    method: "GET",
	    dataType: "json",
	    beforeSend: function(xhr) {
	        xhr.setRequestHeader('accept', 'application/json');
	        xhr.setRequestHeader('appkey', 'l7xx846db5f3bc1e48d29b7275a745d501c8');
	    },
	    success: function(response) {
	    	console.log(response)
	    }
	  });
}
// 5초마다 업데이트
setInterval(getTrainCongestion(2, 2214), 5000); //5000 = 5초
</script>

</body>
</html>