<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#list{
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
		<div style="width: 500px; height: auto; margin: auto; border: 1px solid gray; border-radius: 15px; background-color: white;">
			<c:set var="total" value="0"/>
			<form method="post" action="orders">
			<input type="hidden" name="id" value="${users.id }">
			<c:forEach var="pro" items="${sessionScope.paylist }" varStatus="status">
				<div id="list">
						<p>${pro.name } ${pro.price }원 ${quants[status.index] }개</p>
						<p><c:set var="total" value="${total + pro.price * quants[status.index]}"/></p>	
				</div>
			</c:forEach>
			<div style="float: right;">
			<p style="font-size: 15px;"><c:out value="${total }"/>원
			<button style="background-color: gray; border-radius: 15px; color: white;" type="button" onclick="order()">결제하기</button></p>
			</div>
			</form>
		</div>
	</main>
	<script type="text/javascript" src="../js/cart.js"></script>
</body>
</html>