<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="requestChar" value="홍길동" scope="request"/>

<%--<%response.sendRedirect("OtherPage.jsp");--%>

<c:redirect url="../test03/OtherPage.jsp">
	<c:param name="user_param1" value="출판사"/>
	<c:param name="user_param2" value="한빛출판사"/>
</c:redirect>

</body>
</html>