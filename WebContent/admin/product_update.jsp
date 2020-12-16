<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
</head>
<style>
	.section1 aside.sideMenuBar2 ul>li:first-child>a {
		font-size: 15px;
		color: rgb(144, 144, 144);
	}
	form ul li{
		margin-bottom:10px;
		list-style:none;
	}
	form ul li label{
		margin-right:20px;
	}
	form ul li:nth-child(2) label{
		margin-right:36px;
	}
	form ul li:nth-child(3) label,
	form ul li:nth-child(4) label{
		margin-right:52px;
	}
	form ul li:nth-child(5) label,
	form ul li:nth-child(6) label{
		margin-right:27px;
	}
</style>
<body>
<section class ="section1">
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
					<div><h1>상품수정</h1></div>
	  				<form name ="productUpdateForm" action="#" method="post">
	  					<ul>
	  						<li><label>상품번호</label>
	  							<input type="text" name="pid">
	  						</li>
	  						<li><label>상품명</label>
	  						    <input type="text" name="pname">
	  					    </li>
	  					    <li><label>가격</label>
	  					    	<input type="text" name ="price">
	  					    </li>
	  					    <li><label>색상</label>
	  					    	<input type="text" name="color">
	  					    </li> 
	  					    <li><label>이미지1</label> 
	  					    	<input type = "file" name ="img1">
	  					    </li>
	  					    <li><label>이미지2</label>
	  					    	<input type ="file" name ="img2">
	  					    </li>					    
	  					</ul>
	  					<button type ="button">수정</button>
	  					<button type ="reset">취소</button>
	  				</form>
	  			</div>
	</section>
</body>
</html>