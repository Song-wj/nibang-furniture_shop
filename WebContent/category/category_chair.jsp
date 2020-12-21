<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<title>일룸</title>
<style>

	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_category_bed">
			<div>
				<p>의자</p>
				<img class="category_line" src="http://localhost:9000/sist_project_2/images/event_contents_line2.jpg">
				<div class="category_sort">
					<a href="#">인기순</a>
					<a href="#">신상품순</a>
					<a href="#">가격순</a>
					<a href="#">상품평순</a>
				</div>
				<ul class="category_bed_list1">
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/버튼2.jpg">					
						<span class="title">버튼</span>
						<br>
						<span class="explain">버튼</span>
						<br>
						<span class="price">139,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/버튼.jpg">					
						<span class="title">버튼</span>
						<br>
						<span class="explain">버튼 스위블(BK,등좌판패딩無)(온라인몰 전용)</span>
						<br>
						<span class="price">139,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/아이핏.jpg">						
						<span class="title">아이핏</span>
						<br>
						<span class="explain">헤드레스트,럼버서포트</span>
						<br>
						<span class="price">320,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/아이핏에어.jpg">						
						<span class="title">아이핏 에어</span>
						<br>
						<span class="explain">헤드레스트,럼버서포트</span>
						<br>
						<span class="price">357,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/올리버.jpg">						
						<span class="title">올리버</span>
						<br>
						<span class="explain">플라스틱 의자(고정형,WH)</span>
						<br>
						<span class="price">239,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/올리버2.jpg">
						<span class="title">올리버</span>
						<br>
						<span class="explain">메쉬의자(고정형,WH)</span>
						<br>
						<span class="price">239,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
	            		<img src="http://localhost:9000/sist_project_2/images/지엘.jpg">				
						<span class="title">지엘</span>
						<br>
						<span class="explain">천연가죽 의자</span>
						<br>
						<span class="price">710,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
	            		<img src="http://localhost:9000/sist_project_2/images/펑거스.jpg">				
						<span class="title">펑거스</span>
						<br>
						<span class="explain">스툴(블랙)</span>
						<br>
						<span class="price">98,000 원</span>
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
	<jsp:include page="../nibangBanner.jsp"/>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>