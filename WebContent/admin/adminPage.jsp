<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<title>Insert title here</title>
<style>
table{

	width:700px;
}
.section1 aside.sideMenuBar2 ul>li:first-child>a {
		font-size: 15px;
		color: rgb(144, 144, 144);
}
</style>
</head>
<body>
	<section class ="section1">
				<aside class="sideMenuBar2">
				<nav>
					<ul>
						<li><a href="http://localhost:9000/sist_project_2/admin/adminPage.jsp">상품 리스트</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/product_insert.jsp">상품등록</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/notice_list.jsp">공지사항</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/faq_list.jsp">FAQ</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/1-1inquiry_list.jsp">1:1문의</a></li>
					</ul>	
				</nav>
			   </aside>
	</section>
	<div class="content">
	<div><h1>상품관리</h1></div>
	  <div class="list_body">
		<table class="notice_table">
			<tr class="table_header">
				<th>상품번호</th>
				<th>상품명</th>
				<th>가격</th>
				<th>color</th>
				<th>이미지1</th>
				<th>이미지2</th>
				<th>등록일</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</table>
	</div>
	</div>
</body>
</html>