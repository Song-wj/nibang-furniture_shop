<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*"%>
    
  <%
  		categoryDAO dao = new categoryDAO();
  		String type ="소파";
		ArrayList<productVO> list = dao.categoryList(type);
  		
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<title>일룸</title>
<style>

	/* ----- hover image ----- */
	#section1_category_bed ul li.product_list  a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom:-5px;
		background-image: url('http://localhost:9000/sist_project_2/images/루오바 2540000.jpg');
		background-size:274px;
		background-repeat: no-repeat;
	}
	#section1_category_bed ul li.product_list a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/루오바2.jpg');
		background-size:274px;
	}
	
</style>
<script>
function mover(pid,simg2){
	var id = document.getElementById(pid);
	id.style.display='inline-block';
	id.style.width= '274px';
	id.style.height= '274px';
	id.src= "http://localhost:9000/sist_project_2/upload/"+simg2;
}
function mout(pid,simg1){
	var id = document.getElementById(pid);
    id.style.display='inline-block';
	id.style.width = '274px';
	id.style.height = '274px';
	id.src= "http://localhost:9000/sist_project_2/upload/"+simg1;
}
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_category_bed">
			<div>
				<p>소파</p>
				<img class="category_line" src="http://localhost:9000/sist_project_2/images/event_contents_line2.jpg">
				<div class="category_sort">
					<a href="#" style="color:rgb(200,100,30)">인기순</a>
					<a href="#">신상품순</a>
					<a href="category_sofa_price.jsp">가격순</a>
					<a href="#">상품평순</a>
				</div>
				<ul class="category_table_list1">
				<% for(productVO vo : list){ %>
					<% if( vo.getSimg2()==null){ %> 
					<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/sofa_<%=vo.getPname() %>.jsp">
						<img src="http://localhost:9000/sist_project_2/upload/<%=vo.getSimg1() %>">					
						<span class="title"><%= vo.getPname()%></span>
						<br>
						<span class="explain"><%= vo.getPinfo()%></span>
						<br>
						<span class="price"><%= vo.getPprice()%></span>
						</a>
					</li>				
					 <%}else{ %> 
						<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/sofa_<%=vo.getPname() %>.jsp">
						<img src= "http://localhost:9000/sist_project_2/upload/<%=vo.getSimg1()%>" id="<%= vo.getPid()%>" onmouseover="mover('<%= vo.getPid()%>','<%=vo.getSimg2()%>')" onmouseout="mout('<%= vo.getPid()%>','<%=vo.getSimg1()%>')">					
						<span class="title"><%= vo.getPname()%></span>
						<br>
						<span class="explain"><%= vo.getPinfo()%></span>
						<br>
						<span class="price"><%= vo.getPprice()%></span>
						</a>
					</li>		
					<%} %> 
					<%} %>
					
				</ul>
				<ul class="category_page_num">
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>