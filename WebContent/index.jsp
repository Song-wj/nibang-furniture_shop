<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nibang</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	
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
		<a href="#open"  class="message">쪽지문의</a>
		<div class="white_content4" id="open">
						<div class="inquiry_content1"  id="inquiry_content1">
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
									<button type="button" id="a">신청하기</button>
							</form>
						</div>        
					</div>
				</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>