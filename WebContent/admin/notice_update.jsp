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
	form ul li label {		
		float:left;
		margin-right:10px;
	}
	form ul li{
		margin-bottom:15px;
		list-style:none;
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
				<div><h1>공지사항 수정</h1></div>
  				<form name ="noticeUpdateForm" action="#" method="post">
  					<ul>
  						<li><label>제목</label>
  							<input type="text" name="pid">
  						</li>
  						<li><label>내용</label>
  						    <textarea rows="10" cols ="50" name ="pcontent" ></textarea>
  					    </li>
 					     
  					</ul>
  					<button type ="button">수정</button>
  					<button type ="reset">취소</button>
  				</form>
  			</div>
	</section>
</body>
</html>