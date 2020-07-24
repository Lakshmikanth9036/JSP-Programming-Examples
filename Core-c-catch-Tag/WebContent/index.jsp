<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C catch Tag</title>
</head>
<body>

<c:catch var="catchtheException">
<% int i=10/0; %>
</c:catch>

<c:if test="${catchtheException != null}">
<p>The type of Exception is : ${catchtheException} </p>
<p>There is an Exception : ${catchtheException.message}</p>
</c:if>

</body>
</html>