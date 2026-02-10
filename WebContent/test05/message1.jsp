<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <fmt:setLocale value="ko_KR"/>--%>
	<fmt:setLocale value="en_US"/>
	<h1>
	회원정보 <br><br>
	<fmt:bundle basename="resource.member">
	이름  : <fmt:message key="mem.name"/> <br>
	주소  : <fmt:message key="mem.address"/> <br>
	직업  : <fmt:message key="mem.job"/> <br>
	</fmt:bundle>
	</h1>





</body>
</html>