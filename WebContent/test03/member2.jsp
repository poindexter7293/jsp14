<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="membersMap" class="java.util.HashMap"/>
<jsp:useBean id="membersList" class="java.util.ArrayList"/>

<%
membersList.add(new MemberVO("ki", "4321", "기성용", "ki@test.com"));
membersList.add(new MemberVO("son", "1234", "손흥민", "son@test.com"));
membersMap.put("id", "park2");
membersMap.put("pwd", "4321");
membersMap.put("name", "박지성");
membersMap.put("email", "park2@test.com");
membersMap.put("List", membersList);
%>



<c:set var="membersList" value="${pageScope.membersMap.List}"/>

	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">나이</td>
			<td width="7%">키</td>
		</tr>
		<tr align="center">
			<td width="7%">${pageScope.membersMap.id}</td>
			<td width="7%">${pageScope.membersMap.pwd}</td>
			<td width="7%">${membersMap.name}</td>
			<td width="7%">${membersMap.email}</td>
		</tr>
		
		<tr align="center">
			<td width="7%">${memberslist[0].id}</td>
			<td width="7%">${memberslist[0].pwd}</td>
			<td width="7%">${memberslist[0].name}</td>
			<td width="7%">${memberslist[0].email}</td>
		</tr>
			<tr align="center">
			<td width="7%">${memberslist[1].id}</td>
			<td width="7%">${memberslist[1].pwd}</td>
			<td width="7%">${memberslist[1].name}</td>
			<td width="7%">${memberslist[1].email}</td>
		</tr>
	</table>
