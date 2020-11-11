<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="checkjsp.css">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar">
        <div class="navbar__name">
            <a href="main.html">웹 네임</a>
        </div>

        <ul class="navbar__active">
            <li><a href="check.html">MBTI 검사하기</a></li>
            <li><a href="analysis.html">MBTI 분석하기</a></li>
            <li><a href="">친구추천</a></li>
            <li><a href="">개인활동추천</a></li>    
        </ul>

        <ul class="navbar__login">
            <li><a href="login.html">로그인</a></li>
            <li><i class="far fa-user"></i></li>
        </ul>
    </nav>
    
<% out.println("당신의 최종검사 결과는" + " " + "입니다.");
%>

<div><img src="img/1.jpg" width=500px; height=500px;></div>
</body>
</html>