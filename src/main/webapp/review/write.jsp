<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰 작성하기</title>
<meta charset="UTF-8">
<style>
#centerimg {
	text-align: center
}

#img {
	border-radius: 30%
}

.star {
	position: relative;
	font-size: 2rem;
	color: #ddd;
}

.star input {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	opacity: 0;
	cursor: pointer;
}

.star span {
	width: 0;
	position: absolute;
	left: 0;
	color: red;
	overflow: hidden;
	pointer-events: none;
}

#savegrade {
	text-align: center
}

#savereview {
	text-align: center
}

.savebutton {
	text-align: center;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.button {
	width: 140px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

#productdetail {
text-align: center
}

textarea {
	width: 20%;
	height: 200px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 2px #1E90FF;
	border-radius: 5px;
	font-size: 16px;
	resize: both;
}

p {
  font-family: geogia;
  font-weight: bold;
  font-size: 10pt;
}
</style>

<script type="text/javascript" src="../js/star.js"></script>
</head>
<body>
	<%@ include file="../top.jsp"%>
	<main>
		<hr style="color: white;">
		<div id="centerimg">
			<img id="img" width="300" height="300" src="/upload/${order.image }">
		</div>
		<div id="productdetail">
		<p>상품명 : ${ order.name } </p>
		<p>상품가격 : ${ order.price }원</p>
		<p>주문수량 : ${ order.quantity } </p>
		<p>총가격 : ${ order.price }원</p>
		</div>


		<form method="post" action="write">
		<input type="hidden" style="border: none" name="pcode"
				size="50" readonly="readonly" value="${order.pcode }">
						<input type="hidden" style="border: none" name="ocode"
						size="50" readonly="readonly" value="${order.ocode }">
			<div id="savereview">
				<textarea rows="15" cols="50" name="review"
					placeholder="리뷰내용을 작성해주세요" style="resize: none;" required></textarea>
			</div>
			<div id="savegrade">
				<span class="star"> ★★★★★ <span>★★★★★</span> <input
					type="range" oninput="drawStar(this)" value="0" step="2" min="0"
					max="10" name="grade">
				</span>
			</div>
			<br>
			<div class="savebutton">
				<button type="submit" class="button">저장하기</button>
			</div>
			<br>
		</form>
	</main>
	<%@ include file="../button.jsp"%>

</body>
</html>
