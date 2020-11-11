<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="checkjsp.css">
<title>Check</title>
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
    <main class="result">
<%
int A1 = Integer.parseInt(request.getParameter("first"));
int A2 = Integer.parseInt(request.getParameter("second"));
int A3 = Integer.parseInt(request.getParameter("third"));
int A4 = Integer.parseInt(request.getParameter("fourth"));
int A5 = Integer.parseInt(request.getParameter("fifth"));
int A6 = Integer.parseInt(request.getParameter("sixth"));
int A7 = Integer.parseInt(request.getParameter("seventh"));
int A8 = Integer.parseInt(request.getParameter("eighth"));
int A9 = Integer.parseInt(request.getParameter("ninth"));

int sum=0;
sum=A1+A2+A3+A4+A5+A6+A7+A8+A9;
String result3;

if(sum>0)
	result3="T";
	else
	result3="F";

out.println("세번째 검사 결과는 " + result3 + "입니다." );
%>
 <div>
 <a href="check4.html"><button type="button" >다음 검사하기</button></a>
 </div>
</main>
</body>
</html>
