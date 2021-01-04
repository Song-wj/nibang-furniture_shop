<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.vo.*, com.sist_project_2.dao.*" 
    %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
	String fid = request.getParameter("fid");
	faqDAO dao = new faqDAO();
	faqVO vo = dao.getFAQContent(fid);
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
		margin: 3% 40%; 
	}
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<section class="section1">
			<div>
					<div class="content">
						<div class="admin"><h1>FAQ</h1></div>
						<div class="list_body">
							<table class="notice_table">
								<tr class="table_header">
									<th>제목</th>
									<td><%= vo.getF_title() %></td>
									<th>구분</th>
									<td><%= vo.getF_div() %></td>
									<th>등록일</th>
									<td><%= vo.getF_date() %></td>
								</tr>
								<tr>
									<td colspan ='6'>
										<p><%= vo.getF_content() %></p>
									</td>
					    			
								</tr>	
								<tr>
									<td colspan='8'>
										<a href="faq_update.jsp?fid=<%= fid%>"><button type="button">수정</button></a>
										<a href="faq_delete.jsp?fid=<%= vo.getFid()%>"><button type="button">삭제</button></a>
										<a href="faq_list.jsp"><button type="button">목록으로</button></a>
									</td>
								</tr>						
							</table>
						</div>
					</div>
			</div>
		</section>
</body>
</html>
<%}else {%>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 