<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
input{ 
	border-radius: 5px;
}
</style>	
<link rel="stylesheet" href="../css/member/changePwd.css">
<form id="changePwdForm">
	<div class="modal fade" tabindex="-1" id="ModalchangePwd"
		aria-labelledby="ModalLabel2">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5">비밀번호 변경</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						faria-label="Close" style="border-radius: 5px;"></button>
				</div>
				<div class="modal-body">
					<table>
						<tr>
							<td>
								<div class="spacing">
									비밀번호<span class="essential"> *</span>
								</div> <input type="password" name="pwd" id="pwd" placeholder="새 비밀번호">
								<input type="password" id="rePwd" placeholder="새 비밀번호 확인">
								<div class="checkDiv" id="checkPwd"></div>
							</td>
						</tr>
						<tr>
							<td id="btn"><input type="button" id="changePwdsave"
								value="저장" style="border-radius: 5px;"> <input type="button" id="changePwdcancel"
								data-bs-dismiss="modal" value="뒤로" style="border-radius: 5px;"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</form>

<script>
	$('#changePwdcancel').click(function() {
		$('#ModalEdit').modal('show');
		$('#ModalchangePwd').modal('hide');
		$('#changePwdForm').each(function() {
			this.reset();
		});
	});

	$('#changePwdsave').click(function() {
		$('#checkPwd').empty();

		if ($('#pwd').val() == '') {
			$('#checkPwd').text('새 비밀번호를 입력하세요');
			$('#pwd').focus();
		} else if ($('#rePwd').val() == '') {
			$('#checkPwd').text('새 비밀번호 확인을 입력하세요');
			$('#rePwd').focus();
		} else if ($('#pwd').val() != $('#rePwd').val()) {
			$('#checkPwd').text('새 비밀번호 확인이 다릅니다.');
			$('#checkPwd').focus();
		} else {
			$.ajax({
				type : 'post',
				url : 'changePwd',
				data : 'pwd=' + $('#pwd').val(),
				success : function(data) {
					if (data != 0) {
						alert("수정되었습니다. 다시 로그인하세요.");
						$('#changePwdForm').each(function() {
							this.reset();
						});
						location.href = '/OhMyGoal/';
					} else {
						alert("다시 시도해주세요.");
					}
				},
				error : function(err) {
					alert("다시 시도해주세요.");
				}
			})
		}
	});
</script>