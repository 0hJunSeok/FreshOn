<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품</title>
<style type="text/css">


 .item_img_wrap fl{
 float: left;
 box-sizing: border-box;
 width: 500px;
 padding: 20px;
 }

.item_info_option_wrap{
float: left;
 box-sizing: border-box;
 width: 550px;
 height : 450px;
 padding: 20px;
}

.totalwrap1{
width: 1050px;
margin: auto; 
overflow: hidden;
border: 1px solid gray;
}
.totalwrap2{
width: 1050px;
margin: auto; 
border: 1px solid gray;
}

th{
width: 100px;
font-family: geogia;
font-size: 16pt;
}

td{
font-family: geogia;
font-size: 16pt;
}

.wrap {
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
  
  .review{
  font-family: geogia;
  font-size: 15pt;
  }

</style>


</head>
<body>
	<%@ include  file="../top.jsp" %>
	<main id="detail">
	<div class="totalwrap1">
	<div class="item_img_wrap fl">
    <img width="450" height="450" src="/upload/${pro.image }"
					alt="${pro.name }" id="img">          
     </div>

	 <div class="item_info_option_wrap">
                <table class="item_info_option" >
                    <tbody>
                    <tr>
                        <th>상품이름</th>
                        <td>${pro.name }</td>
                    </tr>
                    <tr>
                        <th>상품가격</th>
                        <td>${pro.price }</td>
                    </tr>
                    <tr>
                        <th>상품 정보</th>
                        <td><pre>${pro.content }</pre></td>
                    </tr>
					 <tr>
                        <th></th>
                        <td></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td></td>
                    </tr>
                   	<tr>
                        <th></th>
                        <td></td>
                    </tr>
                    <tr>         
                        <th></th>
                     <td><form method="post" action="pay?cart=no">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }">
					<div class="wrap">
					<input type="number" min=1 max=10 name="quant" value="1" class="inputnum">
					<button type="button" onclick="buy()" class="button">구매</button>
					</div>
				</form></td>
                        <td><form method="post" action="cart">
					<input type="hidden" name="pcode" value="${pro.pcode }"> 
					<input type="hidden" name="price" value="${pro.price }"> 
					<div class="wrap">
					<input type="number" min=1 max=10 name="quantity" value="1" class="inputnum">	
					<button class="button">장바구니</button>
					</div>
				</form></td>
                    </tr>
 					 </tbody>
                </table>
            </div>
            </div>
            
            <div class="totalwrap2">
			<div class="review">
					<c:forEach var="rev" items="${rlist}">	
					 <br> 					
                        <li> 
                            <ul class="crow">
                                <li>작성자 : <c:out value="${rev.id }" /></li>
                                <li>평점 : <c:out value="${rev.grade }" /></li>
                                <li>리뷰 :<c:out value="${rev.review }" /></li>
                                <li>작성일 : <c:out value="${rev.rdate }" /></li>
                                <li>작성자 ip : <c:out value="${rev.ip }" /></li>                                    
                            </ul>  
                        </li>
                        
                    </c:forEach>
			</div>
			</div>
	</main>
	<%@ include file="../button.jsp"%>
	<script type="text/javascript" src="../js/cart.js"></script>
</body>
</html>