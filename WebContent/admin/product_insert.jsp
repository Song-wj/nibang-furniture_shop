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
	div.content form{
		margin: 3% 28%; 
	} 
	form ul li{
		margin-bottom:10px;
		list-style:none;
	}
	form ul li input[type="text"]{
		width:300px;
	}
	form ul li label{
		margin-right:20px;
	}
 	form ul li:nth-child(2) label{
		margin-right:36px;
	}
	form ul li:nth-child(4) label,
	form ul li:nth-child(5) label,
	form ul li:nth-child(6) label{
		margin-right:52px;
	}
	form ul li:nth-child(7) label,
	form ul li:nth-child(8) label{
		margin-right:27px;
	}
	button#pi_btn { 
		margin-left:200px;
		margin-right:40px;
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
			}else if($("#pinfo").val() == ""){
				alert("상품정보 입력해주세요");
				$("#pinfo").focus();
			}else if($("#pkind").val() == ""){
				alert("종류를 입력해주세요");
				$("#pkind").focus();	
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
<jsp:include page="../header.jsp"></jsp:include>
	<section class ="section1">
				<div class="content">
					<div class="admin"><h1>상품 등록</h1></div>
	  				<form name ="productInsertForm" action="productInsertProc.jsp" method="post" enctype ="multipart/form-data">
	  					<ul>
	  						<li><label>상품번호</label>
	  							<input type="text" name="pid" id ="pid">
	  						</li>
	  						<li><label>상품명</label>
	  						    <input type="text" name="pname" id ="pname">
	  					    </li>
	  					    <li><label>상품정보</label>
	  						    <input type="text" name="pinfo" id ="pinfo">
	  					    </li>
	  					    <li><label>종류</label>
	  						    <input type="text" name="pkind" id ="pkind">
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