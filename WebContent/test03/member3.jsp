<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%request.setCharacterEncoding("UTF-8");%>

<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1234" scope="page"/>
<c:set var="name" value="${'홍길동'}" scope="page"/>
<c:set var="age" value="${22}" scope="page"/>
<c:set var="height" value="${177}" scope="page"/>
<c:remove var="age"/>
<c:remove var="height"/>

	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">나이</td>
			<td width="7%">키</td>
		</tr>
		<tr align="center">
			<td width="7%">${pageScope.id}</td>
			<td width="7%">${pwd}</td>
			<td width="7%">${name}</td>
			<td width="7%">${age}</td>
			<td width="7%">${height}</td>
		</tr>
		

			
	</table>
