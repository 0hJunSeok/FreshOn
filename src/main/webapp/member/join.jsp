<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 정보 | 프레쉬온</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
	function checkValue() {
		if (!document.userInfo.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.userInfo.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.userInfo.password.value != document.userInfo.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}

	// 취소 버튼 클릭시 로그인 화면으로 이동
	function goLoginForm() {
		location.href = "login";
	}
</script>
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	background: url('../image/02.png');
	background-size: cover;
	color: white; display : flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	overflow: hidden;
	margin: 0;
	display: flex;
}

h3 {
	height: 70px; padding : auto;
	display: flex;
	flex-grow: 0;
	border-bottom: 1px solid gainsboro;
	align-content: center;
	padding: auto;
}

.input {
	width: 60%;
}

input, select {
	padding: 5px;
	border: 1px solid gray;
	border-radius: 4px;
}
</style>



</head>
<body>
	<div class="box01" style="opacity: 0.9; width: 700px;">
		<h3>회원가입</h3>

		<form method="post" action="join" name="userInfo"
			onsubmit="return checkValue()">
			<table>
				<tr>
					<th id="title">아이디 *</th>
					<td class="input"><input type="text" name="id" maxlength="50">
						</td>
				</tr>

				<tr>
					<th id="title">비밀번호 *</th>
					<td><input type="password" name="password" maxlength="50">
					</td>
				</tr>

				<tr>
					<th id="title">비밀번호 확인 *</th>
					<td><input type="password" name="passwordcheck" maxlength="50">
					</td>
				</tr>

				<tr>
					<th id="title">이름 *</th>
					<td><input type="text" name="name" maxlength="50"></td>
				</tr>

				<tr>
					<th id="title">이메일</th>
					<td><input type="text" name="mail1" maxlength="50">@ <select
						name="mail2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
					</select></td>
				</tr>

				<tr>
					<th id="title">휴대전화 *</th>
					<td><input type="text" name="phone" /></td>
				</tr>
				<tr>
					<th>주소 *</th>
					<td><input type="text" id="address_kakao" name="address"
						readonly /></td>
				</tr>
				<tr>
					<th>상세 주소 *</th>
					<td><input type="text" name="address_detail" /></td>
				</tr>

				<script>
					window.onload = function() {
						document
								.getElementById("address_kakao")
								.addEventListener(
										"click",
										function() { //주소입력칸을 클릭하면
											//카카오 지도 발생
											new daum.Postcode(
													{
														oncomplete : function(
																data) { //선택시 입력값 세팅
															document
																	.getElementById("address_kakao").value = data.address; // 주소 넣기
															document
																	.querySelector(
																			"input[name=address_detail]")
																	.focus(); //상세입력 포커싱
														}
													}).open();
										});
					}
				</script>

				<tr>
					<th id="notice">알림 설정</th>
					<td><input type="radio" name="agree" value="문자" checked>문자수신동의
						<input type="radio" name="agree" value="APP" checked>App알림수신동의
						<input type="radio" name="agree" value="메일" checked>메일수신동의
					</td>
				</tr>
				<tr>
					<th id="route">가입경로</th>
					<td><input type="radio" name="route" value="추천인" checked>추천인
						<input type="radio" name="route" value="영업사원" checked>영업사원
						<input type="radio" name="route" value="인터넷검색" checked>인터넷검색
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: right;"><input
						type="submit" value="가입" style="width: 30%" /> <input
						type="button" value="취소" onclick="goLoginForm()"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>