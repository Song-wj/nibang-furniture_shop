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
<title>식탁/책상</title>
<style>
	#section1_category_table {
		border: 1px solid white;
	}
	#section1_category_table div {
		text-align: center; 
		width: 90%;
		margin: 8% 0 0 35px;
	}
	#section1_category_table div p {
		margin-left: 80px;
		font-size: 35px;
	}
	
	#section1_category_table div div.category_sort {
		margin: 10px 0 40px 170px;
		text-align: right;
	}
	
	#section1_category_table div div.category_sort a {
		color: rgb(51, 51, 51);
		margin: 0 2px;
		font-size: 13px;
		text-decoration: none;
	}
	#section1_category_table div div.category_sort a:hover {
		color: rgb(200, 10, 30);
	}
	
	#section1_category_table ul {
		width: 1200px;
		margin-left: 1%;
		padding: 0;
		list-style: none;
		text-align: left;
	}
	
	#section1_category_table ul li.product_list {
		width: 280px;
		display: inline-block;
		margin: 0 1.3% 40px 0;
		/* vertical-align: top; */
	}
	#section1_category_table ul li.product_list a{
		text-decoration:none;
	}
	#section1_category_table ul li.product_list p {
		margin: 0;
	}
	
	#section1_category_table ul li.product_list img{
		width: 274px;
		height: 274px;
	}
	/* ----- hover image ----- */
	#section1_category_table ul li.product_list:nth-child(2) a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/table_모리니.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_table ul li.product_list:nth-child(2) a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/table_모리니2.jpg');
	}
	
	#section1_category_table ul li.product_list:nth-child(3) a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/table_비비2.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_table ul li.product_list:nth-child(3) a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/table_비비.jpg');
	}
	#section1_category_table ul li.product_list:nth-child(4) a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/table_엘바패밀리.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_table ul li.product_list:nth-child(4) a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/table_엘바패밀리22.jpg');
	}
	#section1_category_table ul li.product_list:nth-child(5) a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/desk_로이모노.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_table ul li.product_list:nth-child(5) a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/desk_로이모노2.jpg');
	}
	
	#section1_category_table ul li.product_list:last-child a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/desk_링키플러스.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_table ul li.product_list:last-child a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/desk_링키플러스2.jpg');
	}
	
	/* --------------- */
	#section1_category_table ul li.product_list span.title{
		font-size: 14px;
		padding-top: 17px;
		display: inline-block;
		font-weight: bold;
		color: #333;
	}
	#section1_category_table ul li.product_list span.explain{
		font-size: 13px;
		color: #333;
	}
	#section1_category_table ul li.product_list span.price{
		font-size: 14px;
		color: #C80A1E;
	}
	
	#section1_category_table ul.category_page_num {
		text-align: center;
		margin-top: 40px;
		margin-bottom: 120px;
	}
	
	#section1_category_table ul.category_page_num li{
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
		<section class="section1" id="section1_category_table">
			<div>
				<p>식탁/책상</p>
				<img class="category_line" src="http://localhost:9000/sist_project_2/images/event_contents_line2.jpg">
				<div class="category_sort">
					<a href="#">인기순</a>
					<a href="#">신상품순</a>
					<a href="#">가격순</a>
					<a href="#">상품평순</a>
				</div>
				<ul class="category_table_list1">
					<li class="product_list">
					<a href ="">						
						<img src="http://localhost:9000/sist_project_2/images/table_타이디.jpg">						
						<span class="title">타이디</span>
						<br>
						<span class="explain">수납형 식탁 1400폭</span>
						<br>
						<span class="price">420,000 원</span>
					</a>
					</li>
					<li class="product_list">
						<a href="">
						<span></span>			
						<span class="title">모리니</span>
						<br>
						<span class="explain">테이블 1700폭</span>
						<br>
						<span class="price">699,000 원</span>
						</a>
					</li>
					<li class="product_list">		
						<a href="">				
						<span></span>
						<span class="title">비비</span>
						<br>
						<span class="explain">테이블 1600폭</span>
						<br>
						<span class="price">459,000 원</span>
						</a>
					</li>
					<li class="product_list">	
						<a href="">				
						<span></span>
						<span class="title">엘바패밀리</span>
						<br>
						<span class="explain">패밀리테이블 1800폭(D800,페닉스)</span>
						<br>
						<span class="price">749,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
				     	<span></span>			
						<span class="title">로이모노</span>
						<br>
						<span class="explain">다리형 책상 1160폭 (D600)</span>
						<br>
						<span class="price">179,000원</span>
						</a>
					</li>
					<li class="product_list">	
						<a href="">			
     					<img src="http://localhost:9000/sist_project_2/images/desk_아타카네오h형책상.jpg">
						<span class="title">이타카네오</span>
						<br>
						<span class="explain">1600폭 측판형 h형 책상 SET (D740,멀티탭형)</span>
						<br>
						<span class="price">499,000원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/desk_다나.jpg">
						<span class="title">다나</span>
						<br>
						<span class="explain">책상(1200폭,책선반형)</span>
						<br>
						<span class="price">319,000원</span>
						</a>
					</li>
					<li class="product_list">	
						<a href="">					
						<span></span>		
						<span class="title">링키플러스</span>
						<br>
						<span class="explain">4단 스마트데스크1 세트 1400폭</span>
						<br>
						<span class="price">734,000원</span>
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