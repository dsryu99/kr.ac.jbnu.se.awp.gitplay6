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
            <a href="main.html">�� ����</a>
        </div>

        <ul class="navbar__active">
            <li><a href="check.html">MBTI �˻��ϱ�</a></li>
            <li><a href="analysis.html">MBTI �м��ϱ�</a></li>
            <li><a href="">ģ����õ</a></li>
            <li><a href="">����Ȱ����õ</a></li>    
        </ul>

        <ul class="navbar__login">
            <li><a href="login.html">�α���</a></li>
            <li><i class="far fa-user"></i></li>
        </ul>
    </nav>
    
<% out.println("����� �����˻� �����" + " " + "�Դϴ�.");
%>

<div><img src="img/1.jpg" width=500px; height=500px;></div>
</body>
</html>