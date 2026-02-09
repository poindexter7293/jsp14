<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextpath" value="${pageContext.request.contextPath}"/>

<a href="${contextPath}/test03/memberForm.html">회원등록하러가기</a>

<br>
<br>
<br>

<%
String contextPath2 = request.getContextPath();
%>

<a href="${contextPath}/test03/memberForm.html">회원등록하러가기</a>
