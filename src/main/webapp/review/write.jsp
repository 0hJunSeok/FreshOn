<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰 작성하기</title>
<meta charset="UTF-8">
</head>
<body>
	<main id="write">
		<h3>FreshOn Market</h3>
		<p>리뷰 작성하기</p>
		<hr style="color: white;">
		<form method="post" action="write">
			<table>


				<tr>
					<th><label>상품코드</label></th>
					<td><input type="text" style="border: none" name="pcode"
						size="50" readonly="readonly" value="${pcode }"></td>
				<tr>
				<tr>
					<th><label>카테고리</label></th>
					<td><input type="text" style="border: none" name="category"
						size="50" readonly="readonly" value="${category }"></td>
				<tr>
				<tr>
					<th><label>상세카테고리</label></th>
					<td><input type="text" style="border: none" name="subcategory"
						size="50" readonly="readonly" value="${subcategory }"></td>
				<tr>
				<tr>
					<th><label>상품이름</label></th>
					<td><input type="text" style="border: none" name="category"
						size="50" readonly="readonly" value="${category }"></td>
				<tr>
				<tr>
					<th><label>상품가격</label></th>
					<td><input type="text" style="border: none" name="price"
						size="50" readonly="readonly" value="${price }"></td>
				<tr>
				<tr>
					<th><label>상품정보</label></th>
					<td><textarea rows="30" cols="80" name="content"
							style="resize: none;"></textarea></td>
				<tr>
				<tr>
					<th><label>상품이미지</label></th>
					<td><input type="image" name="image" size="50"
						readonly="readonly" value="${image }"></td>
				<tr>

					<th><label>점수</label></th>
					<td><input type="number" min="1" max="5" name="grade"
						size="50" required></td>
				</tr>

				<tr>
					<th><label>내용</label></th>
					<td><textarea rows="30" cols="80" name="review"
							style="resize: none;" required></textarea></td>
				</tr>
				<tr>
					<th><label>주문번호</label></th>
					<td><input type="number" name="ocode" size="50"
						readonly="readonly" value="${ocode }"></td>
				</tr>
				<tr>
					<td style="text-align: center; padding: 10px;" colspan="2">
						<button type="submit">저장</button>
						<button type="reset">다시쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</main>
</body>
</html>
