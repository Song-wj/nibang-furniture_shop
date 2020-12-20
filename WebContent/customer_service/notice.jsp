<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*"%>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<style>
section.section1 {
	width: 1100px;
    display: inline-block;
    height: 80%;
    padding-top: 10%;
    margin-bottom: 100px;
}			
div.content h1 {
	margin-top: 20px;
    margin-bottom: 40px;
   	padding-left:51%;
}
table.notice_table{
	width:700px;
}
table.notice_table td.ncontent{
	background-color: #f0f0f0;
}
table.notice_table td.ncontent p{
	text-align:left;
	padding: 20px 0 20px 100px;
	font-weight: normal;
}
</style>
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
})
	function test(nid){			  
		$("#"+nid).toggle();	   
	}
</script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div>
		<section class="section1">
		<aside class="sideMenuBar2">
			<nav>
				<ul>
				    <li>고객센터</li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터 안내</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp">공지사항</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp">FAQ</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp">1:1문의</a></li>
				</ul>	
			</nav>
		   </aside>
			<div>
					<div class="content">
						<div><h1>공지사항</h1></div>
						<div class="list_body">
							<table class="notice_table" >
								<tr class="table_header">
									<th>NO</th>
									<th>제목</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
								<%for(noticeVO vo : list) {%>								
								<tr class="ntitle " onclick="test('<%=vo.getNid() %>')">
									<td><%= vo.getRno()%></td>
									<td><%= vo.getNtitle()%></td>
									<td><%= vo.getNdate()%></td>
									<td><%= vo.getNviews()%></td>								
								</tr>
								<tr>
					    			<td colspan="4"  class="ncontent"  id="<%=vo.getNid() %>" style="display:none;">										
										
										<p><%= vo.getNcontent().replace("\r\n", "<br>") %></p>
										<p>
										<%if (vo.getNsfile() != null) {%>
											<img src="http://localhost:9000/sist_project_2/upload/<%=vo.getNsfile() %>" width=150px height=150px>
										<%} %>
										</p>
										
									</td>
					    		</tr>								
								<%} %>
							</table>
						</div>
					</div>
			</div>
		</section>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>
