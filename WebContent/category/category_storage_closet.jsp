<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nibang</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<style>
	
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_category_bed">
			<div>
				<p>수납장</p>
				<img class="category_line" src="http://localhost:9000/sist_project_2/images/event_contents_line2.jpg">
				<div class="category_sort">
					<a href="#">인기순</a>
					<a href="#">신상품순</a>
					<a href="#">가격순</a>
					<a href="#">상품평순</a>
				</div>
				<ul class="category_bed_list1">
					<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/storagecloset_미엘.jsp">
						<img src="http://localhost:9000/sist_project_2/images/미엘 5단서랍장.png">						
						<span class="title">미엘</span>
						<br>
						<span class="explain">5단 서랍장 600폭</span>
						<br>
						<span class="price">349,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/storagecloset_아르지안.jsp">
						<img src="http://localhost:9000/sist_project_2/images/아르지안 3단와이드체스트.jpg">						
						<span class="title">아르지안</span>
						<br>
						<span class="explain">3단 와이드체스트 1200폭</span>
						<br>
						<span class="price">541,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/로이.png">					
						<span class="title">로이</span>
						<br>
						<span class="explain">4단 서랍장 600폭</span>
						<br>
						<span class="price">449,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/링키플러스.png">					
						<span class="title">링키플러스</span>
						<br>
						<span class="explain">PL박스 수납책장6단</span>
						<br>
						<span class="price">299,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/어바니 파티션.jpg">						
						<span class="title">어바니</span>
						<br>
						<span class="explain">파티션 1300폭(아일랜드장형)</span>
						<br>
						<span class="price">472,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/이카리아.jpg">
						<span class="title">이카리아</span>
						<br>
						<span class="explain">1200폭 3단 와이드체스트</span>
						<br>
						<span class="price">424,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
	            		<img src="http://localhost:9000/sist_project_2/images/캐스터네츠.png">				
						<span class="title">캐스터네츠</span>
						<br>
						<span class="explain">책장캣타워(1200폭 6단)_기본형(온라인몰 전용)</span>
						<br>
						<span class="price">399,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
	            		<img src="http://localhost:9000/sist_project_2/images/쿠오.jpg">				
						<span class="title">쿠오</span>
						<br>
						<span class="explain">3단 서랍장 세트(L)</span>
						<br>
						<span class="price">592,000 원</span>
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