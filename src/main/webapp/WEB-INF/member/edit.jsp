<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
input{
	border-radius: 5px;
}
</style>	 
<form id="editForm">
	<div class="modal fade" tabindex="-1" id="ModalEdit"
		aria-labelledby="ModalLabel2">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5">개인정보수정</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						faria-label="Close" style="border-radius: 5px;"></button>
				</div>
				<div class="modal-body">
					<table>
						<tr>
							<td>
								<div class="spacing">아이디</div> <input type="text" name="id"
								id="id" readonly>
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">비밀번호</div> <input type="button"
								id="changePwd" value="비밀번호 변경" style="border-radius: 5px;">
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">
									이름<span class="essential"> *</span>
								</div> <input type="text" name="name" id="name"
								placeholder="이름을 입력하세요">
								<div class="checkDiv" id="checkName"></div>
							</td>
						</tr>
						<tr>
							<td id="emailTd">
								<div class="spacing">
									이메일<span class="essential"></span>
								</div> <input type="text" name="email1" id="email1" readonly>
								@ <input type="text" name="email2" id="email2" readonly>
								<div class="checkDiv" id="checkEmail"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">
									연락처<span class="essential"> *</span>
								</div> <input type="text" name="tel1" id="tel1" readonly> - <input
								type="text" name="tel2" id="tel2"> - <input type="text"
								name="tel3" id="tel3">
								<div class="checkDiv" id="checkTel"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">
									주소 <span class="essential"> *</span>
								</div> <input type="text" name="zipcode" id="zipcode"
								placeholder="우편번호" size="5" readonly> <input
								type="button" value="검색" id="search" style="border-radius: 5px;"> <input type="text"
								name="addr1" id="addr1" placeholder="주소" readonly> <input
								type="text" name="addr2" id="addr2" placeholder="상세주소">
								<div class="checkDiv" id="checkAddr"></div>
							</td>
						</tr>
						<tr>
							<td id="btn"><input type="button" id="save" value="저장" style="border-radius: 5px;">
								<input type="button" id="cancel" data-bs-dismiss="modal"
								value="취소" style="border-radius: 5px;"></td>
						</tr>
						<tr>
							<td id="withdrawl">회원탈퇴</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</form>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$('#selectEmail').change(function() {
		if ($('#selectEmail').val() == '') {
			$('#email2').attr('readonly', false);
			$('#email2').val('');
			$('#email2').focus();
		} else {
			$('#email2').attr('readonly', true);
			$('#email2').val($('#selectEmail').val());
		}
	});
</script>
<script>
	$('#save').click(function() {
		$('#checkRePwd').empty();
		$('#checkName').empty();
		$('#checkEmail').empty();
		$('#checkTel').empty();
		$('#checkAddr').empty();

		if ($('#pwd').val() != '' && $('#rePwd').val() == '') {
			$('#checkPwd').text('새 비밀번호 확인을 입력하세요');
			$('#rePwd').focus();
		} else if ($('#pwd').val() != $('#rePwd').val()) {
			$('#rePwd').text('새 비밀번호 확인이 다릅니다.');
			$('#rePwd').focus();
		} else if ($('#name').val() == '') {
			$('#checkName').text('아이디를 입력하세요');
			$('#name').focus();
		} else if ($('#tel2').val() == '') {
			$('#checkTel').text('전화번호를 입력하세요');
			$('#tel2').focus();
		} else if ($('#tel3').val() == '') {
			$('#checkTel').text('전화번호를 입력하세요');
			$('#tel3').focus();
		} else if ($('#zipcode').val() == '') {
			$('#checkAddr').text('우편번호를 입력하세요');
			$('#zipcode').focus();
		} else if ($('#addr1').val() == '') {
			$('#checkAddr').text('주소를 입력하세요');
			$('#addr1').focus();
		} else if ($('#addr2').val() == '') {
			$('#checkAddr').text('상세주소를 입력하세요');
			$('#addr2').focus();
		} else {
			$.ajax({
				type : 'post',
				url : 'update',
				data : $('#editForm').serialize(),
				success : function(data) {
					if (data != 0) {
						alert("수정되었습니다.");
						location.reload();
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
<script>
	$('#changePwd').click(function() {
		$('#ModalEdit').modal('hide');
		$('#ModalchangePwd').modal('show');
	});

	$('#withdrawl').click(function() {
		$('#ModalEdit').modal('hide');
		$('#Modalwithdrawl').modal('show');
	});
</script>
