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
<title>일룸</title>
<style>
	#section1_category_bed {
		border: 1px solid white;
	}
	#section1_category_bed div {
		text-align: center; 
		width: 90%;
		margin: 8% 0 0 35px;
	}
	#section1_category_bed div p {
		margin-left: 80px;
		font-size: 35px;
	}
	
	#section1_category_bed div div.category_sort {
		margin: 10px 0 40px 170px;
		text-align: right;
	}
	
	#section1_category_bed div div.category_sort a {
		color: rgb(51, 51, 51);
		margin: 0 2px;
		font-size: 13px;
		text-decoration: none;
	}
	#section1_category_bed div div.category_sort a:hover {
		color: rgb(200, 10, 30);
	}
	
	#section1_category_bed ul {
		width: 1200px;
		margin-left: 1%;
		padding: 0;
		list-style: none;
		text-align: left;
	}
	
	#section1_category_bed ul li.product_list {
		width: 280px;
		display: inline-block;
		margin: 0 1.3% 40px 0;
		/* vertical-align: top; */
	}
	#section1_category_bed ul li.product_list a{
		text-decoration:none;
	}
	#section1_category_bed ul li.product_list p {
		margin: 0;
	}
	
	#section1_category_bed ul li.product_list img{
		width: 274px;
		height: 274px;
	}
	/* ----- hover image ----- */
	#section1_category_bed ul li.product_list  a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom:-5px;
		background-image: url('http://localhost:9000/sist_project_2/images/루오바 2540000.jpg');
		background-size:274px;
		background-repeat: no-repeat;
	}
	#section1_category_bed ul li.product_list a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/루오바2.jpg');
		background-size:274px;
	}
	
	
	
	#section1_category_bed ul li.product_list span.title{
		font-size: 14px;
		padding-top: 17px;
		display: inline-block;
		font-weight: bold;
		color: #333;
	}
	#section1_category_bed ul li.product_list span.explain{
		font-size: 13px;
		color: #333;
	}
	#section1_category_bed ul li.product_list span.price{
		font-size: 14px;
		color: #C80A1E;
	}
	
	#section1_category_bed ul.category_page_num {
		text-align: center;
		margin-top: 40px;
		margin-bottom: 120px;
	}
	
	#section1_category_bed ul.category_page_num li{
	    display: inline-block;
	    font-size: 12px;
	    margin-right: 10px;
	    padding: 6px 10px 6px 10px;
	    border: 1px solid rgb(224, 224, 224);
	    border-radius: 30px;
	}
}
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_category_bed">
			<div>
				<p>소파</p>
				<img class="category_line" src="http://localhost:9000/sist_project_2/images/event_contents_line2.jpg">
				<div class="category_sort">
					<a href="#">인기순</a>
					<a href="#">신상품순</a>
					<a href="#">가격순</a>
					<a href="#">상품평순</a>
				</div>
				<ul class="category_bed_list1">
					<li class="product_list">
					<a href ="">						
						<img src="http://localhost:9000/sist_project_2/images/캐스터네츠 1099000.jpg">						
						<span class="title">캐스터네츠</span>
						<br>
						<span class="explain">펫 3인 SET(패브릭)(온라인 전용)</span>
						<br>
						<span class="price">1,099,000 원</span>
					</a>
					</li>
					<li class="product_list">
						<a href="">
						<span></span>			
						<span class="title">루오바</span>
						<br>
						<span class="explain">코너(가죽)</span>
						<br>
						<span class="price">2,540,000 원</span>
						</a>
					</li>
					<li class="product_list">		
						<a href="">				
						<img src="http://localhost:9000/sist_project_2/images/보스턴 2690000.jpg">
						<span class="title">보스턴</span>
						<br>
						<span class="explain">카우치 우(가죽)</span>
						<br>
						<span class="price">505,000 원</span>
						</a>
					</li>
					<li class="product_list">	
						<a href="">				
						<img src="http://localhost:9000/sist_project_2/images/스노우 970000.jpg">
						<span class="title">스노우</span>
						<br>
						<span class="explain">1인 소파(가죽)</span>
						<br>
						<span class="price">970,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
				     	<img src="http://localhost:9000/sist_project_2/images/디즈니 120000.jpg">					
						<span class="title">디즈니</span>
						<br>
						<span class="explain">설리_아코(온라인전용))</span>
						<br>
						<span class="price">120,000 원</span>
						</a>
					</li>
					<li class="product_list">	
						<a href="">			
     					<img src="http://localhost:9000/sist_project_2/images/아코 99000.jpg">
						<span class="title">아코</span>
						<br>
						<span class="explain">플리아코</span>
						<br>
						<span class="price">99,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/카이로 3290000.jpg">
						<span class="title">카이로</span>
						<br>
						<span class="explain">4인 리클라이너 소파(가죽,전동2)</span>
						<br>
						<span class="price">3,290,000 원</span>
						</a>
					</li>
					<li class="product_list">	
						<a href="">					
						<img src="http://localhost:9000/sist_project_2/images/코모 980000.jpg">
						<span class="title">코모</span>
						<br>
						<span class="explain">3인(패브릭)</span>
						<br>
						<span class="price">980,000 원</span>
						</a>
					</li>
				</ul>
				<ul class="category_page_num">
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>