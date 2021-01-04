<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"    
    %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}

	faqDAO dao = new faqDAO();
	ArrayList<faqVO> list = dao.getFAQList();
%>
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<style>
	div.list_body{
		margin: 3% 33%;
	}
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
		<section class="section1">
			<div>
				<div class="content">
					<div class="admin"><h1>F A Q</h1></div>
						<div class="list_body">
							<table class="notice_table">
								<tr class="table_header">
									<th>구분</th>
									<th>제목</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
								<% for(faqVO vo : list) { %>
								<tr>
									<td><%= vo.getF_div() %></td>
					    			<td><a href="faq_content.jsp?fid=<%= vo.getFid()%>"><%= vo.getF_title() %></a></td>
					    			<td><%= vo.getF_date() %></td>
					    			<td><%= vo.getF_views() %></td>
								</tr>
								<% } %>							
								<tr>
									<td colspan="5">
										<a href="http://localhost:9000/sist_project_2/admin/faq_write.jsp">
											<button type="button">글쓰기</button>
										</a>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
		</section>
</body>
</html>
<%}else %>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); %> 