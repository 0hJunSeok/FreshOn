<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<ul>
		<li><a href="list?category=농산물">농산물</a></li>
		<li><a href="list?category=수산물">수산물</a></li>
		<li><a href="list?category=축산물">축산물</a></li>
		<li><a href="list?category=가공식품">가공식품</a></li>
		<li><a href="list?category=소모품">소모품</a></li>
	</ul>
	<hr>
	<main id="list">
		<h3>test</h3>
		<p>상품목록 테스트</p>
		<a href="cart">장바구니</a>
		<hr style="color: white;">
		<div
			style="width: 1050px; margin: auto; overflow: hidden; border: 1px solid gray;">
			<c:forEach var="pro" items="${products }">
				<div class="gallery">
					<div style="float: left; border: 1px solid gray; padding: 5px;">
						<a href="detail?pcode=${pro.pcode }"
							style="text-decoration: none; color: black;"> 
							<img width="250" height="300" 
							src="/upload/${pro.image }" alt="${pro.name }">
							<p>${pro.name }</p>
							<p>${pro.price }원</p>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</main>
</body>
</html>