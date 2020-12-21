<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*"%>
	
<%
	noticeDAO dao = new noticeDAO();
	ArrayList<noticeVO> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<style>
	.section1 aside.sideMenuBar2 ul>li:first-child>a {
		font-size: 15px;
		color: rgb(144, 144, 144);
	}
	
</style>
</head>

<body>
	<div>
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
						<div><h1>공지사항</h1></div>
						<div class="list_body" style="height:500px; overflow:auto">
							<table class="notice_table">
								<tr class="table_header">
									<th>NO</th>
									<th>제목</th>
									<th>등록일</th>									
								</tr>
								<% for (noticeVO vo : list) {%>
								<tr>
									<td><%= vo.getRno() %></td>
									<td><a href="notice_content.jsp?nid=<%=vo.getNid()%>"><%= vo.getNtitle() %></a></td>
									<td><%= vo.getNdate() %></td>								
								</tr>	
								<% } %>						
								<tr>
									<td colspan="3">
										<a href="notice_write.jsp">
											<button type="button">글쓰기</button>
										</a>
									</td>
								</tr>
							</table>
						</div>
					</div>
			</div>
		</section>
	</div>


</body>
</html>
