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
<title>쪽지 문의</title>
</head>
<style>
	.content#inquiryform{
		width: 500px;
		height: 700px;
		border:1px solid red;
		margin: 5% 30%;
	}
	.content#inquiryform h3{
		text-align:center;
		padding:40px 0 30px 0 ;
	}
	.content form.inquiryform1 ul li{
		list-style-type:none;
		font-size:16px;
	}
	.content form.inquiryform1 ul li select{
		width:300px;
		height:40px;
		margin:0 0 25px 35px;
	}
	.content form.inquiryform1 input[type="text"]{
		width:400px;
		height:40px;
		margin:10px 1px;
	}
	.content form.inquiryform1 textarea {
		width:400px;
		height:150px;
		margin:10px 1px 30px 1px;
	}
	.content form.inquiryform1 ul li:nth-child(7),
	.content form.inquiryform1 ul li:nth-child(8){
		color:rgb(200,10,30);
		font-size: 13px;
		font-weight:400;
		margin:10px 0;
	}
	.content#inquiryform button{
		width:200px;
		height:50px;
		margin:25px 110px;
		background-color:rgb(200,10,30);
		border:1px solid rgb(200,10,30);
		color:white;
	}
	.content#inquiryform button:hover{
		 background-color:rgb(160,14,43);
	}
	
</style>
<body>
	<%-- <jsp:include page="../header.jsp"></jsp:include> --%>
	
	<div class="content" id="inquiryform">
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
				<button type="button">신청하기</button>
					
			</ul>
		</form>
	</div>
</body>
</html>