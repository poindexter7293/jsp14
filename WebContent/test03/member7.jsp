<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% request.setCharacterEncoding("UTF-8");

List<MemberVO> membersList = new ArrayList();

MemberVO vo1 = new MemberVO("son", "1234", "손흥민", "son@test.com");
MemberVO vo2 = new MemberVO("ki", "4321", "기성용", "ki@test.com");
MemberVO vo3 = new MemberVO("park", "1212", "박지성", "park@test.com");

membersList.add(vo1); membersList.add(vo2); membersList.add(vo3); 
%>

<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1234" scope="page"/>
<c:set var="name" value="${'홍길동'}" scope="page"/>
<c:set var="age" value="${22}" scope="page"/>
<c:set var="height" value="${177}" scope="page"/>

	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
		</tr>
	<c:set var="list" value="<%=membersList%>" scope="page"/>
	<c:forEach var="membervo" items="${list}">
	<tr align="center">
	<td>${membervo.id}</td>
	<td>${membervo.pwd}</td>
	<td>${membervo.name}</td>
	<td>${membervo.email}</td>
	</tr>
	</c:forEach>
			
<%for(MemberVO vos : membersList){ %>
		
		<tr align="center">
			<td width="7%"><%=vos.getId() %></td>
			<td width="7%"><%=vos.getPwd() %></td>
			<td width="7%"><%=vos.getName() %></td>
			<td width="7%"><%=vos.getEmail() %></td>
		</tr>
<%} %>

			
	</table>
