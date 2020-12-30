<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.io.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String mid = request.getParameter("mid");
	String name = request.getParameter("name");
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
 div.content {
	border: 1px solid white;
}

section.section1 div.login{
	height:410px;
}

section.section1 div.login ul {
	 list-style:none;
	 padding-left:10px;
	 margin-top: 60px;
}
section.section1 div.login ul li{
	 font-size:20px;
	 margin-bottom:50px;
	 
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
				<h3><%= name %>의 아이디</h3>
				
					<ul>
						<li><%= mid %></li>			
						<li>
							<a href="login.jsp"><button type="button" class="btn_style" id="btn_login">로그인</button></a>
						</li>
					</ul>
				
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>