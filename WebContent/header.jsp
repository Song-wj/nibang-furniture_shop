<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		<style>
			
			header nav ul {
				font-size: 10px;	
			}
		/* 	span.menubar {
				padding: 0 20px 5px 0;
			} */
			header nav button {
				padding: 0 20px 5px 0;
			}
			header nav div.logo {
			    position:relative;
				margin-left: 30%;
				padding-bottom: 5px;
			}
		</style>
	</head>
	<body>
	<header>
		<nav class="navbar navbar-expand-sm bg-light navbar-light ">			
			<button type="button" class="btn pb-2" data-toggle="modal" data-target="#myModal"><img src="http://localhost:9000/iloom/images/icon_gnb_menu.png"></button>
			
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
							aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Modal 제목</h4>
						</div>
						<div class="modal-body">
							Modal 내용
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div>
			
			<form class="form-inline ml-3" action="/action_page.php">
				<input class="form-control mr-sm-2" type="text" placeholder="검색">
			</form>
				<a href="#"><button type="button" class=btn><img src="http://localhost:9000/iloom/images/gnb_search.png"></button></a>
			<div class="logo">
				<a href="#"><img src="http://localhost:9000/iloom/images/gnb_logo.png"></a>
			</div>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" href="#">로그인</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">회원가입</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">마이페이지</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">고객센터</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">매장안내</a>
				</li>
			</ul>
		</nav>
	</header>
</body>
</html>