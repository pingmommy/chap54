<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lang.jsp</title>
</head>
<body>
<table>
<c:forEach var="lang" items="${list}">
<tr>
 <td>${lang.countryCode}</td>
 <td>${lang.name}</td>
 <td>${lang.language}</td>
 <td>${lang.isOfficial}</td>
 <td>${lang.percentage}</td>
</tr>
</c:forEach>
</table>
</body>
</html>