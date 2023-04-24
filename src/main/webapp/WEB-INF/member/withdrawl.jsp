<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/member/withdrawl.css">
<form id="withdrawlForm">
	<div class="modal fade" tabindex="-1" id="Modalwithdrawl"
		aria-labelledby="ModalLabel2">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5">탈퇴하시겠습니까?</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						faria-label="Close"></button>
				</div>
				<div id="withdrawlBtn" class="modal-body">
					<input type="button" id="oKWithdrawl" value="확인"> 
					<input type="button" id="NoWithdrawl" data-bs-dismiss="modal" value="뒤로">
				</div>
			</div>
		</div>
	</div>
</form>

<script>
$('#NoWithdrawl').click(function(){
	$('#ModalEdit').modal('show');
	$('#Modalwithdrawl').modal('hide'); 
});

$('#oKWithdrawl').click(function(){
	$.ajax({
		type : 'post',
		url : 'withdrawl',
		success : function(data) {
			if (data != 0) {
				alert("탈퇴되었습니다.");
				location.href = '/OhMyGoal/';
			} else {
				alert("다시 시도해주세요.");
			}
		},
		error : function(err) {
			alert("다시 시도해주세요.");
		}
	})
});
</script>