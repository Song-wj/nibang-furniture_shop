<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*"%>
    
  <%
  		categoryDAO dao = new categoryDAO();
  		String type="옷장";
  		ArrayList<productVO> list = dao.categoryList(type);
  		
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nibang</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
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
				<p>옷장</p>
				<img class="category_line" src="http://localhost:9000/sist_project_2/images/event_contents_line2.jpg">
				<div class="category_sort">
					<a href="#" style="color:rgb(200,100,30)">인기순</a>
					<a href="#">신상품순</a>
					<a href="category_closet_price.jsp">가격순</a>
					<a href="#">상품평순</a>
				</div>
				<ul class="category_bed_list1">
					<% for(productVO vo : list){ %>
					<% if( vo.getSimg2()==null){ %> 
					<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/product_detail.jsp?pid=<%= vo.getPid()%>">
						<img src="http://localhost:9000/sist_project_2/upload/<%=vo.getSimg1() %>">					
						<span class="title"><%= vo.getPname()%></span>
						<br>
						<span class="explain"><%= vo.getPinfo()%></span>
						<br>
						<span class="price"><%= vo.getPprice()%></span>
						</a>
					</li>
					<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/closet_테일러.jsp">
						<span></span>
						<img src="http://localhost:9000/sist_project_2/images/테일러 테일러코너형드레스룸세트.jpg">						
						<span class="title">테일러</span>
						<br>
						<span class="explain">테일러 코너형 드레스룸 세트 2400폭</span>
						<br>
						<span class="price">892,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/미엘 미니옷장.jpg">						
						<span class="title">미엘</span>
						<br>
						<span class="explain">미니옷장 800폭</span>
						<br>
						<span class="price">387,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<span></span>
						<img src="http://localhost:9000/sist_project_2/images/컬렉트2.png">					
						<span class="title">컬렉트</span>
						<br>
						<span class="explain">자유로운 수납-실속형PKG</span>
						<br>
						<span class="price">1,832,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/에디키즈 서랍형옷장.png">						
						<span class="title">에디키즈</span>
						<br>
						<span class="explain">서랍형 옷장 800폭</span>
						<br>
						<span class="price">449,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/테일러 옷장800폭.jpg">
						<span class="title">테일러</span>
						<br>
						<span class="explain">옷장 800폭(기본장)</span>
						<br>
						<span class="price">199,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
	            		<img src="http://localhost:9000/sist_project_2/images/테일러 코너장.jpg">				
						<span class="title">테일러</span>
						<br>
						<span class="explain">코너장 800폭(포인트수납형)</span>
						<br>
						<span class="price">327,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
	            		<img src="http://localhost:9000/sist_project_2/images/테일러800폭옵션장.jpg">				
						<span class="title">테일러</span>
					</li>				
					 <%}else{ %> 
						<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/product_detail.jsp?pid=<%= vo.getPid()%>">
						<img src= "http://localhost:9000/sist_project_2/upload/<%=vo.getSimg1() %>" id="<%= vo.getPid()%>" onmouseover="mover('<%= vo.getPid()%>','<%=vo.getSimg2()%>')" onmouseout="mout('<%= vo.getPid()%>','<%=vo.getSimg1()%>')">					
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