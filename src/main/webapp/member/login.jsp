<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | 프레시온마켓</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
* {
  box-sizing: border-box;
}

body {
  background-image: url('../image/01.jpg') ;
  background-size: cover;
  color: #fff;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  overflow: hidden;
  margin: 0;
}

.container {
  background-color: white;
  padding: 10px 20px;
  border-radius: 5px;
}

.container h4 {
  text-align: center;
  color: black;
  margin-bottom: 30px;
}

.container a {
  text-decoration: underbar;
  color: red;
}

.btn {
  cursor: pointer;
  display: inline-block;
  width: 100%;
  background: lightblue;
  padding: 15px;
  font-family: inherit;
  font-size: 16px;
  border: 0;
  border-radius: 5px;
}

.btn:focus {
  outline: 0;
}

.btn:active {
  transform: scale(0.98);
}

.text {
  margin-top: 30px;
}

.form-control {
  position: relative;
  margin: auto;
  color : black;
}

.form-control input {
  background-color: transparent;
  border: 0;
  border-bottom: 2px #fff solid;
  color : black;
  display: block;
  width: 20px;
  padding: 20px;
  font-size: 18px;
  color: #fff;
}

.form-control input:focus,
.form-control input:valid {
  outline: 0;
  border-bottom-color: lightblue;
  color : black;
}

.form-control label {
  position: absolute;
  top: 15px;
  left: 0;
  pointer-events: none;
  color : black;
}

.form-control label span {
  display: inline-block;
  font-size: 18px;
  min-width: 5px;
  transition: 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  color : black;
}

.form-control input:focus + label span,
.form-control input:valid + label span {
  color: lightblue;
  transform: translateY(-30px);
  color : black;
}
.container h5 {
  text-align: center;
  color: black;
  margin-bottom: auto;
}
  
  </style>
</head>
<body>
<div class="container mt-3 width30" style="opacity:0.9">
<h4>회원가입 전용 쇼핑몰 입니다.<br>
사업자 등록 인증을 통해 다양한 혜택을 누리세요!</h4>

  <form action="login" method="post">
    <div class="mb-3 mt-3">
      <input class="form-control" id="userid" placeholder="아이디를 입력하세요" 
      		name="id" required>
    </div>
    <div class="mb-3">
      <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요(비밀번호 최소6자 이상)" 
      		name="password" required>
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> 아이디 저장하기
      </label>
    </div>
    <button type="submit" class="btn btn-primary">로그인</button><br>
  </form>
  <h5>아직 회원가입을 하지 않으셨나요? <a href="join_select.jsp">회원가입하기</a></h5><br>
  <h5>비밀번호를 잊으셨나요? <a href="find">아이디/비밀번호찾기</a></h5>  
</div>
  <script type="text/javascript">
  	console.log('${param.incorrect}')
  	if('${param.incorrect}'==='y')
  		document.getElementById('incorrect').style.display='inline-block'
  </script>
</body>
</html>