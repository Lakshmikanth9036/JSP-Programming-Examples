<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Param Tag</title>
</head>
<body>

<c:url value="/index11.jsp" var="completeURL">
<c:param name="trackingID" value="786"/>
<c:param name="user" value="Swarup"/>
</c:url>
<c:out value="${completeURL}"/>


</body>
</html>