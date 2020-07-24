<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forTokens Tag</title>
</head>
<body>

<c:forTokens items="Swarup-Abhinav-Debasish" delims="-" var="name">
<c:out value="${name}"></c:out><p><br>
</c:forTokens>

</body>
</html>