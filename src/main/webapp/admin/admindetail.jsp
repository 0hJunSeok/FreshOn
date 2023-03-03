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
	<%@ include  file="../top.jsp" %>
	<main id="detail">
		<div
			style="width: 1050px; margin: auto; overflow: hidden; border: 1px solid gray;">
			<div>
				<img width="300" height="400" src="/upload/${pro.image }"
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
			<%-- <div>
				<form method="post" action="ordees">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }"> 
					<input type="number" min=1 max=10 name="quantity">
					<button onclick="">구매</button>
				</form>
			</div>
			<div>
				<form method="post" action="cart">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }"> 
					<input type="number" min=1 max=10 name="quantity">
					<button onclick="">장바구니</button>
				</form>
			</div> --%>
			
		</div>
	</main>
</body>
</html>