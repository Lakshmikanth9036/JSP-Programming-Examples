<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C remove Tag</title>
</head>
<body>

<c:set var="income" scope="session" value="${4000*7}"/>
<p>Before removing Value is <c:out value="${income}"/></p>
<c:remove var="income"/>
<p>After removing Value is <c:out value="${income}"/>

</body>
</html>