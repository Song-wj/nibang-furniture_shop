<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<style>
	.section1 aside.sideMenuBar2 ul>li:first-child>a {
		font-size: 15px;
		color: rgb(144, 144, 144);
	}
</style>
</head>

<body>
		<section class="section1">
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
			<div>
					<div class="content">
						<div><h1>1:1문의</h1></div>
						<div class="list_body">
							<table class="notice_table">
								<tr class="table_header">
									<th>NO</th>
									<th>제목</th>
									<th>구분</th>
									<th>등록일</th>
									
								</tr>
								<tr>
									<th>NO</th>
									<td><a href="1-1inquiry_content.jsp">상품</a></td>
					    			<td>가격이 비싸요</td>
					    			<td>2018.03.13</td>
					    			
								</tr>							
							</table>
						</div>
					</div>
			</div>
		</section>
	

</body>
</html>