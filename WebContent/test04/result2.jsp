<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<% request.setCharacterEncoding("UTF-8"); %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 입력한 아이디를 request내장객체 영역에서 얻는데 그 얻은 아이디가 존재하지 않으면? 
		 요약 : 아이디를 입력하지 않고 result2.jsp에 로그인 요청 했다면?
	 --%>
	 <c:if test="${empty   param.userID }">
<!-- 	 	      request.getParameter("userID") == null -->
	 
	 	  아이디를 입력하세요. <br>
	 	 <a href="login.jsp">로그인 하러가기</a>
	 </c:if>
	 
	 <%--요약 : 아이디를 입력하고 result2.jsp에 로그인 요청 했다면? --%>
	 <c:if test="${not empty param.userID}">
	 	
	 	<%--요약 : 입력한 아이디가 관리자 아이디(admin)를 입력해서 result2.jsp에 로그인 요청 했다면? --%>
	 	<c:if test="${param.userID eq 'admin'}">
	 	
	 		<h1>관리자 계정 admin으로 로그인 했습니다.</h1>
	 		<form>
	 			<button>회원정보 수정</button>
	 			<button>회원정보 삭제</button>
	 		</form>	
	 	
	 	</c:if>
	 	
	 	<%--요약 : 입력한 아이디가 관리자 아이디(admin)이 아닌 다른 일반 아이디를 입력해서 result2.jsp에 로그인 요청 했다면?  --%>
	 	<c:if test="${ param.userID != 'admin' }">
	 	
	 		<h1>일반 계정 ${param.userID} 님 로그인 했습니다!!</h1>
	 	
	 	</c:if>
	 	
	 </c:if>




</body>
</html>