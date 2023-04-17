$('#save').click(function () {
	$('#checkPwd').empty();
	$('#checkName').empty();
	$('#checkEmail').empty();
	$('#checkTel').empty();
	$('#checkAddr').empty();

	if ($('#pwd').val() == '') {
		$('#checkPwd').text('비밀번호를 입력하세요');
		$('#pwd').focus();
	} 
	if ($('#rePwd').val() == '') {
		$('#checkPwd').text('비밀번호 재확인을 입력하세요');
		$('#rePwd').focus();
	} 
	if ($('#name').val() == '') {
		$('#checkName').text('아이디를 입력하세요');
		$('#name').focus();
	}
	 if ($('#email1').val() == '') {
		$('#checkEmail').text('이메일을 입력하세요');
		$('#email1').focus();
	} 
	if ($('#email2').val() == '') {
		$('#checkEmail').text('이메일을 입력하세요');
		$('#email2').focus();
	}
	 if ($('#tel2').val() == '') {
		$('#checkTel').text('전화번호를 입력하세요');
		$('#tel2').focus();
	}
	 if ($('#tel3').val() == '') {
		$('#checkTel').text('전화번호를 입력하세요');
		$('#tel3').focus();
	}
	 if ($('#zipcode').val() == '') {
		$('#checkAddr').text('우편번호를 입력하세요');
		$('#zipcode').focus();
	}
	 if ($('#addr1').val() == '') {
		$('#checkAddr').text('주소를 입력하세요');
		$('#addr1').focus();
	} 
	if ($('#addr2').val() == '') {
		$('#checkAddr').text('상세주소를 입력하세요');
		$('#addr2').focus();
	} else {
		alert("");
	}
});

$('#cancel').click(function () {
    $('#checkPwd').empty();
	$('#checkName').empty();
	$('#checkEmail').empty();
	$('#checkTel').empty();
	$('#checkAddr').empty();
});