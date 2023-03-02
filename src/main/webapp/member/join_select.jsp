<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 선택 | 프레쉬온</title>
<style type="text/css">
nav {
  display: inline-block;
  vertical-align: middle;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

li.icon {
  flex-basis: 25%;
}

header {
  background: cadetblue;
  padding: 20px;
}

a {
  display: block;
  text-align: center;
  margin: .25rem;
  padding: .5rem 1rem;
  text-decoration: none;
  font-weight: bold;
  color: white;
  background: green;
}

a:hover {
  background: yellowgreen;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}
</style>
</head>
<body>
<ul>
	<li><a href="company">사업자 회원 가입</a></li>
	<li><a href="agreement">개인 회원 가입</a></li>
</ul>
</body>
</html>