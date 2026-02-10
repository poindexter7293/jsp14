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
<%--순서3. 로그인 요청 할수 있는 디자인 코드를 작성 한다. --%>
	<h1>아이디를 입력해 주세요.</h1>

	<form action="result2.jsp" method="post">
		아이디 : <input type="text" name="userID"><br>
		비밀번호 : <input type="password" name="userPW"><br>
		
		<%-- 로그인 요청 버튼으로 만들수 있는 3가지 경우 --%>
			<input type="submit" value="로그인">		
			<input type="reset" value="다시입력">
	</form>



</body>
</html>




