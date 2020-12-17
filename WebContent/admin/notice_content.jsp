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
			<div class="content">
				<div><h1>공지사항</h1></div>					
				<div class="list_body">
					<table class="notice_table">
						<tr class="table_header">
							<th>NO</th>
							<td>???</td>
							<th>제목</th>
							<td>??</td>
							<th>등록일</th>
							<td>??</td>
							<th>조회수</th>
							<td>??</td>
						</tr>
						<tr>
							<td colspan='8'>
								<p>aaa</p>
						</td>
						</tr>
						<tr>
							<td colspan='8'>
								<a href="notice_update.jsp"><button type="button">수정</button></a>
								<a href="notice_delete.jsp"><button type="button">삭제</button></a>
							</td>
						</tr>
					</table>
				</div>
			</div>
	</section>
</body>
</html>