<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.vo.*,com.sist_project_2.dao.*,java.util.*"%>
    
 <%
 	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
 	messageAnswerDAO dao = new messageAnswerDAO();
 	ArrayList<messageVO> list =dao.getInquiryList(); 
 %>
 
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src ="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/sist_project_2/js/am-pagination.js"></script>
<link rel="stylesheet" href ="http://localhost:9000/sist_project_2/css/am-pagination.css">
<style>
	div.list_body{
		margin: 3% 29%;
	}
</style>
<script>
	
</script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
		<section class="section1">
			<div>
					<div class="content">
						<div class="admin"><h1>1:1문의</h1></div>
						<div class="list_body">
							<table class="notice_table">
								<tr class="table_header">
									<th>NO</th>
									<th>제목</th>
									<th>구분</th>
									<th>등록일</th>
									
								</tr>
								<% for(messageVO vo : list) {%>
								<tr>
									<td><%=vo.getRno() %></td>
									<td><a href="1-1inquiry_content.jsp?sid=<%=vo.getSid() %>"><%=vo.getM_title() %></a></td>
					    			<td><%=vo.getM_div() %></td>
					    			<td><%=vo.getM_date() %></td>
					    			
								</tr>		
								<%} %>	
								<tr>
									
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