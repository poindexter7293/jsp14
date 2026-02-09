<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL의 core라이브러리 태그들을 사용하기 위해 외부 사이트에서 불러오는 taglib 디렉티브 태그 한줄 작성 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%
    //순서1. 요청 한 한글 문자 인코딩 방식 UTF-8 설정
	request.setCharacterEncoding("UTF-8");
%>
<%--
	JSTL의 core라이브러리에 속한 태그 중에서   c:set 태그 ?
	- 변수 선언  하는 태그 
	
	- c:set 태그 작성 방법
		
		<c:set  var="선언할변수명작성"  value="변수에저장할값" scope="선언한 변수를 바인딩할 내장객체종류중 하나"   />
 --%>

<%-- id변수 선언 후 "hong" 저장  하고,  id변수를 page내장객체 영역에 바인딩  --%>
<c:set  var="id" value="hong"  scope="page"/>
<c:set  var="pwd" value="1234" scope="page"/>
<%-- <c:set  var="name" value="${'홍길동'}" scope="page"/> --%>
<c:set  var="age" value="${22}" scope="page"/> 
<c:set  var="height" value="${177}" scope="page"/>
<%--
	  <c:choose> , <c:when>,  <c:otherwise> 태그 
	  
	  - <c:choose>태그는 다중 조건식을 통해 판단해야 할때 사용하는 태그입니다.
	        하위 태그로  <c:when>태그, <c:otherwise>태그를 함께 사용합니다.
	  
	  - 문법
	  		<c:choose>
	  			<c:when test="조건식1"> 조건식1을 만족하는 경우 실행될 코드  </c:when>    if(조건식1) { ...
	  			<c:when test="조건식2"> 조건식2을 만족하는 경우 실행될 코드  </c:when>    } else if(조건식2){ ...
	  			<c:otherwise>모든 조건식에 만족하지 않을경우 실행될 코드 </c:otherwise>	  } else{ ...  }
	  		</c:choose>
	  		  
            설명 : 얼핏보면 switch case default 비슷하지만  
                      각각의 <c:when>에서 조건식을 비교한다는 점은
            if  else if  else와 같은 구조입니다.
 --%> 

	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">나이</td>
			<td width="7%">키</td>
		</tr>
<c:choose>
	<%-- page 내장객체 영역에 name변수가 저장되어 있지 않느냐?  --%>
<%--<c:when test="${pageScope.name == null}"> --%>
	<c:when test="${empty pageScope.name}">
		  <tr align="center">
		  		<td colspan="5">이름이 저장되어 있지 않습니다.</td>
		  </tr>	
	</c:when>
	<c:when test="${empty pageScope.pwd}">
		  <tr align="center">
		  		<td colspan="5">비밀번호가 저장되어 있지 않습니다.</td>
		  </tr>	
	</c:when>
	<c:when test="${empty age}">
		  <tr align="center">
		  		<td colspan="5">나이가 저장되어 있지 않습니다.</td>
		  </tr>	
	</c:when>
	<c:when test="${empty height}">
		  <tr align="center">
		  		<td colspan="5">키가 저장되어 있지 않습니다.</td>
		  </tr>	
	</c:when>				
	<%-- page 내장객체 영역에 name변수가 저장되어 있으면? --%>	
	<c:otherwise>
		<%-- EL ${}태그를 작성해  page내장객체 영역에 바인딩된 변수의 값들을 얻어 출력 --%>
		<tr align="center">
			<td>${pageScope.id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${age}</td>
			<td>${height}</td>		
		</tr>		 	 
	</c:otherwise>
</c:choose>		
	</table>



















