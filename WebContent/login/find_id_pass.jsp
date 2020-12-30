<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
 div.content {
	border: 1px solid white;
}
section.section1 div.login{
	height:410px;
}

</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
				<h3>ID/pass 찾기</h3>
				<form name="loginForm" action="#" method="post" class="loginform">
					<ul>
						<li><a href="find_id.jsp"><button type='button'>ID 찾기</button></a>
						</li>
						<li><a href="find_pass.jsp"><button type='button'>PassWord 찾기</button></a>	
						</li>
						
						
					</ul>
				</form>
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>