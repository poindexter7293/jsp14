<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:out value="안녕하세요"/> <br>
<c:out value="${2*3}"/> <br>

<c:out value="${requestScope.membervo.id}" default="빈공백 대신 출력할 기본값"/>

<hr><hr>

&lt;abc>는 abc입니다.<br>

<c:out value="<abc>는 abc입니다."/>


</body>
</html>