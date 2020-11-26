<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일룸</title>
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
	div.content {
		width: 70%;
		margin: auto;
	}
	
	section {
		width: 1263px;
		margin: auto;
	}
	.section2 .label {
		margin-bottom: 20px;
		text-align: center;
		font-size: 13px;
		font-weight: 600;
		color: #333;
	}
	
	.section2 .recomand_img {
		width: 175px;
		height: 180px;
		padding: 10px 10px;
	}
	
	.section2 .recomand>div {
		display: inline-block;
	}
	
	.section3>div {
		padding: 50px 0px;
	}
	
	.section3 .simple {
		display: inline-block;
	}
	
	.section3 .simple .simple_img {
		width: 355px;
		height: 450px;
		padding: 10px 8px;
	}
	
	.section4>div {
		padding-top: 50px;
		padding-bottom: 70px;
	}
	
	.section2>div {
		text-align: center;
		margin: 40px 60px;
	}
	
	.section3 {
		text-align: center;
		border-top: 1px solid lightgray;
	}
	
	.section4 {
		text-align: center;
	}
	
	.section4 .quick {
		display: inline-block;
		padding: 50px;
	}
	
	.section4 .effect1 {
		display: inline-block;
		width: 200px;
		height: 200px;
		background: url('http://localhost:9000/sist_project_2/images/quick_menu_3.png')
	}
	
	.section4 .effect2 {
		display: inline-block;
		width: 200px;
		height: 200px;
		background: url('http://localhost:9000/sist_project_2/images/quick_menu_4.png')
	}
	
	.section4 .effect3 {
		display: inline-block;
		width: 200px;
		height: 200px;
		background: url('http://localhost:9000/sist_project_2/images/quick_menu_2.png')
	}
	.section4 .effect1 span:nth-child(2),
	.section4 .effect2 span:nth-child(2),
	.section4 .effect3 span:nth-child(2){
		display:inline-block;
		margin-top:180px;
	}
	
	.section4 .effect1 span,
	.section4 .effect2 span,
	.section4 .effect3 span{
		
	}
	.section4 .effect1:hover {
		background: url('http://localhost:9000/sist_project_2/images/quick_menu_33.png');
		color:rgb(200,10,30);
		text-decoration:none;
	}
	
	.section4 .effect2:hover {
		background: url('http://localhost:9000/sist_project_2/images/quick_menu_44.png');
		color:rgb(200,10,30);
		text-decoration:none;
	}
	
	.section4 .effect3:hover {
		background: url('http://localhost:9000/sist_project_2/images/quick_menu_22.png');
		color:rgb(200,10,30);
		text-decoration:none;
	}
	
	div.carousel-slide h5 {
		color: black;
		text-align:right;
	}
	
	/* 왼쪽 배너 */
	
	div.chatbot_banner_kakao {
		background-color: #222222;
		border-radius: 50px;
		position: fixed;
		width: 104px;
		height: 42px;
		bottom: 171px;
		right: 24px;
		z-index: 900;
		background-image: url('http://localhost:9000/sist_project_2/images/talk2.png');
	 	background-size: 20px;
		background-repeat:no-repeat;
		background-position: 13px 12px;
		text-align: right;
	}
	div.chatbot_banner_kakao span{
		display: inline-block;
		font-size: 13px;
		font-weight: bold;
		width: 100%;
		color: #fff;
		letter-spacing: -1.5px;
		line-height: 41px;
		padding-right: 14px;
	}
	div.chatbot_banner_kakao:hover {
		background-color: rgb(245,225,75);
		background-image: url('http://localhost:9000/sist_project_2/images/talk1.png');
	}
	div.chatbot_banner_kakao span:hover {
		color: black;
	}
	
	div.chatbot_banner_message {
		background-color: #222222;
		border-radius: 50px;
		position: fixed;
		width: 104px;
		height: 42px;
		bottom: 122px;
		right: 24px;
		z-index: 900;
		background-image: url('http://localhost:9000/sist_project_2/images/talk3.png');
	 	background-size: 20px;
		background-repeat:no-repeat;
		background-position: 13px 10px;
		text-align: right;
	}
	div.chatbot_banner_message span{
		display: inline-block;
		font-size: 13px;
		font-weight: bold;
		width: 100%;
		color: #fff;
		letter-spacing: -1.5px;
		line-height: 41px;
		padding-right: 14px;
	}
	div.chatbot_banner_message:hover {
		background-color: rgb(35,197,69);
		background-image: url('http://localhost:9000/sist_project_2/images/talk4.png');
	}
	div.chatbot_banner_message span:hover {
		color: black;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- carousel -->
	<div class="carousel-slide">
		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="http://localhost:9000/sist_project_2/images/1.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>1 of 6</h5>

					</div>
				</div>
				<div class="carousel-item">
					<img src="http://localhost:9000/sist_project_2/images/2.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>2 of 6</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="http://localhost:9000/sist_project_2/images/3.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>3 of 6</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="http://localhost:9000/sist_project_2/images/4.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>4 of 6</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="http://localhost:9000/sist_project_2/images/5.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>5 of 6</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="http://localhost:9000/sist_project_2/images/6.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>6 of 6</h5>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<section class="section2">
		<div>
			<div>
				<label class="label">고객님을 위한 제품</label>
			</div>
			<div class="recomand">
				<div>
					<img class="recomand_img" src="images/test1.jpg"><br>
					<label class="price">~~~~</label><br>
					<label>~~~~~</label>
				</div>
				<div>
					<img class="recomand_img" src="images/test2.jpg"><br>
					<label class="price">~~~~</label><br>
					<label>~~~~~</label>
				</div>
				<div>
					<img class="recomand_img" src="images/test3.jpg"><br>
					<label class="price">~~~~</label><br>
					<label>~~~~~</label>
				</div>
				<div>
					<img class="recomand_img" src="images/test4.jpg"><br>
					<label class="price">~~~~</label><br>
					<label>~~~~~</label>
				</div>
				<div>
					<img class="recomand_img" src="images/test5.jpg"><br>
					<label class="price">~~~~</label><br>
					<label>~~~~~</label>
				</div>
				<div>
					<img class="recomand_img" src="images/test6.jpg"><br>
					<label class="price">~~~~</label><br>
					<label>~~~~~</label>
				</div>
			</div>
		</div>
	</section>
	<section class="section3">
		<div>
			<div class="simple">
				<a href=""><img src="images/a.jpg" class="simple_img"></a>
			</div>
			<div class="simple">
				<a href=""><img src="images/b.jpg" class="simple_img"></a>
			</div>
			<div class="simple">
				<a href=""><img src="images/c.jpg" class="simple_img"></a>
			</div>
		</div>
	</section>
	<section class="section4">
		<div>
			<img src="images/quick_menu.png" style="margin: 30px;">
			<div>
				<div class="quick">
					<a href="" class="effect1"> <br><span>Store</span> <br> <span>매장안내</span> </a>
				</div>
				<div class="quick">
					<a href="" class="effect2"> <br><span>Notice</span><br><span>공지사항</span></a>
				</div>
				<div class="quick">
					<a href="" class="effect3"> <br><span>Refurb</span><br><span>전시품판매</span></a>
				</div>
			</div>
		</div>
	</section>
	<div class="chatbot_banner_kakao" onclick="location.href='#'">
		<span >카톡문의</span>
	</div>
	<div class="chatbot_banner_message" onclick="location.href='#'">
		<span >쪽지문의</span>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>