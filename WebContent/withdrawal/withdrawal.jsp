<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
	/* .content {
		padding-left: 10%; 
		display: inline-block;
		
	}
	.content .sideMenuBar {
		margin-top: 15%;
		border: 1px solid rgb(144, 144, 144);
		display: inline-block;
		width: 160px;
		height: 280px;
		padding: 30px 10px 20px 10px;
		float: left;
	}
	.sideMenuBar ul {
		list-style-type: none;
		padding-left: 0;
	}
	.sideMenuBar ul li {
		font-size: 15px;
	}
	.sideMenuBar ul li:first-child {
		padding: 8px 0 20px 0;
	}
	.sideMenuBar ul li:nth-child(4) {
		padding-bottom: 20px;
	}
	.sideMenuBar ul li a {
		text-decoration: none;
		color: #333;
	}
	.sideMenuBar ul li:nth-child(3) a,
	.sideMenuBar ul li:nth-child(4) a,
	.sideMenuBar ul li:nth-child(6) a,
	.sideMenuBar ul li:nth-child(7) a {
		font-size: 12px;
		color: rgb(144, 144, 144);
	}
	ul li a.h_side:hover {
		color: tomato;
	}
	div.content section.section1 {
		margin-top: 15%;
	}
	div.content section.section1 h2{
		margin-left:30%;
	}  */
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<div class="content">
		<aside class="sideMenuBar">
			<nav>
				<ul>
					<li><a href="#">마이페이지</a></li>
					<li><a href="#">나의 게시글 답변</a></li>
					<li><a href="#" class="h_side">1:1문의</a></li>
					<li><a href="#" class="h_side">상품평 관리</a></li>
					<li><a href="#">회원정보</a></li>
					<li><a href="#" class="h_side">회원정보수정</a></li>
					<li><a href="#" class="h_side">회원탈퇴</a></li>
				</ul>
			</nav>
		</aside>
		<section class="section1">
				<h2>회원 탈퇴</h2>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>