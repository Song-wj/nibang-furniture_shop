<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.* , com.sist_project_2.vo.*, java.util.*"%>
    
   
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
	
	
	productDAO dao = new productDAO(); 
	ArrayList<productVO> list = dao.getList();
	
%>   
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<title>Insert title here</title>
<style>
div.list_body{
	margin: 3% 13%;
}
table{
 	text-align:center;
	width:840px;
}
table.notice_table tr th:nth-child(2){
	padding-left:25px;
}
.section1 aside.sideMenuBar2 ul>li:first-child>a {
	font-size: 15px;
	color: rgb(144, 144, 144);
}
table.notice_table tr img{
	width:50px;
	height:50px;
}
table.notice_table button{
	font-size:10px;
}
table.notice_table tr th:nth-child(3){
	width:200px;
}
table.notice_table tr th:nth-child(10),
table.notice_table tr th:nth-child(11){
	width:37px;
}

</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<section class ="section1">
	<div class="content">
	<div class="admin"><h1>상품관리</h1></div>
	  <div class="list_body"style="height:500px; overflow:auto">
		<table class="notice_table">
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>상품정보</th>
				<th>종류</th>
				<th>가격</th>
				<th>color</th>
				<th>이미지1</th>
				<th>이미지2</th>
				<th>등록일</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<% for ( productVO vo : list)  {%>
			<tr>
				<td><%= vo.getPid() %></td>
				<td id="b"><%= vo.getPname() %></td>
				<td><%= vo.getPinfo() %></td>
				<td><%= vo.getPkind() %></td>
				<td><%= vo.getPprice() %></td>
				<td><%= vo.getColor() %></td>
				<td><img src="../upload/<%= vo.getImg1() %>"></td>
				<%if(vo.getImg2() == null) {%>
				<td>x</td>
				<% }else {%>
				<td><img src="../upload/<%= vo.getImg2() %>"></td>
				<% } %>
				<td><%= vo.getPdate() %></td>
				<td><a href="product_update.jsp?pid=<%= vo.getPid() %>"><button type ="button">수정</button></a></td>
				<td><a href="product_delete.jsp?pid=<%= vo.getPid() %>"><button type ="button">삭제</button></a></td>
			</tr>
			<% } %>
		</table>
	</div>
	</div>
	</section>
</body>
</html>
<%}else {%>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 