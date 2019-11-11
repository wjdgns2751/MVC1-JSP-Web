<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>


<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate();
%>
 <script type="text/javascript">
 	location.href="main.jsp";
 </script>
</body>
</html>