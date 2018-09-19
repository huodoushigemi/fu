<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String data = request.getParameter("a");
	if(data!=null) {
		response.getWriter().write(data);
	}else{
		response.getWriter().write("'null'");
	}

%>