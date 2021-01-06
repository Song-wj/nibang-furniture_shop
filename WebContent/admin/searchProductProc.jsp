<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.vo.*,com.sist_project_2.dao.*,com.google.gson.*,java.util.*"%>
 
<%
	String keyword =request.getParameter("keyword");
	
	productDAO dao = new productDAO();
	System.out.println(keyword);
	
	
	
		
	ArrayList<productVO> list = dao.getList(keyword);
	
	
	JsonArray jarray = new JsonArray();
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	for(productVO vo: list){
		JsonObject jobj = new JsonObject();
		jobj.addProperty("pid",vo.getPid());
		jobj.addProperty("pname",vo.getPname());
		jobj.addProperty("pinfo",vo.getPinfo());
		jobj.addProperty("pkind",vo.getPkind());
		jobj.addProperty("price",vo.getPprice());
		jobj.addProperty("color",vo.getColor());
		jobj.addProperty("img1",vo.getSimg1());
		jobj.addProperty("img2",vo.getSimg2());			
		jobj.addProperty("pdate",vo.getPdate());
		
		
	
		jarray.add(jobj);
	}
	jdata.add("jlist",jarray);
	out.write(gson.toJson(jdata));
	
%>
