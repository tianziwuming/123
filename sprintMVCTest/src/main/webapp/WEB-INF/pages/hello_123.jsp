<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Set" %>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>123</title>
</head>	
<body>
<!-- 包含文件的两种形式：include和jsp：include，区别：
	include 会直接将file文件原封不动的加到被包含的文件中，代码嵌入。这时不需要设置content-type，否则重复
	jsp：include 不会讲file内容直接嵌入到被包含文件中，而是在执行时，动态执行file对应的servlet类，这时需要设置content-type -->
	
	<% 
		//request.setAttribute("message", "这是hello_123传过来的message");
		request.setCharacterEncoding("UTF-8");
	 %>
	
	<jsp:include page="hello.jsp">
		<jsp:param value="这是hello_123传过来的message" name="message"/>
	</jsp:include>
	<br>hello_123.jsp:<Br>
	<% 
	Set<String> keys = request.getParameterMap().keySet();
	
	for(String key: keys){
		out.println(key+" = "+ request.getParameter(key)+"<br>");
	}
	
	out.println("新增: "+ request.getAttribute("新增"));
	out.println("request.getCharacterEncoding=" +request.getCharacterEncoding());
	%>
</body>
</html>