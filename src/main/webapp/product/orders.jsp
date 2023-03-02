<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문조회</title>
</head>
<body>
<%@ include file="../top.jsp" %>
	<main id="orders">
		<div style="width: 1050px; margin: auto; overflow: hidden; border: 1px solid gray;">
			<c:set var="total" value="0"/>
			<form method="post" action="pay" name="pay">
			<input type="hidden" name="id" value="${users.id }">
			<c:forEach var="pro" items="${orders }">
				<div>
						<p>${pro.name } ${pro.price }원 ${pro.quantity }개 ${pro.totalprice }원</p>
						<p>${pro.odate }</p>
						<p><c:set var="total" value="${total + pro.totalprice }"/></p>	
						<p><a href="/FreshOn/review/write?ocode=${pro.ocode }"
							style="text-decoration: none; color: black;">리뷰작성하기</a></p>
				</div>
			</c:forEach>
			<p><c:out value="${total }"/>원</p>
			</form>
		</div>
	</main>
</body>
</html>