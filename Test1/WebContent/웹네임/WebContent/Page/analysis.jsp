<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="check.css">
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
</head>
<title>Result</title>
</head>
<body>
	<nav class="navbar">
        <div class="navbar__name">
            <a href="main.html">HOBBTI</a>
        </div>

        <ul class="navbar__active">
             <li><a href="check.html">MBTI 검사하기</a></li>
            <li><a href=""><span style="color: red;">MBTI 분석하기</span></a></li>
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
	String EI = request.getParameter("result1");
	String SN = request.getParameter("result2");
	String TF = request.getParameter("result3");
	String PJ = request.getParameter("result4");
	int TestNum=0;
	
	if (EI == "I" && SN=="S" && TF=="T" && PJ=="J")
	 TestNum=0;
	else if (EI == "I" && SN=="S" && TF=="F" && PJ=="J")
	 TestNum=1;
	else if (EI == "I" && SN=="N" && TF=="F" && PJ=="J")
	 TestNum=2;
	else if (EI == "I" && SN=="N" && TF=="T" && PJ=="J")
	 TestNum=3;
	else if (EI == "I" && SN=="S" && TF=="T" && PJ=="P")
	 TestNum=4;
	else if (EI == "I" && SN=="S" && TF=="F" && PJ=="P")
	 TestNum=5;
	else if (EI == "I" && SN=="N" && TF=="F" && PJ=="P")
	 TestNum=6;
	else if (EI == "I" && SN=="N" && TF=="T" && PJ=="P")
	 TestNum=7;
	else if (EI == "E" && SN=="S" && TF=="T" && PJ=="P")
	 TestNum=8;
	else if (EI == "E" && SN=="S" && TF=="F" && PJ=="P")
	 TestNum=9;
	else if (EI == "E" && SN=="N" && TF=="F" && PJ=="P")
	 TestNum=10;
	else if (EI == "E" && SN=="N" && TF=="T" && PJ=="F")
	 TestNum=11;
	else if (EI == "E" && SN=="S" && TF=="T" && PJ=="J")
	 TestNum=12;
	else if (EI == "E" && SN=="S" && TF=="F" && PJ=="J")
	 TestNum=13;
	else if (EI == "E" && SN=="N" && TF=="F" && PJ=="J")
	 TestNum=14;
	else if(EI == "E" && SN=="N" && TF=="T" && PJ=="J")
	 TestNum=15;
	
	String Result = "";
	
	switch (TestNum) {
	case 0:
		Result = "ISTJ";
		break;
	case 1:
		Result = "ISFJ";
		break;
	case 2:
		Result = "INFJ";
		break;
	case 3:
		Result = "INTJ";
		break;
	case 4:
		Result = "ISTP";
		break;
	case 5:
		Result = "ISFP";
		break;		
	case 6:
		Result = "INFP";
		break;
	case 7:
		Result = "INTP";
		break;
	case 8:
		Result = "ESTP";
		break;
	case 9:
		Result = "ESFP";
		break;
	case 10:
		Result = "ENFP";
		break;
	case 11:
		Result = "ENTP";
		break;
	case 12:
		Result = "ESTJ";
		break;
	case 13:
		Result = "ESFJ";
		break;
	case 14:
		Result = "ENFJ";
		break;
	case 15:
		Result = "ENTJ";
		break;
	default:
		Result = "";
	}
	out.println("당신의 성격유형은 <b>" + Result + "</b> 입니다.");
	%>
	<img src="img/INTJ.png" width:400px; height:400px;>
	</main>
 	</div>
</body>

</html>