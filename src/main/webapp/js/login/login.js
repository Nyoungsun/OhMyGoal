$('#topnav_loginBtn').click(function(){
	$('#grayLayer').fadeIn(300);
	$('#login-wrap').fadeIn(300);
	
	//$('#overLayer').html('<img src="' + $(this).attr('href') + '" />');
	return false;
});

$('#grayLayer').click(function(){
	$(this).fadeOut(300);
	$('#login-wrap').fadeOut(300);
	$('#signup-wrap').fadeOut(300);
});

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