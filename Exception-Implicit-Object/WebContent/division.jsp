<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page errorPage="error.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	String num1=request.getParameter("firstnum"); 
	String num2=request.getParameter("secondnum"); 
	int v1= Integer.parseInt(num1); 
	int v2= Integer.parseInt(num2); 
	int res= v1/v2; 
	out.print("Output are: "+ res);
	%>
</body>
</html>