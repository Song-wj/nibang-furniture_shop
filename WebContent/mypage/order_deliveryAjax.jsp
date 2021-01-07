<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*,com.google.gson.*,java.util.*"%>
    
 <%
	String mid =request.getParameter("mid");
	int period =Integer.parseInt(request.getParameter("period"));
	orderDAO dao = new orderDAO();
		
	ArrayList<orderVO> list = dao.getOrderList(period, mid);
	
	JsonArray jarray = new JsonArray();
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	for(orderVO vo: list){
		JsonObject jobj = new JsonObject();
		jobj.addProperty("oid",vo.getOid());
		jobj.addProperty("name",vo.getPname());	
		jobj.addProperty("price",vo.getPrice());
		jobj.addProperty("date",vo.getRdate());
		
		
	
		jarray.add(jobj);
	}
	jdata.add("jlist",jarray);
	out.write(gson.toJson(jdata));
	
%>
 
