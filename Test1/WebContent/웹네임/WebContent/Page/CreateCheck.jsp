<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%> 
<%@ page import="java.io.PrintWriter"%>
<% //사용자가 보낸 데이터를 한글을 사용할 수 있는 형식으로 변환 
 request.setCharacterEncoding("UTF-8"); 
 
 
 String userid = null;
 String userPassword = null;
 String userName = null;
 String userDate = null;
 String userInstar = null;
 
 if (request.getParameter("userid") != null) {
	 userid = (String) request.getParameter("userid"); 
	 } 
 if (request.getParameter("userPassword") != null) { 
	 userPassword = (String) request.getParameter("userPassword"); 
	 }
 if (request.getParameter("userName") != null) { 
	 userName = (String) request.getParameter("userName"); 
	 }
 if (request.getParameter("userDate") != null) { 
	 userDate = (String) request.getParameter("userDate"); 
	 }
 if (request.getParameter("userInstar") != null) { 
	 userInstar = (String) request.getParameter("userInstar"); 
	 }
 if (userid == null || userPassword == null || userName == null || userDate == null || userInstar == null) {
	 PrintWriter script = response.getWriter();
	 script.println("<script>");
	 script.println("alert('입력이 안 된 사항이 있습니다.')");
	 script.println("history.back();");
	 script.println("</script>");
	 script.close(); 
	 return;
 }
 
 
 UserDAO userDAO = new UserDAO();
 
 int result = userDAO.join(userid, userPassword, userName, userDate, userInstar);
 
 if (result == 1) {
	 PrintWriter script = response.getWriter();
	 script.println("<script>");
	 script.println("alert('회원가입에 성공했습니다.')");
	 script.println("location.href='main.html';"); 
	 script.println("</script>");
	 script.close();
	 return; 
	 } 
%>

