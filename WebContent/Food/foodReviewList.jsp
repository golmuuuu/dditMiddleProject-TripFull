<%@page import="ddit.vo.FoodReviewVO"%>
<%@page import="ddit.vo.FoodVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	List<FoodReviewVO> list = (List<FoodReviewVO>) request.getAttribute("list");
    
    	Gson gson = new Gson();
    	
    	String result = gson.toJson(list);
    	
    	out.print(result);
    	
    	out.flush();
    
    %>