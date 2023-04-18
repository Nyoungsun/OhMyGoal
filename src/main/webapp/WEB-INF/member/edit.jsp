<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.checkDiv {
		color: #ff0000;
		font-size: 10pt;
	}
</style>
<form id="editForm">
	<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="ModalLabel">개인정보수정</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<table>
						<tr>
							<td>
								<div class="spacing">아이디</div> <input type="text" name="id" id="id" readonly>
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">
									비밀번호<span class="essential"> *</span>
								</div> 
								<input type="password" name="pwd" id="pwd" placeholder="비밀번호">
								<div class="checkDiv" id="checkPwd"></div> 
								<input type="password" id="rePwd" placeholder="비밀번호 확인">
								<div class="checkDiv" id="checkRePwd"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">
									이름<span class="essential"> *</span>
								</div>
								<input type="text" name="name" id="name" placeholder="이름을 입력하세요">
								<div class="checkDiv" id="checkName"></div>
							</td>
						</tr>
						<tr>
							<td id="emailTd">
								<div class="spacing">
									이메일<span class="essential"> *</span>
								</div> 
								<input type="text" name="email1" id="email1"> @ <input type="text" name="email2" id="email2"> &nbsp;
								<select name="selectEmail" id="selectEmail" onChange="select()">
									<option value="" selected>직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="nate.com">nate.com</option>
									<option value="daum.net">daum.net</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="kakao.com">kakao.com</option>
								</select>
								<div class="checkDiv" id="checkEmail"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">
									연락처<span class="essential"> *</span>
								</div> 
								<input type="text" name="tel1" id="tel1" value="010" readonly>
								- <input type="text" name="tel2" id="tel2"> 
								- <input type="text" name="tel3" id="tel3">
								<div class="checkDiv" id="checkTel"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="spacing">
									주소 <span class="essential"> *</span>
								</div> 
								<input type="text" name="zipcode" id="zipcode" placeholder="우편번호" size="5" readonly> 
								<input type="button" value="검색" id="search" onClick="search()">
								<input type="text" name="addr1" id="addr1" placeholder="주소" readonly> 
								<input type="text" name="addr2" id="addr2" placeholder="상세주소">
								<div class="checkDiv" id="checkAddr"></div>
							</td>
						</tr>
						<tr>
							<td id="btn">
								<input type="button" id="save" value="저장">
								<input type="reset" id="cancel" data-bs-dismiss="modal" value="취소">
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</form>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="../js/member/edit.js"> </script>
