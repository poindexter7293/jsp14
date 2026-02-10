<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
			<td width="7%">가입일</td>		
		</tr>
<c:choose>
	<c:when test="${empty requestScope.list}">
		<tr align="center">
			<td colspan="5" align="center">등록된 회원에 없습니다.</td>
		</tr>
		<tr align="center">
			<td colspan="5"><a href="./memberForm.html">다시 로그인하기</a></td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach var="membervo" items="${requestScope.list}">
			<td width="7%">${membervo.id}</td>
			<td width="7%">${membervo.pwd}</td>
			<td width="7%">${membervo.name}</td>
			<td width="7%">${membervo.email}</td>
			<td width="7%">${membervo.joinDate }</td>		
		</c:forEach>
	</c:otherwise>

</c:choose>

</table>

</body>
</html>