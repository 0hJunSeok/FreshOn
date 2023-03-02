<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#del{
	background-color: gray;
	color: white;
	border-radius: 15px;
	}
	#buy{
	background-color: gray;
	color: white;
	border-radius: 15px;
	}
	#number{
	width: 30px;
	color: black;
	font-size: 20px;
	}
	#pay{
	font-size: 15px;
	color: black;
	}
</style>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<%@ include  file="../top.jsp" %>
	<main id="cart">
		<div
			style="width: 1050px; margin: auto;">
			<c:set var="total" value="0"/>
			<form id="pay" method="post" action="pay" >
			<c:forEach items="${carts }" var="pro">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }">
					<input type="hidden" name="ccode" value="${pro.ccode }">
					<div style="float: left; border: 1px solid gray;">
						<img width="150" height="150"  src="/upload/${pro.image }" alt="${pro.name}">
						<p>${pro.name }</p>
						<p class="price">${pro.price }</p>
						<input id="number" class="sumquant" type="number" min=1 max=10 name="quant" value="${pro.sumquant }">		
						<p><c:set var="total" value="${total + pro.sumtotal }"/></p>
						<span class="sumtotal"><c:out value="${pro.sumquant*pro.price}"/></span>
					<button id="del" type="button" onclick="location.href='cartdel?ccode=${pro.ccode }'">x</button>
					</div>
			</c:forEach>
				<span id="total"><c:out value="${total }"/></span>											
					<button id="buy"><a href="javascript:buy()">구매</a></button>
			</form>
		</div>
	</main>
	<script type="text/javascript" src="../js/cart.js"></script>
</body>
</html>
