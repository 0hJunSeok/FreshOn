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
	<%@ include  file="../top.jsp" %>
<!-- <ul>
	<li><a href="list?category=농산물">농산물</a></li>
	<li><a href="list?category=수산물">수산물</a></li>
	<li><a href="list?category">축산물</a></li>
	<li><a href="list?category">가공식품</a></li>
	<li><a href="list?category">소모품</a></li>
</ul> -->
<hr>
	<main id="list">
		<div
			style="width: 1050px; margin: auto; overflow: hidden; border: 1px solid gray;">
			<form method="post" action='new' name='delete'>
			<c:forEach var="pro" items="${products }">
				<div class="gallery">
					<div style="float: left; border: 1px solid gray; padding: 5px;">
						<a href="detail?pcode=${pro.pcode }"
							style="text-decoration: none; color: black;"> 
							<img width="250" height="300" 
							src="/upload/${pro.image }" alt="${pro.name }">
						</a>
							<p>${pro.name }</p>
							<p>${pro.price }원</p>
						<br><button type="button" onclick="delete_product('${pro.pcode }')"
							style="background-color: green;color:white;border:none;cursor: pointer;"
						>삭제</button>
						<div style="text-align: center;margin-bottom: 10px;"></div>
					</div>
				</div>
			</c:forEach>
			</form>
		</div>
	</main>
	<script type="text/javascript" src="../js/delete.js"></script> 
</body>
</html>