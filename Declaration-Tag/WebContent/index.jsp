<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Declaration Tag</title>
</head>
<body>
<%!
int data=50;
%>
<%=
"Value of the Variable is : "+data
%><br><br>
<%!
int cube(int n){
	return n*n*n;
}
%>
<%="CUBE of 3 is: "+cube(3) %>
</body>
</html>