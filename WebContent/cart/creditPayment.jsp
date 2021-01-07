<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"
    %>
<%
	String mid = request.getParameter("id");
<<<<<<< HEAD
	String pid = request.getParameter("pid"); 
	String cnt = request.getParameter("cnt");
	String oid = request.getParameter("oid");

	System.out.println("2------" +oid);
	
=======
	String oid = request.getParameter("oid"); 
	String cnt = request.getParameter("cnt");
>>>>>>> 4128c82246f35e1d5b0f71c0edfadca38b330fda
	
	productDAO pdao = new productDAO();
	nibangDAO ndao = new nibangDAO();
	orderDAO odao = new orderDAO();
<<<<<<< HEAD
	
	
	/* productVO pvo = pdao.getData(pid); */
=======
	//productVO pvo = pdao.getData(pid); 
>>>>>>> 4128c82246f35e1d5b0f71c0edfadca38b330fda
	joinVO jvo = ndao.getMemberInfo(mid);
	orderVO ovo = odao.getOrder();
	ArrayList<subOrderVO> slist = odao.getProductName(ovo.getOid());
	//System.out.println("1===="+ovo.getOid());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
<script>
	IMP.init('imp84143310');
	
	IMP.request_pay({
	    pg : 'inicis',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '<% for(subOrderVO vo : slist) { %><%= vo.getPname()%>/ <%}%>',
	    amount : 100, //판매 가격은 임시용으로 1000원으로 설정!
	    buyer_email : '<%= jvo.getEmail()%>',
	    buyer_name : '<%= jvo.getName()%>',
	    buyer_tel : '<%= jvo.getPh()%>',
	    buyer_addr : '<%= jvo.getAddr()%>',
	    buyer_postcode : '<%= jvo.getAddr_num()%>'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        /* msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num; */
<<<<<<< HEAD

	        location.href = "orderComplete.jsp?id=<%=mid%>&pid=<%=pid%>&oid=<%=oid%>";
=======
	        location.href = "orderComplete.jsp?id=<%=mid%>&oid=<%=ovo.getOid()%>";
>>>>>>> 4128c82246f35e1d5b0f71c0edfadca38b330fda

	    } else {
	        var msg = '결제에 실패하였습니다.';
	        /* msg += '에러내용 : ' + rsp.error_msg; */
<<<<<<< HEAD
	      <%--   <% odao.orderDelete(vo.getOid()); %> --%>
=======
	        <% odao.orderDelete(ovo.getOid()); %>
>>>>>>> 4128c82246f35e1d5b0f71c0edfadca38b330fda
	       <%--  location.href = "order_form.jsp?pid=<%=pid%>&id=<%=mid%>&cnt=<%=cnt%>"; --%>
	    }
	    alert(msg);
	});
</script>
</head>
<body>

</body>
</html>