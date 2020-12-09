<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>회원 정보 - 수정</title>
</head>
<style>
	.content {
		border:1px solid white;
		width:95%;
		margin:auto;
	}
	
</style>
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script>
		$(document).ready(function(){
			
			var chk =/(?=.*\d{1,15})(?=.*[~`!@#$%\^&*()-+=]{1,15})(?=.*[a-zA-Z]{2,15}).{8,15}$/;
			
			$("button#btn_updateOK").click(function (){
				if($("#name").val() == ""){
					alert("이름을 입력해주세요");
					$("#name").focus();
				}else if(!passCheck($("#pass") , chk )){
					return false;
				}else if($("#cpass").val() == ""){
					alert("비밀번호를 확인해주세요");
				}else if($("#year").val() == "" || $("#month").val() == "" || $("#day").val() == ""){
					alert("생년 월일을 입력해주세요");
					$("#year").focus();
				}else if($("input:radio:checked").length == 0){
					alert("성별을 체크해주세요");	
				}else if($("#hp1").val() == "" || $("#hp2").val() == "" || $("#hp3").val() == ""){
					alert("전화번호를 입력해주세요");
					$("#hp1").focus();
				}else if($("#addr1").val() == ""){
					alert("도로명주소를 입력해주세요");
					$("#addr1").focus();
				}else if($("#addr2").val() == ""){
					alert("상세주소를 입력해주세요");
					$("#addr2").focus();
				}	
			});
			
			$("button#btn_updateCancel").click(function(){
				//수정 취소 눌렀을때
				//디비에서 다시 가져오기...?
						
			});
			
			
			$("#cpass").focusout(function(){
				if($("#pass").val() == $(this).val()){
					$("#msg").text("사용가능한 비밀번호입니다").css("font-size","10px").css("color","blue").css("margin-left","200px");
					$("#name").focus();
				}else{
					$("#msg").text("비밀번호가 일치하지 않습니다.").css("font-size","10px").css("color","rgb(200, 10, 30)").css("margin-left","200px");
					$(this).val("");
					$("#cpass").focus();
					
				}
			});
			
			function passCheck(id ,chk){
				if(id.val()==""){
					alert("비밀번호를 입력해주세요");
					id.focus();
				}else
					if(chk.test(id.val())){
						return true;
					}else{
						alert("8~15자의 영문, 숫자, 특수문자 조합으로 구성해주세요");
						id.focus();
						return false;	
					}
			}
			
			
			/** 
				성별 count 출력
			**/
			function nameCheckCount(name) {
		         var name_list = document.getElementsByName(name);   
		         var count = 0;
		         
		         for(var i=0; i<name_list.length; i++) {
		            if(name_list[i].checked) count++;
		         }
		         
		         return count;
		      }
			
	});
		
			function goPopup(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("../addr/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
			}
			function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
				// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
				/* document.form.roadFullAddr.value = roadFullAddr; */
				document.mupdate.addr_number.value = zipNo;
				document.mupdate.addr1.value = roadAddrPart1;
				document.mupdate.addr2.value = addrDetail;
			
				document.getElementById("addr_number").style.fontSize = "15px";
			    document.getElementById("addr1").style.fontSize = "12px";
				document.getElementById("addr2").style.fontSize = "12px";
			}
		
</script>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div class="content">
			<aside class="sideMenuBar">
				<nav>
					<ul>
						<li>마이페이지</li>
						<li>나의 쇼핑내역</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp">주문/배송 조회</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/search_order_cancel.jsp">주문/취소 조회</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/cancel_refund_info.jsp">교환/반품/환불 안내</a></li>
						<li>나의 게시글 답변</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiry.jsp" >1:1문의</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
						<li>회원정보</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
					</ul>
				</nav>
			</aside>
			<div class="memberupdate" id="memberupdate">
			<form name="mupdate" action="#" method="get">
					<h2>회원정보 수정</h2>
						<ul>
							<li><input type="text" name="email" placeholder="아이디(이메일)" id="email"> </li>
							<li><input type="text" name="name" placeholder="이름" id="name"> </li>
							<li><input type="password" name="pass" placeholder="비밀번호" id="pass"></li>
							<li><input type="password" name="cpass" placeholder="비밀번호확인" id="cpass">
								<br><span id="msg"></span>
								<br><label class="password_chk">8~15자의 영문, 숫자, 특수문자 조합</label><li>
							<li>
								<input type="text" name="year" placeholder="생년월일" id="year">
								<input type="text" name="month" id="month">
								<input type="text" name="day" id="day">
								<input type="radio" name="gender" id="gender"><span>남</span>
								<input type="radio" name="gender" ><span>여</span>					
							</li>
							<li>
								<input type="text" name="hp" placeholder="전화번호" id="hp1">
								<input type="text" name="hp" id="hp2">
								<input type="text" name="hp" id="hp3">
							</li>
							<li><input type="text" name="addr_number" placeholder="우편번호" id="addr_number"> <button type="button" onClick="goPopup();" style="height:32px;" >주소검색</button> </li>	
							<li>
								<input type="text" name="addr" placeholder="도로명주소" id="addr1">		
								<input type="text" name="addr" placeholder="상세주소" id="addr2">
							</li>
							<li><label class="change_info">정보변경</label></li>
							<li><label>선택 동의항목</label><hr></li>
							<li>
								<span class="chk"><input type="checkbox" name="choice">개인정보 수집 및 이용 동의</span>
									<div class="info1div"><a href="#open1"  class="info1"><button type="button" class="info1">내용보기</button></a> <hr>
										<div class="white_content1" id="open1">
											<div class="personalinfo_agree" id="personalinfo_agree">
												<div class="title">
													개인정보 수집 및 이용 동의 [선택]
												</div>
													<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a><br><br>
												<div class="content">
													㈜ nibang(이하 ‘니방’ 또는 ‘회사’)은 최초 회원 가입 또는 서비스 이용 시 이용자로부터 아래와 같은 개인정보를 수집하고 있습니다. 
													귀하께서는 선택항목 수집/이용에 대한 동의를 거부하실 수 있으며, 이는 서비스 제공에 필수적으로 제공되어야 하는 정보가 아니므로 
													동의를 거부하시더라도 회원가입, 서비스 이용, 홈페이지 이용 등이 가능합니다.
													다만 선택항목 수집/이용에 대하여 동의하지 않으실 경우, 이벤트 참여 및 판촉 안내 등 서비스에 제한이 있을 수 있습니다.
												</div>
												<div class="table">
													<table border=2>
														<tr>
															<th>수집항목</th>
															<th>이용목적</th>
															<th>보유 및 이용기간</th>
														</tr>
														<tr>
															<td>- 성명<br>- 이메일주소<br>- 휴대폰번호<br>- 결혼여부<br>- 결혼기념일<br>- 자녀유무<br>
																- 첫자녀탄생연도<br>- 자택주소<br>- 마케팅 수신 동의여부<br>- 플랫폼 이용 동의여부<br>- 관심매장
															</td>
															<td>
																<br><br>
																1. 맞춤서비스 제공 및 이벤트 정보 제공<br> 2. 신규서비스 및 상품 개발<br> 3. 시장조사, 고객만족도조사, 고객별 통계 분석자료 활용<br>
																4. 고객 편의 제공 및 이벤트 경품 배송<br> 5. 광고성 정보 발송<br>
															</td>
															<td>
																<br><br><br>회원 탈퇴 시<br> 또는 <br> 동의 철회 시
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
							</li>
							<li> 
								<span class="chk1">마케팅 수신동의( 이메일<input type="checkbox" name="email"> SMS<input type="checkbox" name="SMS"> )&nbsp;&nbsp;</span>
									<div class="info2div"><a href="#open2"  class="info2"><button type="button" class="info2">내용보기</button></a> <hr>
										<div class="white_content2" id="open2">
											<div class="marketing_agree">
												<div class="title">
													마케팅 정보 수신 동의
												</div>
													<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a><br><br>
												<div class="content">
													<br>특별한 제안과 회원 한정 혜택을 받아 보려면 마케팅 정보 수신에 동의해주세요. <br>
													마케팅 정보 수신에 동의하지 않으시는 경우, 신제품 안내, 이벤트 소식 안내 및 참여, 혜택 적용 등이 제한됩니다.
												</div>
											</div>
										</div>
									</div>
							</li>
							<li>
								<span class="chk2"><input type="checkbox" name="choice">플랫폼 이용동의(엄마의 서재)</span>
									<div class="info3div"><a href="#open3"  class="info3"><button type="button" class="info3">'엄마의서재'란?</button></a><hr>
										<div class="white_content3" id="open3">
											<div class="mothers">
												<div class="title">
													엄마의 서재란?
												</div>
													<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a><br><br>
												<div class="content">
													엄마의 서재는 엄마들이 잠시 잊고 지냈던 여유와 재충전의 기쁨을 느낄 수 있도록, 나만의 시간을 통해 온전한 자기 자신의 행복을 누릴 수 있도록, 일룸에서 오직 엄마들만을 위해 만든 특별한 공간입니다. 플랫폼 이용에 동의하시면, 엄마의서재와 관련된 특별한 소식과 더불어 혜택을 누리실 수 있습니다.
													<!-- <br><br>엄마의 서재에 대해 더 자세히 알고싶으시면 여기를 클릭하세요. -->
												</div>
											</div>	
										</div>
									</div>	
							</li>
							<li>
								<button type="button" class="cancel" id ="btn_updateCancel">취소</button>
								<button type="button" class="OK" id="btn_updateOK">확인</button> 
							</li>
					</ul>
			</form>
			</div>
		</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>