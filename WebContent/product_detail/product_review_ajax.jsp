<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*,com.google.gson.*,java.util.*"%>
    
 <%
	String pid =request.getParameter("pid");
	String select =request.getParameter("select");
	
	
	String icon = "👍";
	String good="";
	
	reviewDAO dao = new reviewDAO();
	ArrayList<reviewVO> list = dao.getProductReview(pid ,select);
		
	
	
	
	JsonArray jarray = new JsonArray();
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	
	for(reviewVO vo: list){
		JsonObject jobj = new JsonObject();
		for(int i=0; i<Integer.parseInt(vo.getR_satis()); i++ ) { 
			good+=icon;
		}
		
		jobj.addProperty("id",vo.getMid());
		jobj.addProperty("img",vo.getR_sfile());
		jobj.addProperty("title",vo.getR_title());	
		jobj.addProperty("content",vo.getR_content());
		jobj.addProperty("grade",good);
		
		
	
		jarray.add(jobj);
	}
	
	jdata.add("jlist",jarray);
	out.write(gson.toJson(jdata));
	
	
	
	
	
	
	
	
	
%>
 
