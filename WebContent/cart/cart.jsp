<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"
    %>
<%
   String mid = request.getParameter("id");
   String pid = request.getParameter("pid");
     
   productDAO pdao = new productDAO();
   nibangDAO ndao = new nibangDAO();
   
   productVO pvo = pdao.getData(pid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
section.section1 {
   width: 100%;
    display: inline-block;
    height: 80%;
    padding-top: 10%;
    margin-bottom: 100px;
}         
div.content {
   margin-top: 20px;
    margin-bottom: 40px;
      padding-left:51%;
}

</style>
</head>
<body>
   <jsp:include page="../header.jsp" />
   <div>
      <section class="section1">
         <div class="order_lnb">
            <span class="f_red">01 장바구니</span><hr>
            <span>02 주문서 작성</span><hr>
            <span>03 주문완료</span>
         </div>
         <div id="cart_content">
         <form name="orderForm" action="order_form.jsp" method="get" class="order_form">
            <div id="title">장바구니</div>
            <div id="sub_title">주문하실 상품을 선택해주세요</div>
            <table class="order_product">
               <tr>
                  <th class="w10">
                     <img class="img_checkBox" id="allCheck" src="http://localhost:9000/sist_project_2/images/checkBox_w21_red.png">
                  </th>   
                  <th colspan="2">상품정보</th>      
                  <th class="w130">단가</th>      
                  <th class="w130">수량</th>
                  <th class="w130">상품금액</th>         
                  <th class="w100">주문</th>         
               </tr>
               <tr class="mainProduct">
                  <td class="w10_checkBox">
                     <img class="img_checkBox" id="allCheck" src="http://localhost:9000/sist_project_2/images/checkBox_w21_red.png">
                  </td>
                  <td>
                     <a href="http://localhost:9000/sist_project_2/product_detail/product_detail.jsp?=<%= pid%>">
                        <img src = "../upload/<%= pvo.getSimg1() %>" id="change" >
               </a>
                  </td>
                  <td class="productInfo">
                     <span class="f_bold"><%= pvo.getPname() %></span>
                     <br>
                     <span><%= pvo.getPinfo() %></span>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <span style="vertical-align: bottom;">
                        <b>[필수] &nbsp; &nbsp;</b>
                        색상 : 
                        <span><%= pvo.getColor() %></span>
                     </span>
                  </td>
                  <td class="mainPrice"><%= pvo.getPprice() %>원</td>
                  <td class="mainQty">1</td>
                  <td class="groupPrice"><%= pvo.getPprice() %>원</td>
                  <td>
                     <input type="button" class="btn_buynow" value="바로구매">
                     <input type="button" class="btn_delete" value="삭제하기">
                  </td>
               </tr>
            </table>
            <div style="padding:70px 70px;">
               <input type="button" class="btn_delete" value="선택상품삭제">
               <span class="totalPrice">
               총 상품금액
               <span class="totalPrice"> &nbsp; &nbsp;<%= pvo.getPprice() %>원</span>
               </span>   
            </div>
            <div id="cart_btn">
               <button type="button" id="select_order">선택상품 주문</button>
               <button type="button" id="all_oreder">전체상품 주문</button>
            </div>
            </form>
         </div>
      </section>
   </div>
   <jsp:include page="../nibangBanner.jsp"/>
   <jsp:include page="../footer.jsp" />
</body>
</html>