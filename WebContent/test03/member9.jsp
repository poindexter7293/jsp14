<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% request.setCharacterEncoding("UTF-8");%>

	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
		</tr>
		
<c:choose>
	<c:when test="${empty param.id}">
	<tr align="center">
		<td colsapn="4">아아디를 입력하세요!</td>
	</tr>
	</c:when>
	<c:otherwise>
	<tr align="center">
			<td width="7%">${param.id}</td>
			<td width="7%">${param.pwd}</td>
			<td width="7%">${param.name}</td>
			<td width="7%">${param.email}</td>
		</tr>
	</c:otherwise>
</c:choose>
	</table>
