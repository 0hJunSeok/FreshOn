<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#list{
	background-color: white;
	font-size: 20px;
	text-align: center;
	}
</style>
<meta charset="UTF-8">
<title>주문조회</title>
</head>
<body>
<%@ include file="../top.jsp" %>
	<main id="pays">
		<div style="width: 500px; margin: auto; border: 1px solid gray;">
			<c:set var="total" value="0"/>
			<form method="post" action="orders">
			<input type="hidden" name="id" value="${users.id }">
			<c:forEach var="pro" items="${sessionScope.paylist }" varStatus="status">
				<div id="list">
						<p>${pro.name } ${pro.price }원 ${quants[status.index] }개</p>
						<p><c:set var="total" value="${total + pro.price * quants[status.index]}"/></p>	
				</div>
			</c:forEach>
			<p style="font-size: 15px;"><c:out value="${total }"/>원</p>
			<p><button type="button" onclick="order()">결제하기</button></p>
			</form>
		</div>
	</main>
	<script type="text/javascript" src="../js/cart.js"></script>
</body>
</html>