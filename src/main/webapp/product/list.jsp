<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#product{
	float: left; 
	border: 1px solid gray;
	border-radius: 15px;
	padding: 10px;
	margin: 5px;	
	}
	#product:hover {
	border: 3px solid gray;
	margin: -3px;
	}

</style>
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<%@ include  file="../top.jsp" %>
	<main id="list">
		<div style="width: 1150px; margin: auto;">
			<c:forEach var="pro" items="${products }">
				<div class="gallery">
					<div id="product">
						<a href="detail?pcode=${pro.pcode }"
							style="text-decoration: none; color: black;"> 
							<img width="250" height="300" 
							src="/upload/${pro.image }" alt="${pro.name }">
							<div style="font-size: 15px;">
							<p>${pro.name }</p>
							<p>${pro.price }원</p>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</main>
	<%@ include file="../button.jsp" %>
</body>
</html>