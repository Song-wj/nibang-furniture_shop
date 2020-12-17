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