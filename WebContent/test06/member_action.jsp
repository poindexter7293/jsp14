<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sec02.ex01.MemberDAO"%>
<%@page import="sec02.ex01.MemberVO"%>
    
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:useBean id="membervo" class="sec02.ex01.MemberVO"/>
<jsp:setProperty property="*" name="membervo"/>
<jsp:useBean id="memberdao" class="sec02.ex01.MemberDAO"/>
<c:set var="insertResut" value="${memberdao.addMember(membervo)}"/>
<c:set var="membersList" value="${memberdao.listMembers()}"/>
<c:set var="List" value="${membersList}" scope="request"/>
<jsp:forward page="membersList.jsp"/>


<%-- <%@ MemberVO  memberVO  = new MemberVO(id, pwd, name, email);
MemberDAO memDAO = new memberDAO();
memDAO.addMember(membersList);
List membersList = memDAO.listMembers();
request.setAttribute("list", membersList);
request.getRequestDispatcher("membersList.jsp").forward(request, response); %> --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>