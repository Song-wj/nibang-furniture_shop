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
<title>1:1 문의</title>
</head>
<style>
	.content#inquiry{
		 width:1100px;;		 				 			 		
		 display:inline-block;
		 height:80%;
		 padding-top:10%;
		 margin-bottom:100px;
	}
	.content aside.sideMenuBar2{
		 border:1px solid rgb(144, 144, 144);		 		
		 float:left;
		 margin-right:100px;
		 margin-left:50px;
		 height:300px;	
		 padding-right:50px;	
		 margin-top:20px;		 		
	}
	 .content aside.sideMenuBar2 ul{
		 list-style-type: none;	
		 padding-left:20px;		 	    
	}
	.content aside.sideMenuBar2 ul>li{
		 font-size:15px;	
		 margin-top:20px; 			 			 	    
	}
	.content aside.sideMenuBar2 ul>li>a{
		 text-decoration:none;
		 color:rgb(144, 144, 144);	 		 
	}
	.content aside.sideMenuBar2 ul>li:first-child>a{
		 font-size:20px;	
		 font-weight:10000px;
		 color:black;
		 margin-bottom:10px;
	}
	
	.content aside.sideMenuBar2 ul li:nth-child(2) a:hover,
	.content aside.sideMenuBar2 ul li:nth-child(3) a:hover,
	.content aside.sideMenuBar2 ul li:nth-child(4) a:hover,
	.content aside.sideMenuBar2 ul li:nth-child(5) a:hover,
	.content aside.sideMenuBar2 ul li:nth-child(6) a:hover,
	.content aside.sideMenuBar2 ul li:nth-child(7) a:hover{
		color:rgb(200,10,30);
	}		 	
	section.section1#section1_inquiry h1{
		display:inline-block;
		margin:20px 0 0 250px
	}
	section.section1#section1_inquiry h4{
		font-size: 18px;
		font-weight:400;
		color: #333;
		text-align:center;
		margin:3% 11%;
	}
	.section1 div {
		margin-left:35px;
		margin-right:2px;
	}
	.section1 div div{
		display:inline-block;
		text-align:center;
		width:270px;
		height:170px;
		border:1px solid black;
		margin-top:30px;		
		margin-right:-12px; 		
	}			
	a.kakao{
		display:inline-block;
		width:270px;
		height:170px;
		background-image: url('http://localhost:9000/sist_project_2/images/talk1.png');
		background-size:30px;
		background-repeat:no-repeat;
		background-position:3.2cm 50px;
	}
	a.kakao span{
		color:black;
		display:inline-block;
		font-size:13px;
		margin-top:70px;
		font-weight:600;
	}
	a.kakao:hover{
		background-image: url('http://localhost:9000/sist_project_2/images/talk2.png');
	}
	a.message{
		display:inline-block;
		width:270px;
		height:170px;
		background-image: url('http://localhost:9000/sist_project_2/images/talk3.png');
		background-size:27px;
		background-repeat:no-repeat;
		background-position:3.2cm 50px;
	}
	a.message span{
		color:black;
		display:inline-block;
		font-size:13px;
		margin-top:70px;
		font-weight:600;
	}
	a.message:hover{
		background-image: url('http://localhost:9000/sist_project_2/images/talk4.png');
		      
	}
	section.section1#section1_inquiry hr{
		width:600px;
		margin:5% 31% 1% 31%;
	}
	section.section1#section1_inquiry ul{
		list-style-type:none;
		margin: 0 0 0 28%;	
	}
	section.section1#section1_inquiry ul li{
		font-size:16px;
		font-weight:400;
		display:inline-block;
		margin:7px 0;
	}
	section.section1#section1_inquiry ul li:last-child{
		font-size:13px;
	}
	section.section1#section1_inquiry ul li:first-child,
	section.section1#section1_inquiry ul li:last-child,
	section.section1#section1_inquiry ul li span{
		font-weight:600;
	}
	
	section.section1#section1_inquiry label {
		border:1px solid red;
		display:inline-block;
		font-size:13px;
		font-weight:600;
	}
	section.section1#section1_inquiry li span{
		display:inline-block;
	 	border:1px solid rgb(170,170,170);
	    width:50px;		height:30px;
		text-align:center;
		padding-top:4px;
		margin-right:7px;
		border-radius:4px;
		font-size:13px;
	}
</style>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div class="content" id="inquiry">
		<aside class="sideMenuBar2">
			<nav>
				<ul>
				    <li>고객센터</li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터 안내</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp">공지사항</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp">FAQ</a></li>
					<li><a href="#">회원정보</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp">1:1문의</a></li>
				</ul>	
			</nav>
		   </aside>
		<section class="section1" id="section1_inquiry">
			<h1> 1 : 1 문의</h1>
			<h4>궁금하신 사항을 남겨주세요.</h4>
			<div>
				<div><a href="" class="kakao"> <br><span>카톡문의</span></a></div>
				<div><a href="" class="message"><br><span>쪽지문의</span></a></div>
			</div><hr>
			<ul>
				<li>채팅 상담 운영시간</li><br> 
				<li><span>평일</span> 9:30 ~ 17:30 ( 점심시간 12:30 ~ 13:30 )</li><br> 
				<li><span>토요일</span> 9:30 ~ 12:30 ( 쇼핑몰 구매상담 제외 )</li><br> 
				<li>일요일 및 법정 공휴일 휴무</li>	
			</ul>	
		</section>	
	</div>	
</body>
</html>