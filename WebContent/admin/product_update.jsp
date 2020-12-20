<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
    
 <%
 
	String pid = request.getParameter("pid");
	productDAO dao = new productDAO(); 
	productVO vo = dao.getData(pid);
	
	
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
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
	form ul li:nth-child(4) label,
	form ul li:nth-child(5) label{
		margin-right:52px;
	}
	form ul li:nth-child(6) label,
	form ul li:nth-child(7) label{
		margin-right:27px;
	}
	span.img_f1,
	span.img_f2{
		margin-left:-178px;
		display:inline-block;
		width:180px;
		font-size:13px;
		background-color:white;
	}
	button#pu_btn{
		margin-left:400px;
	}
</style>
<script>
	$(document).ready(function() {
			$("#pu_btn").click(function() {
				if($("#pid").val() == ""){
					alert("상품번호를 입력해주세요");
					$("#pid").focus();
				}else if($("#pname").val() == ""){
					alert("상품명 입력해주세요");
					$("#pname").focus();
				}else if($("#pinfo").val() == ""){
					alert("상품명 입력해주세요");
					$("#pinfo").focus();
				}else if($("#price").val() == ""){
					alert("가격을 입력해주세요");
					$("#price").focus();
				}else if($("#color").val() == ""){
					alert("색상를 입력해주세요");
					$("#color").focus();
				}else
					productUpdateForm.submit();
			})
			
			$("#img_f1").change(function(){
					if(window.FileReader){
						var fileName= $(this)[0].files[0].name;
						$(".img_f1").text("").text(fileName);					
					}
				}) 
			$("#img_f2").change(function(){
					if(window.FileReader){
						var fileName= $(this)[0].files[0].name;
						$(".img_f2").text("").text(fileName);					
					}
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
					<div><h1>상품수정</h1></div>
	  				<form name ="productUpdateForm" action="productUpdateProc.jsp?pid=<%= pid %>" method="post" enctype="multipart/form-data">
	  					<ul>
	  						<li><label>상품번호</label>
	  							<input type="text" name="pid" value = "<%= vo.getPid() %>" disabled>
	  						</li>
	  						<li><label>상품명</label>
	  						    <input type="text" name="pname" value = "<%= vo.getPname() %>" id="pname">
	  					    </li>
	  					    <li><label>상품정보</label>
	  						    <input type="text" name="pinfo" value = "<%= vo.getPinfo() %>" id="pinfo">
	  					    </li>
	  					    <li><label>가격</label>
	  					    	<input type="text" name ="price" value = "<%= vo.getPrice() %>" id="price">
	  					    </li>
	  					    <li><label>색상</label>
	  					    	<input type="text" name="color" value = "<%= vo.getColor() %>" id="color">
	  					    </li> 
	  					    <li><label>이미지1</label> 
	  					    	<% if(vo.getImg1() != null) {%>
	  					    	<input type = "file" name ="img1" id ="img_f1"><span class="img_f1"><%=vo.getImg1() %></span>
	  					    	<%}else{ %>
	  					    	<input type = "file" name ="img1" id ="img_f1" ><span class="img_f1">선택된 파일 없음</span>
	  					    	<% } %>
	  					    </li>
	  					    <li><label>이미지2</label>
	  					    	<% if(vo.getImg2() != null) {%>
	  					    	<input type = "file" name ="img2" id="img_f2"><span class="img_f2"><%=vo.getImg2() %></span>
	  					    	<%}else{ %>
	  					    	<input type = "file" name ="img2" id="img_f2"><span class="img_f2">선택된 파일 없음</span>
	  					    	<% } %>
	  					    </li>					    
	  					</ul>
	  					<button type ="button" id="pu_btn">수정</button>
	  					<button type ="reset">취소</button>
	  				</form>
	  			</div>
	</section>
</body>
</html>