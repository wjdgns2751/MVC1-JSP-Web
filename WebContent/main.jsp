<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width ,initial-scale= 1">
<title>부담제로</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">부담제로</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기 <span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a>
						<li><a href="join.jsp">회원가입</a>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>웹 사이트 소개</h1>
				<p>이 웹사이트는  간단한 의사소통을 할 수 있게 만든 게시판입니다.</p>
				<p>
					<a class="btn btn-primary btn-pull" href="bbs.jsp" role="button">글쓰기</a>
				</p>
			</div>
		</div>
	</div>

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/a1.jpg">
				</div>
				<div class="item">
					<img src="images/a2.jpg">
				</div>
				<div class="item">
					<img src="images/a3.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
			
		</div>
	</div>
</body>
</html>