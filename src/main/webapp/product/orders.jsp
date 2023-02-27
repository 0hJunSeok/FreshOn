<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매창</title>
</head>
<body>
	<main id="orders">
		<h3>test</h3>
		<p>구매창 테스트</p>
		<a href="list">홈으로</a>
		<hr style="color: white;">
		<div style="width: 1050px; margin: auto; overflow: hidden; border: 1px solid gray;">
			<c:set var="total" value="0"/>
			<form method="post" action="pay" name="pay">
			<c:forEach var="pro" items="${orders }">
				<div>
						<p>${pro.name } ${pro.price }원 ${pro.quantity }개 ${pro.totalprice }원</p>
						<p>(${pro.odate })</p>
						<p><c:set var="total" value="${total + pro.totalprice }"/></p>					
				</div>
			</c:forEach>
			<p><c:out value="${total }"/>원</p>
			<button type="button" onclick="paymoney()">결제</button>
			</form>
		</div>
	</main>
	<script type="text/javascript" src="../js/orders.js"></script>
</body>
</html>