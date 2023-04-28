<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css"> 
input{ 
	border-radius: 5px;
}
</style>	
<div class="modal fade" tabindex="-1" id="ModalResultId">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5">아이디 찾기</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div id="resultId" class="shadow-none p-3 bg-light rounded">
					<!-- 동적 처리 -->
				</div>
				<div id="btnDiv">
					<input type="button" id="okBtn" value="확인">
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$('#okBtn').click(function() {
		$('#ModalResultId').modal('hide');
	});
</script>




