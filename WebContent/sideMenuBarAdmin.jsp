<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.sist_project_2.dao.*, com.sist_project_2.vo.*"%>
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<aside class="sideMenuBar2">
		<nav>
			<ul>
				<li><a
					href="http://localhost:9000/sist_project_2/admin/adminPage.jsp">상품
						리스트</a></li>
				<li><a
					href="http://localhost:9000/sist_project_2/admin/product_insert.jsp">상품등록</a></li>
				<li><a
					href="http://localhost:9000/sist_project_2/admin/notice_list.jsp">공지사항</a></li>
				<li><a
					href="http://localhost:9000/sist_project_2/admin/faq_list.jsp">FAQ</a></li>
				<li><a
					href="http://localhost:9000/sist_project_2/admin/1-1inquiry_list.jsp">1:1문의</a></li>
			</ul>
		</nav>
	</aside>
</body>
</html>