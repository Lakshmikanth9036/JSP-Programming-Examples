<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose-When-Otherwise Tag</title>
</head>
<body>

<c:set var="income" scope="session" value="${4000*8}"/>
<p>Your income is: <c:out value="${income}"/></p>
<c:choose>
<c:when test="${income le 1000 }">
Income is not Good
</c:when>
<c:when test="${income gt 10000}">
Income is very good
</c:when>
<c:otherwise>
Income is undetermined
</c:otherwise>
</c:choose>

</body>
</html>