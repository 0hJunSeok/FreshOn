<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품</title>
</head>
<body>
	<main id="detail">
		<h3>test</h3>
		<p>상품 테스트</p>
		<a href="list">홈으로</a> <a href="cart">장바구니</a>
		<hr style="color: white;">
		<div
			style="width: 1050px; margin: auto; overflow: hidden; border: 1px solid gray;">
			<div>
				<img width="600" height="800" src="/upload/${pro.image }"
					alt="${pro.name }">
			</div>
			<div>
				<p>${pro.name }</p>
			</div>
			<div>
				<p>${pro.price }원</p>
			</div>
			<div>
				<pre>${pro.content }</pre>
			</div>
			<div>
				<form method="post" action="orders?cart=no" name="order">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }">
					<input type="number" min=1 max=10 name="quant">
					<button type="button" onclick="buy()">구매</button>
				</form>
			</div>
			<div>
				<form method="post" action="cart">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }"> 
					<input type="number" min=1 max=10 name="quantity">
					<button>장바구니</button>
				</form>
			</div>
		</div>
	</main>
	<script type="text/javascript" src="../js/orders.js"></script>	
</body>
</html>