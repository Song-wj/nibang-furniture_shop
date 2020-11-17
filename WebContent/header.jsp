<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
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
<style>
/* 	header nav ul {
		font-size: 10px;
	}
	/* 	span.menubar {
					padding: 0 20px 5px 0;
				} 
	header nav button {
		padding: 0 20px 5px 0;
	}
	
	header nav div.logo {
		position: relative;
		margin-left: 20%;
		padding-bottom: 5px;
	}
	.modal-dialog {
        display: inline-block;
        width: 700px;
        padding-top: 30px;
        text-align: left;
        vertical-align: middle;
    } 
    .menu-list {
    	margin: 0;
    	list-style: none;
    } */
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-sm bg-light navbar-light ">
			<button type="button" class="btn pb-2" data-toggle="modal"
				data-target="#myModal">
				<img src="http://localhost:9000/sist_project_2/images/icon_gnb_menu.png">
			</button>

			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="myModalLabel">모든 가구</h5>
							<!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button> -->
						</div>
						<div class="modal-body">
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action">침대</a>
								<a href="#" class="list-group-item list-group-item-action">의자</a>
								<a href="#" class="list-group-item list-group-item-action">소파</a>
								<a href="#" class="list-group-item list-group-item-action">책상/식탁</a>
								<a href="#" class="list-group-item list-group-item-action">수납장</a>
								<a href="#" class="list-group-item list-group-item-action">옷장</a>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div>

			<form class="form-inline ml-3" action="/action_page.php">
				<input class="form-control mr-sm-2" type="text" placeholder="검색">
			</form>
			<a href="#">
				<button type="button" class=btn>
					<img src="http://localhost:9000/sist_project_2/images/gnb_search.png">
				</button>
			</a>
			<div class="logo">
				<a href="http://localhost:9000/sist_project_2/index.jsp"><img src="http://localhost:9000/sist_project_2/images/gnb_logo.png"></a>
			</div>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
				<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
				<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
				<li class="nav-item"><a class="nav-link" href="#">매장안내</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>