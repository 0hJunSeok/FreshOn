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
	font-size: 10px;
	}
	#pay{
	font-size: 10px;
	color: black;
	}
	#con{
	float: right;
	width: 200px;
	padding: 10px 20px;
	box-sizing: border-box;
	}
</style>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<%@ include  file="../top.jsp" %>
	<main id="cart">
		<div
			style="width: 350px; height:auto; margin: auto; border: 1px solid gray; border-radius: 15px; overflow: hidden;box-sizing: border-box;">
			<c:set var="total" value="0"/>
			<form id="pay" method="post" action="pay" >
			<c:forEach items="${carts }" var="pro">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }">
					<input type="hidden" name="ccode" value="${pro.ccode }">
					<div style="float:left;box-sizing: border-box;width:100px;height: 100px;margin:10px;">
						<img width="100%"  src="/upload/${pro.image }" alt="${pro.name}">
					</div>
					<div id="con">
						<p>${pro.name }</p><br>
						<p class="price">${pro.price }</p>
						<input id="number" class="sumquant" type="number" min=1 max=10 name="quant" value="${pro.sumquant }">		
						<p><c:set var="total" value="${total + pro.sumtotal }"/></p>
						<span class="sumtotal"><c:out value="${pro.sumquant*pro.price}"/></span>
					<button id="del" type="button" onclick="location.href='cartdel?ccode=${pro.ccode }'">x</button>
					</div>
			</c:forEach>
			</form>
		</div>
				<div style="margin:auto;clear: left;width:350px;padding: 20px;">
				<span id="total"><c:out value="${total }"/></span>											
					<button id="buy" onclick="buy()">구매</button>
				</div>
	</main>
	<script type="text/javascript" src="../js/cart.js"></script>
</body>
</html>
