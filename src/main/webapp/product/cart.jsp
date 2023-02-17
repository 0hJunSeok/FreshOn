<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<main id="cart">
		<h3>test</h3>
		<p>장바구니 테스트</p>
		<a href="list">홈으로</a>
		<hr style="color: white;">
		<div
			style="width: 1050px; margin: auto; overflow: hidden; border: 1px solid gray;">
			<div>
				<img width="250" height="250" src="" alt="">
			
				<form method="post" action="ordees">
					<input type="hidden" name="pcode" value="${pro.pcode }"> <input
						type="hidden" name="price" value="${pro.price }">
					<button onclick="">구매</button>
				</form>
			</div>
		</div>
	</main>
</body>
</html>