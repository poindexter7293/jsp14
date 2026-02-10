<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="today" value="<%= new java.util.Date() %>"/>

<c:out value="${today}"/> <br>

<h4>날짜 포맷(변환)</h4>

<%-- full : 2026년 2월 10일 화요일 --%>
full : <fmt:formatDate value="${today}" type="date" dateStyle="full"/> <br>

<%-- long : 2026년 2월 10일 --%>
long : <fmt:formatDate value="${today}" type="date" dateStyle="long"/> <br>

<%-- default : 2026. 2. 10. --%>
default : <fmt:formatDate value="${today}" type="date" dateStyle="default"/> <br>

<%-- short : 26. 2. 10. --%>
short : <fmt:formatDate value="${today}" type="date" dateStyle="short"/> <br>

<h4>시간만 포맷(변환)</h4>
<%-- full : 오전 11:39:55 --%>
full : <fmt:formatDate value="${today}" type="time" dateStyle="full"/> <br>

<!-- long : 오전 11:42:43 -->
long : <fmt:formatDate value="${today}" type="time" dateStyle="long"/> <br>

<!-- default : 오전 11:42:43 -->
default : <fmt:formatDate value="${today}" type="time" dateStyle="default"/> <br>

<!-- short : 오전 11:42:43 -->
short : <fmt:formatDate value="${today}" type="time" dateStyle="short"/> <br>

<hr>

<h4>날짜/시간 모두 포멧(변환)</h4>
<!-- full : 2026년 2월 10일 화요일 오전 11:46:35 -->
full : <fmt:formatDate value="${today}" type="both" dateStyle="full"/> <br>

<!-- long : 2026년 2월 10일 오전 11:47:26 -->
long : <fmt:formatDate value="${today}" type="both" dateStyle="long"/> <br>

<!-- default : 2026. 2. 10. 오전 11:47:26 -->
default : <fmt:formatDate value="${today}" type="both" dateStyle="default"/> <br>

<!-- short : 26. 2. 10. 오전 11:47:26 -->
short : <fmt:formatDate value="${today}" type="both" dateStyle="short"/> <br>

<!-- 2026/02/10 11:53:39 -->
<fmt:formatDate value="${today}" type="both" pattern="yyyy/MM/dd hh:mm:ss" var="result"/> <br>
${result} <br>

<hr><hr>

<!-- 세계 협정 시간대 : 2026년 2월 10일 화요일 오전 3시 8분 36초 그리니치 표준시 -->
<h4>타임존(세계 수도 도시 시간대로 다르게 포맷하여 표시) 설정</h4>
세계 협정 시간대 :
<fmt:timeZone value="GMT">
<fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br>
</fmt:timeZone>

<!-- 유럽 런던 시간대 : 2026년 2월 10일 화요일 오전 3시 11분 15초 그리니치 표준시 -->
유럽 런던 시간대 : 
<fmt:timeZone value="Europe/London"><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br></fmt:timeZone>

<!-- 아메리카 시카고 시간대 : 2026년 2월 9일 월요일 오후 9시 11분 15초 미 중부 표준시 -->
아메리카 시카고 시간대 : 
<fmt:timeZone value="America/Chicago"><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br></fmt:timeZone>

<!-- 아시아 서울 시간대: 2026년 2월 10일 화요일 오후 12시 12분 5초 대한민국 표준시 -->
아시아 서울 시간대:
<fmt:timeZone value="Asia/Seoul"><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br></fmt:timeZone>





</body>
</html>