<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*"%>
<%
	productDAO dao = new productDAO();
	ArrayList<productVO> list = dao.getRecommandList();
%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nibang</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	.nibang_chat {
		position: fixed;
		width: 104px;
		height: 42px;
		bottom: 10px;
		right: 10px;
		z-index: 900;
		text-align: right;
		/* background-image: url('http://localhost:9000/sist_project_2/images/talk2.png');
	 	background-size: 20px;
		background-repeat:no-repeat;
		background-position: 13px 12px; */
	}
	.nibang_chat > button {
		all: unset;
		font-size:30px;
	}
	.nibang_chat > button:focus {
		outline: none;
	}
	.nibang_chat .modal {
		box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
        position: fixed;
		top: 0;
		left: 0;
        width: 100%;
        height: 100%;
        display: block;
        /*justify-content: center;
        align-items: center; */
	}
	
	.nibang_chat .modal_overlay {
        width: 100%;
        height: 100%;
        position: absolute;
	}
	
	.nibang_chat .modal_content {
        box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
		position: fixed;
        padding: 0;
        background-color: white;
        text-align: left;
        right: 5px;
        bottom: 5px;
        border-radius: 5px;
        width: 25%;
        height: 60%;
	}
	
	.nibang_chat .modal_content form textarea{
		position:fixed;
		bottom:5px;
		right:5px;
		border:1px solid red;
		resize:none;
		font-size:12px;
		width:315px;
		height: 70px;
		overflow: hidden;
	}
	
	#sendChat {
		font-size: 12px;
		position: fixed;
		bottom: 45px;
		right: 10px;
	}
	
	.nibang_chat .hidden {
		display: none;
	}
	
	
</style>
<script>
	$(document).ready(function() {
		$("#openChat").click(function(){
			$(".modal").removeClass('hidden');
		});
		$("#closeBtn").click(function(){
			$(".modal").addClass("hidden");
		});
		$(".modal_overlay").click(function(){
			$(".modal").addClass("hidden");
		});
	});
</script>
</head>
<body>
	<div class="js-weather-container">
       	<span class="js-weather"></span>
       	<span class="js-weather-icon"></span>
    </div>
	<div class="chatbot_banner_kakao" onclick="window.open('http://pf.kakao.com/_laGxnK/chat')" >
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
	<div class="nibang_chat">
		<button id="openChat">💬</button>
		<div class="modal hidden">
			<div class="modal_overlay"></div>
			<div class="modal_content">
				<!-- <button id="closeBtn">❌</button> -->
				<p></p>
				<form name="chatForm" action="#" method="get">
					<textarea placeholder="내용을 입력해주세요"></textarea>					
				</form>
				<button type="button" id="sendChat">전송</button>
			</div>
		</div>
	</div>

<script src="http://localhost:9000/sist_project_2/js/weather.js"></script>
</body>
</html>