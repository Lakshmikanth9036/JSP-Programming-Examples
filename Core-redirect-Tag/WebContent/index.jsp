<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Redirect Tag</title>
</head>
<body>

<c:set var="url" value="0" scope="request"/>

<c:if test="${url le 0}">
<c:redirect url="http://google.co.in"/>
</c:if>

<c:if test="${url gt 1}">
<c:redirect url="http://facebook.com"/>
</c:if>

</body>
</html>