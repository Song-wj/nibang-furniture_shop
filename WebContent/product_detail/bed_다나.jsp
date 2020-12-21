<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>일룸</title>
</head>
<style>
	
</style>
<script>
	function img_change(img_id){
		var name = document.getElementById(img_id).getAttribute("src");
		
		if(name =="../images/다나_detail.jpg" ){
			document.getElementById("change").src ="../images/다나_detail.jpg";
		}else if (name == "../images/다나2_detail.jpg"){
			document.getElementById("change").src ="../images/다나2_detail.jpg";
		}
	}
	
	$(document).ready(function(){
		$("#product_colors").change(function(){
			var option_text = $("#product_colors option:selected").text().split(' '); 
			var option_price = option_text[1].replace(/[^0-9]/g,"");
			var sum_price = addComma(option_price);
			
			if($("#product_colors option:selected").val() != "선택"){
				$("#total_price").replaceWith("<span id='total_price'>" + sum_price + " 원</span>");
				$("#total_price").css("margin-left","300px");
			} else {
				$("#total_price").replaceWith("<span id='total_price'>" + 0 + " 원</span>");
				$("#total_price").css("margin-left","354px");
				return false;
			}
		});
	});
	
	function addComma(value) {
		var value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		return value;
	}
</script>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<div class="product_detail">
		<section class="section1" id="section1_pd">
			<aside class="product_img">
				<div class="productmain_img" id="productmain_img">
					<img src = "../images/다나_detail.jpg" id="change" >
		<!--돋보기 	<a href ="#"><img src = "http://localhost:9000/sist_project_2/images/magnify_grey.png"></a> -->
				</div>
				<div class="productmini_img" id="productmini_img">
					<img src = "../images/다나_detail.jpg" id ="change1" onclick = "img_change('change1')">
					<img src = "../images/다나2_detail.jpg" id ="change2" onclick = "img_change('change2')">
					<hr>
				</div>
			</aside>
			<div class="product_payInfo" id="product_payInfo">
				<ul>
<!--제품명 고치기--><li class="pname">다나</li>
<!--고치기-->			<li class="pexplain">모션베드 캐주얼(라텍스,책상형)</li>
<!--고치기-->			<li class="pprice" id="total">2,090,000원</li> 				
					<hr>					
					<li class="pcode">
						배송기간 <span>약 10일</span> 배송비<span>무료배송</span>
<!-- 제품코드만 고치기! -->	배송방법 <span>설치배송</span> 제품코드<span>HSSE290L</span>
					</li>
					
					<li>
<!--고치기-->				<select name="product_colors" id="product_colors">
					  		<option value="선택">[필수] 색상을 선택해주세요</option>
					  		<option value="NCCGU">NCCGU 2,090,000원</option>
					  	</select>
				  	</li>
				  	<hr>
				  	<li class=total_price>총 구매가 <span id="total_price"> 0 원</span></li>
				  	<li class="btn_productPay">
				  		<button type="button">결제하기</button>
				  		<button type="button">장바구니</button>
				  		<a href="" class="wish"></a>
				  	</li>
					<li class="btn_Events" id="btn_Events">
						<a href=""><img src="http://localhost:9000/sist_project_2/images/pd_myilloomlifebtn.jpg"></a> 
						<a href=""><img src="http://localhost:9000/sist_project_2/images/pd_eventbtn.jpg"></a> 
						<a href=""><img src="http://localhost:9000/sist_project_2/images/pd_promotionbtn.jpg"></a> 			
					</li>
				</ul>
			</div>
		</section> 
		<section class="section2" id="section2_pd">
			<!-- <div class="product_recommend" id="product_recommend">    우선은 생략했어요
				<label>함께 본 제품 추천</label>
랜덤			<a href=""><img src=""></a>
					<a href=""><img src=""></a>
					<a href=""><img src=""></a>
					<a href=""><img src=""></a>
					<a href=""><img src=""></a>
			</div>
			<hr> -->
			<div class="product_detail_info" id="product_detail_info">
				<label>상품필수정보</label>
				<div class="detail_info1">
					<ul>
						<li>제품명</li>
						<li>모델명</li>
						<li>크기(mm)/중량(kg)</li>
						<li>색상</li>
						<li>구성품</li>
						<li>주요 소재/재질</li>
						<li>사용연령 또는 체중범위</li>
						<li>동일모델의 출시년월</li>
					</ul>
				</div>
				<div class="detail_info2">
					<ul>
						<li>가구</li>
						<li>아이템별 맞춤수납-부띠끄형PKG</li>
						<li>*상세페이지 참조</li>
						<li>CGYA/GYA</li>
						<li>*상세페이지 참조</li>
						<li>*상세페이지 참조</li>
						<li>해당사항없음</li>
						<li>해당사항없음</li>
					</ul>
				</div>
				<div class="detail_info3">
					<ul>
						<li>제조자/제조국</li>
						<li>판매자/수입자</li>
						<li>취급방법 및 취급시 주의사항/<br>안전표시(주의,경고 등)</li>  
						<li>배송/설치비용</li>  
						<li><br>품질보증기준<br></li>  
						<li>AS/책임자와 전화번호</li>  
						<li>KC인증</li>  
					</ul>
				</div>
				<div class="detail_info4">
					<ul>
						<li>일룸OEM/대한민국</li>
						<li>(주)일룸/(주)일룸></li>
						<li>*상세페이지 참조<br><br></li>
						<li>무료배송(단,도서산간지역 제외)</li>
						<li>소비자분쟁해결기준에 따라 1년 무상A/S<br>(단,보증기간 내라도 고객 귀책 사유일 경우 제외)</li>
						<li>일룸 고객센터 1577-5670</li>
						<li><img src="http://localhost:9000/sist_project_2/images/KC.png"></li>
					</ul>
				</div>
			</div>
		</section>
		<section class="section3_product_img" id="section3_product_img">
			<div class="product_closet_img" id="product_closet_img">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트1.jpg">
				<label>*상기 이미지는 슬라이딩 도어 사양으로 매장에서 구매 가능합니다.<br><br><br></label>
				<p>	 
					이벤트 기간 동안 옷장 2700폭 이상(도어 포함) 구매 시 <br>
					옷장 조명 3개 + 패브릭 박스 2개(156,000원 상당) 증정 
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트2.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트3.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트4.jpg">
				<p class="explain_title">컬렉트 시리즈</p>
				<p>
					고급스러우면서도 견고한 느낌의 프리미엄 옷장, 컬렉트 시리즈입니다. <br>
					컬렉트 옷장 시스템으로 차별화된 사용성을 경험해보세요. 
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트5.jpg">
				<p class="explain_title">다양한 내부 구성</p>
				<p>
					다양한 내부 구획 및 옵션을 갖추고 있어 옷장 사용 패턴에 맞는 수납 구성이 가능합니다.  
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트6.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트7.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트8.jpg">
				<p class="explain_title">아이템별 맞춤 수납 - 부띠끄형 PKG</p>
				<p>
					의류 및 패션아이템 특성에 맞춰 다양하게 수납할 수 있는 구성입니다.
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트9.jpg">
				<br><br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트10.jpg" id="img10">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트11.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트12.jpg" id="img12">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트13.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트14.jpg" id="img14">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트15.jpg" id="img15">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트16.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트17.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트18.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트19.jpg" id="img19">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트20-1.jpg" id="img20-1">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트20-2.jpg" id="img20-2">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트21.jpg">
				<hr>
				
				<p class="explain_title">Color</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트22.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트23.jpg">
				
				<p class="explain_title">Size & Mataterial</p>
				<p><span class="red">Size</span></p>
				<p><span>1000*590*2176</span></p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트24.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트25.jpg">
				<p><span class="red">Material</span></p>
				<p><span>몸통 15T,22T PB+LPM+ABS엣지<br>뒤판/속서랍밑판 4.5t MDF+FF<br>서랍앞판 18t PB+LPM+ABS엣지<br>
					   서랍손잡이 알루미늄+분체도장<br>옷걸이봉 알루미늄 압출(아노다이징)<br>도어 18T PB+ASA/LPM(STONE질감)<br>
					손잡이 알루미늄 압출(XX:아노다이징, GY:분체도장)
				</span></p>
				<hr>
				
				<p class="interiorTIP">INTERIOR TIP</p>
				<p class="explain_title">컬렉트 시리즈 구성 둘러보기</p>				
				<p>
					900/1000폭, 450/500폭까지, 필요한 사이즈에 맞게 구성할 수 있습니다. 
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트26.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트27.jpg">
				<br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트28.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트29-1.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트29-2.jpg">
				<br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트30.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트31.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트32.jpg">
				<br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트33.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트34.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트35.jpg">
				
				<p class="explain_title">다양한 도어와 매칭 가능</p>				
				<p>
					일룸의 다양한 옷장 도어와 매칭하여 <br>우리집 스타일에 딱 맞는 옷장 구성을 만들어 보세요. 
				</p>
				
				<img src="http://localhost:9000/sist_project_2/images/컬렉트36.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트37.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트38.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트39.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트40.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트41.jpg">
				<br><br><br>
				<p>
					매장에서 나에게 맞는 옷장 구성을 상담받아 보세요.
				</p>
			</div>
		</section>
		<section class="section4_product_notice" id="section4_product_notice">
			<div class="product_review_QnA" id="product_review_QnA">
				<label>한줄 상품평</label>
				<label class="btnNselect">
					<button type="button">리뷰등록</button>
					<select name="product_review_sort" id="product_review_sort">
						<option value="최근 리뷰순"> 최근 리뷰순</option>
						<option value="평점 높은순"> 평점 높은순</option>
						<option value="평점 낮은순"> 평점 낮은순</option>
					</select>
				</label>
				<hr>
				<table class="1line_review" id="1line_review">
					<tr>
						<td>작성된 한줄 상품평이 없습니다.</td>
					</tr>
				</table>
				<hr>
				
				<label>상품 Q&A <span class="qna">상품에 관한 문의가 아닌 경우 고객센터를 이용해주세요.</span>
						<button type="button">문의하기</button>
						<button type="button">고객센터</button>
				</label>
				
				<hr>
				<table class="product_Q&A" id="product_Q&A">
					<tr>
						<td>상품 Q&A 내역이 없습니다.</td>
					</tr>
				</table>
				<hr>
			</div>
			<div class="product_img_notice" id="product_img_notice">
				<label>제품 사진 관련 안내</label>
				<hr>
				<label class="product_img_notice">
					위의 사진들은 모니터에 따라 약간의 색상 차이가 발생될 수 있습니다. 해당 제품은 지속적인 개선을 위하여 예고 없이 사양이 변경될 수 있습니다.
				</label>
			</div>
			<div class="product_delivery_notice" id="product_delivery_notice">
				<label>배송 안내</label>
				<hr>
				<div class="delivery1">
					<p>
						일룸에서는 배송예약 시스템을 운영하고 있습니다.<br>
						일룸 제품은 주문제작 상품으로 배송까지 7~10일이 소요되며,<br>
						배송 예약 일정을 변경하고자 하는 경우, 평일 기준 요청일 최소 3일 전에<br>
						공식쇼핑몰 담당자(1577-5670) 에게 연락을 해주셔야 합니다.<br><br>
						단, 주문의 폭주, 천재지변, 배송과정에 차질이 발생한 경우, 고객님께 사전에 배송 지연<br>
						사실을 알려드리며, 상담을 통해 배송 요청일을 다시 조정하실 수 있습니다.<br>
						도서/산간지역은 배송이 다소 늦을 수 있습니다.<br><br>	
						<span class="fontred">설치 당일 설치 현장의 특수성으로 인해 추가적으로 발생하는 비용은 고객님 부담입니다.</span><br><br>
						(엘레베이터 사용료/사다리차 사용료 등)<br><br>
						제주도, 울릉도 지역은 온라인 주문이 불가합니다. 대리점에 직접 방문해주세요.
					</p>					
				</div>
				<div class="delivery2">
					<p>
						<span class="fontred">배송 예약 시스템이란?</span><br><br><br>
						일정이 바쁜 고객님들을 위하여<br>
						상품의 희망 배송일을 예약할 수 있는 서비스를 제공해드리고 있습니다.<br>
						결제일로부터 7일(일부 품목은 10일) 이후부터 지정이 가능합니다.<br><br>	
						지정 후 온라인 담당자나 담당 시공자가 시공 전에<br>
						연락을 드리고 세부일정을 확정하게 됩니다.<br>
						(배송 예약 시스템은 시공 상품에만 해당하며, 택배 상품은<br>
						 배송 희망일과 무관하며 5일정도 소요됩니다.)<br><br><br><br>
					</p>
				</div>
			</div>
			<div class="product_exchangerefund_notice" id="product_exchangerefund_notice">
				<label>교환/환불안내</label>
				<hr>
				<div class="exchangrefund_notice">
					
						<span class ="fontW">교환 및 반품<br><br></span>
						<span class="fontred">가구의 특성상 설치(조립)이 된 후에는 상품 가치가 하락하여<br>
							재판매가 불가능한 상태이므로 교환/반품 기간이라도 교환/반품이 불가합니다.</span><br><br>	
							공정거래위원회 표준 약관에 의거하여 납품 후, 7일 이내에 교환/반품 신청이 가능합니다.<br><br>
						<hr>
						<span class ="fontW">교환 및 반품 가능한 경우 <span class ="fontindent"> 교환 및 반품 불가능한 경우</span></span><br><br>						 
							· 배송된 상품이 주문 내용과 상이한 경우 <span class ="fontindent">  · 상품을 설치(조립)한 경우</span><br>
							· 상품에 오염이나 손상이 있는 경우 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class ="fontindent" > · 고객님의 사용 및 부주의로 인하여</span><br>
							· 상품 자체의 이상 및 결함이 있는 경우&nbsp;&nbsp;&nbsp;<span class ="fontindent">· 상품 가치가 감소한 경우</span><br><br>
						<hr>
					
				</div>
				<div class="order_cancle_notice">
					<p> 
						<span class ="fontW">주문취소<br><br></span>
						결제하신 상품의 주문취소를 원하시면 주문등록 전에는 쇼핑몰에서 직접 취소하실 수 있습니다.<br>
						주문등록 후에는 평일 기준(주말 및 공휴일 제외) 3일 전까지 쇼핑몰 담당자 (1588-6792)에게<br>
						전화로 요청이 가능하며, 배송 준비 또는 배송 중에는 반품비용이 청구됩니다.<br>
						주문 내용 변경을 원하시면 주문 전체를 취소하시고 새로 주문하셔야 하며, 부분 변경이 불가합니다.<br><br>
						<span class ="fontW">환불안내<br><br></span>
						<span class="fontred"></span>소비자 보호 규정에 의거하여 주문의 취소일 혹은 재화 등을 반환받은 날로부터<br>
						영업일 3일 이내에 결제금액을 환불해드립니다.<br><br>
						단, 신용카드 경제 일자에 맞추어 대금이 청구될 경우, 익월 신용카드 대금청구 시 카드사에서<br>
						환급 처리됩니다. 무통장입금의 경우에는 주문의 취소 혹은 제품 회수 후 입금 계좌가 확인되면<br>
						3일 이내에 환불해 드립니다.(토요일, 일요일 및 공휴일은 제외)<br>
					</p>
				</div>
				<div class="exchangrefund_rule">
					
						<span class ="fontW">주문취소 및 교환/반품 비용 규정</span><br><br>
						<table border=1>
							<tr>
								<td>주문취소<br>(납품 전)</td>
								<td>주문후 ~ <br>배송전일</td>
								<td>무상 취소가능</td>
							</tr>
							<tr>
								<td rowspan="2">교환/반품<br>(납품 후)</td>
								<td>7일이내</td>
								<td>박스 개봉 전 or 박스 개봉 후 (조립 설치 전)<br>구매 금액의 10% (50,000원 이하 상품은 5,000원 정액)<br><br>
									제품 조립 설치 후 (상품 가치 하락)<br>교환/반품 불가</td>
							</tr>
							<tr>
								<td>7일이후</td>
								<td>교환/반품 불가</td>
							</tr>
						</table>
					
				</div>
				
			</div>
			<div class="product_precautions" id="product_precautions">
				<div class="precautions">
					<label>제품 사용/관리 주의사항</label>
					<hr><br>				
					<img src="http://localhost:9000/sist_project_2/images/warning_1.png">
					<img src="http://localhost:9000/sist_project_2/images/warning_2.png">
					<img src="http://localhost:9000/sist_project_2/images/warning_3.png">
					<img src="http://localhost:9000/sist_project_2/images/warning_4.png">
					<p id="warning1">
						<br><span>장시간 지속적인 물, 습기, 열 및<br>오염물질 등에 노출될 경우</span><br><br>
						제품 변형의 원인이 될 수 있으므로<br>주의하여 주십시오.<br>
					</p>
					<p id="warning2">
						<br><span>제품의 임의적인 분해 및<br>재조립을 하였을 경우</span><br><br>
						손상 및 파손이 발생하여 사용 기간이<br>단축될 수 있으니 지양해주십시오.<br>
					</p>
					<p id="warning3">
						<br><span>제품에 사람이 올라타거나<br>무거운 것을 올렸을 경우</span><br><br>
						미끄러져 떨어지거나 전복되어 상해를<br>입을 수 있으니 각별히 주의하십시오.<br>
					</p>
					<p id="warning4">
						<br><span>제품을 이동할 경우<br></span><br>
						끌거나 밀지마시고 두 명이 함께 들어<br>수평을 유지한 채 운반하여 주십시오.<br>제품/바닥에 손상을 입힐 수 있습니다.<br>
					</p>
				</div>
					
			</div>
			
			
		</section>	
	</div>
	
	<jsp:include page="../nibangBanner.jsp"/>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>