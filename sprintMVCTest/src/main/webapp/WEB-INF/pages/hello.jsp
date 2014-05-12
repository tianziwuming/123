<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.HashMap,java.net.URLDecoder" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hello,world</title>
</head>
<body>
	
	hello.jsp:<br>
	hello,下一行是动态信息：<br>
	<% String name="这是jsp页面中定义的值";
		String msg = URLDecoder.decode((String)request.getParameter("message"), "UTF-8"); 
		msg=(String)request.getParameter("message");
		//msg = org.apache.jasper.runtime.JspRuntimeLibrary.decode(msg);
		out.println(msg);
		//out.println(new String(msg.getBytes(),"UTF-8"));
	%> <br>
	<%= name %><br>
	
	<script>
		document.write("encodURIComponet(这是jsp页面中定义的值)="+encodeURIComponent("这是jsp页面中定义的值","UTF-8"));
	</script>
</body>
</html>