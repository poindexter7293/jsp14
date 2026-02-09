<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%request.setCharacterEncoding("UTF-8");
  session.setAttribute("address", "수원시 팔달구");

%>

	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
		</tr>
		<tr align="center">
			<td width="7%">${id}</td>
			<td width="7%">${pwd}</td>
			<td width="7%">${name}</td>
			<td width="7%">${address}</td>
		</tr>

			
	</table>
