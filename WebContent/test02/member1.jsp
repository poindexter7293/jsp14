<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="sec01.ex01.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>

	
	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
		</tr>
		
		<tr align="center">
			<td width="7%"><%= (String)request.getAttribute("id") %></td>
			<td width="7%"><%= (String)request.getAttribute("pwd") %></td>
			<td width="7%"><%= (String)session.getAttribute("name") %></td>
			<td width="7%"><%= (String)application.getAttribute("email") %></td>
		</tr>
		<tr align="center">
			<td width="7%">${requestScope.id}</td>
			<td width="7%">${requestScope.pwd}</td>
			<td width="7%">${sessionScope.name}</td>
			<td width="7%">${applicationScope.email}</td>
		</tr>


			
	</table>











