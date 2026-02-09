<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%request.setCharacterEncoding("UTF-8");%>

<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1234" scope="page"/>
<c:set var="name" value="${'홍길동'}" scope="page"/>
<c:set var="age" value="${22}" scope="page"/>
<c:set var="height" value="${177}" scope="page"/>

<c:if test="${height>=160}">
<h1> ${pageScope.name}의 키는 160보다 큽니다.</h1>
</c:if>
<c:if test="${true}">
 <h1>항상 참입니다.</h1>
</c:if>

<c:if test="${11 eq 11}">
	<h1>두 11은 같습니다.</h1>
</c:if>

<c:if test="${11 != 31}">
	<h1>두 값은 같지 않습니다.</h1>
</c:if>

<c:if test="${id == 'hong' && name == '홍길동'}">
	<h1>아이디 hong이고, 이름은 홍길동 입니다.</h1>
</c:if>

<c:if test="${age == 22} " var="result" scope="page">
	<h1>${name}의 나이는 ${age}살 입니다.</h1>
	${pageScope.result}
	<c:if test="${result}">
		<h1>그래 맞다~~</h1>
	</c:if>
</c:if>

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
