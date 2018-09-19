<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String data = request.getParameter("a");
	if(data!=null) {
		data += encapsulationData(data);
		response.getWriter().write(data);
	}else{
		response.getWriter().write("null");
	}

%>

<%!
	public String encapsulationData(String data){
		String strVar = "";
		strVar += "<script>\n";
		strVar += "document.domain = 'efutureinfo.com'\n";
		strVar += "	if( typeof(parent.window['formCallBack']) == \"function\"){\n";
		strVar += "	    parent.window['formCallBack']('"+ data +"');\n";
		strVar += "	}\n";
		strVar += "</script>\n";
		
		return strVar;
	}
%>