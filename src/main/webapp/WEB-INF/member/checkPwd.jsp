<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="modal fade" tabindex="-1" id="ModalCheckPwd">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5">비밀번호 확인</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">

				<input type="password" id="editCheckPwd" placeholder="비밀번호를 입력하세요.">
				<div class="checkDiv" id="editCheckPwdDiv"></div>

				<button type="button" id="okBtn">확인</button>
			</div>
		</div>
	</div>
</div>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$('#okBtn').click(function() {
		$('#editCheckPwdDiv').empty();

		if ($('#editCheckPwd').val() == '') {
			$('#editCheckPwdDiv').text('비밀번호를 입력하세요');
			$('#editCheckPwd').focus();
		} else {
			$.ajax({
				type : 'post',
				url : 'checkPwd',
				data : 'editCheckPwd=' + $('#editCheckPwd').val(),
				success : function(data) {
					if (data != 'match') {
						$('#editCheckPwdDiv').text('비밀번호를 다시 입력하세요');
						$('#editCheckPwd').focus();

						$('#ModalCheckPwd').on('hidden.bs.modal', function() {
							$('#editCheckPwd').val('');
							$('#editCheckPwdDiv').empty();
						});
					} else {
						$('#editCheckPwdDiv').empty();
						$('#editCheckPwd').val('');
						$('#ModalCheckPwd').modal('hide');
						$('#ModalEdit').modal('show');
					}
				},
				error : function(err) {
					console.log(err);
				}
			})
		}
	});
</script>




