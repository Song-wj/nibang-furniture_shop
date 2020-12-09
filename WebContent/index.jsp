<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일룸</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	 div.content {
		width: 70%;
		margin: auto;
	}
	section {
		width: 1263px;
		margin: auto;
	}
	/* 
	
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
	div.chatbot_banner_message div.mdiv{
		margin-left:40px;
		width:65px;
		height:30px;
	}
	div.chatbot_banner_message div.mdiv span{
		display:inline-block;
		height:20px;
		width:65px;
	}
	div.chatbot_banner_message:hover {
		background-color: rgb(35,197,69);
		background-image: url('http://localhost:9000/sist_project_2/images/talk4.png');
	}	
	div.chatbot_banner_message span:hover {
		color: black;
	} */
	.white_content {
		position: fixed;
		top: 0;
		right: 0;
	    bottom: 0;
	    left: 0;
		/* background: rgba(0, 0, 0, 0.8); */
		opacity:0;
		-webkit-transition: opacity 400ms ease-in;
		-moz-transition: opacity 400ms ease-in;
	    transition: opacity 400ms ease-in;
	    pointer-events: none;
	}
	.white_content:target {
		opacity:1;
	    pointer-events: auto;
	} 
	.white_content > div {
	    position: absolute;
		top: 100px;
		left: 400px;
		width: 500px;
		height: 500px;
		padding: 16px;
		border: 2px solid red;
		background-color: white;
		overflow: auto;	
	}			
	form.inquiryform1{
		color:rgb(51,51,51);
		font-weight:450;
	}			
	.inquiry_content h3{
		margin-right:170px;
		padding:40px 0 30px 0 ;
		color:rgb(51,51,51);
	}
	.inquiry_content form.inquiryform1 ul{
		padding-left:0;
	}
	.inquiry_content form.inquiryform1 ul li:first-child label{
		font-size:15px; 
		color:rgb(51,51,51);
		font-weight:450;
		display:inline-block;
		width:90px;
	}
	.inquiry_content form.inquiryform1 ul li{
		list-style-type:none;
		font-size:14px;
		margin-bottom:10px;
	}
	.inquiry_content form.inquiryform1 ul li:nth-child(2),
	.inquiry_content form.inquiryform1 ul li:nth-child(4){
		margin-right:372px;
		color:rgb(51,51,51);
		font-weight:500;
	}
	.inquiry_content form.inquiryform1 ul li:nth-child(2){
		margin-right:403px;
	}
	.inquiry_content form.inquiryform1 ul li select{
		width:307px;
		height:40px;
		margin:0 31px 10px 29px;
	}		
	.inquiry_content form.inquiryform1 input[type="text"]{
		width:400px;
		height:40px;
		margin-right:30px;
	}
	.inquiry_content form.inquiryform1 textarea {
		width:401px;
		height:150px;
		margin:5px 30px 30px 1px;
	}
	.inquiry_content form.inquiryform1 ul li:nth-child(6){
		margin-right:173px;
	}
	.inquiry_content form.inquiryform1 ul li:nth-child(7),
	.inquiry_content form.inquiryform1 ul li:nth-child(8){
		color:rgb(200,10,30);
		font-size: 13px;
		font-weight:400;
		margin:10px 278px 10px 0;
	}
	.inquiry_content form.inquiryform1 ul li:nth-child(7){
		margin-right:66px;
	}
	.inquiryform1 button{
		width:200px;
		height:50px;
		margin:25px 150px 25px 130px;
		background-color:rgb(200,10,30);
		border:1px solid rgb(200,10,30);
		color:white;
	}
	.inquiryform1 button:hover{
		background-color:rgb(160,14,43);
	}
	.inquiry_content a{
		float:right;
		margin:20px 15px;
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
	<div class="chatbot_banner_kakao" onclick="location.href='http://pf.kakao.com/_laGxnK/chat'">
		<span >카톡문의</span>
	</div>
	<div class="chatbot_banner_message" >
		<div class="mdiv"><a href="#open"  class="message"><span>쪽지문의</span></a></div>
		<div class="white_content" id="open">
						<div class="inquiry_content"  id="inquiry_content">
							<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
							<h3>쪽지 문의</h3>
							<form name="inquiryform1" action="#" method="get" class="inquiryform1">
								<ul>
									<li>
										<label>문의구분</label>
										<select name="inquiry_kinds" id="inquiry_kinds">
							  				<option value="선택">선택</option>
							  				<option value="상품문의">상품문의</option>
							  				<option value="주문/결제/취소">주문/결제/취소</option>
							  				<option value="배송">배송</option>
							  				<option value="교환/반품">교환/반품</option>
							  				<option value="회원정보">회원정보</option>
							  				<option value="사이트이용">사이트이용</option>
							  				<option value="이벤트/프로모션">이벤트/프로모션</option>
							  				<option value="기타문의">기타문의</option>
										</select>
									</li>
									<li>제목</li>
									<li><input type="text" name="ititle"></li>
									<li>상세 내용</li>
									<li><textarea name="icontent"></textarea></li>
									<li>	
										<input type="file" name="ifile">
									</li>
									<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
									<li>최대 5개 파일 업로드 가능</li>				
								</ul>
									<button type="button">신청하기</button>
							</form>
						</div>        
					</div>
				</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>