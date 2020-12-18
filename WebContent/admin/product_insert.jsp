<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<style>
	.section1 aside.sideMenuBar2 ul>li:first-chil d>a {
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
<script>
	$(document).ready(function(){
		$("#pi_btn").click(function() {
			if($("#pid").val() == ""){
				alert("상품번호를 입력해주세요");
				$("#pid").focus();
			}else if($("#pname").val() == ""){
				alert("상품명 입력해주세요");
				$("#pname").focus();
			}else if($("#price").val() == ""){
				alert("가격을 입력해주세요");
				$("#price").focus();
			}else if($("#color").val() == ""){
				alert("색상를 입력해주세요");
				$("#color").focus();
			}else if($("#img1").val() == ""){
				alert("사진을 넣어주세요");				
			}else
				productInsertForm.submit();
		})
	})
</script>
</head>
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
					<div><h1>상품 등록</h1></div>
	  				<form name ="productInsertForm" action="productInsertProc.jsp" method="post" enctype ="multipart/form-data">
	  					<ul>
	  						<li><label>상품번호</label>
	  							<input type="text" name="pid" id ="pid">
	  						</li>
	  						<li><label>상품명</label>
	  						    <input type="text" name="pname" id ="pname">
	  					    </li>
	  					    <li><label>가격</label>
	  					    	<input type="text" name ="price" id="price">
	  					    </li>
	  					    <li><label>색상</label>
	  					    	<input type="text" name="color" id="color">
	  					    </li> 
	  					    <li><label>이미지1</label> 
	  					    	<input type = "file" name ="img1" id="img1" >
	  					    </li>
	  					    <li><label>이미지2</label>
	  					    	<input type ="file" name ="img2" id ="img2">
	  					    </li>					    
	  					</ul>
	  					<button type ="button" id="pi_btn">등록</button>
	  					<button type ="reset">취소</button>
	  				</form>
	  				</div>
	</section>
</body>
</html>