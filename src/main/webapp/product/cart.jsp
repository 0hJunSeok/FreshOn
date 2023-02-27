<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<c:set var="total" value="0"/>
			<form method="post" action="orders" name="order">
			<c:forEach items="${carts }" var="pro">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }">
					<input type="hidden" name="ccode" value="${pro.ccode }">
					<div style="float: left;">
						<img width="150" height="150" src="/upload/${pro.image }" alt="${pro.name}">
						<p>${pro.name }</p>
						<p class="price">${pro.price }</p>
						<input class="sumquant" type="number" min=1 max=10 name="quant" value="${pro.sumquant }">		
						<p><c:set var="total" value="${total + pro.sumtotal }"/></p>
						<span class="sumtotal"><c:out value="${pro.sumquant*pro.price}"/></span>
					<button type="button" onclick="location.href='cartdel?ccode=${pro.ccode }'">x</button>
					</div>
			</c:forEach>
				<span id="total"><c:out value="${total }"/></span>											
					<button type="button" onclick="buy()">구매</button>
			</form>
		</div>
	</main>
	<script type="text/javascript" src="../js/cart.js"></script>
	<script type="text/javascript" src="../js/orders.js"></script>
</body>
</html>
