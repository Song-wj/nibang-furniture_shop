<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.sist_project_2.dao.*, com.sist_project_2.vo.*"%>
<%
	//String id = request.getParameter("id"); 
	SessionVO svo = (SessionVO)session.getAttribute("svo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<aside class="sideMenuBar2">
		<nav>
			<ul>
				<li>고객센터</li>
				<li><a
					href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp?id=<%=svo.getId()%>">고객센터
						안내</a></li>
				<li><a
					href="http://localhost:9000/sist_project_2/customer_service/notice.jsp?id=<%=svo.getId() %>">공지사항</a></li>
				<li><a
					href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp?id=<%=svo.getId() %>">FAQ</a></li>
				<li><a
					href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp?id=<%=svo.getId() %>">1:1문의</a></li>
			</ul>
		</nav>
	</aside>
</body>
</html>