<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 중에서 core태그들을 사용하기 위해 외부 주소로 요청 --%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- JSTL 중에서 fomatting태그들을 사용하기 위해 외부 주소로 요청 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<%-- JSTL 중에서 functions태그들을 사용하기 위해 외부 주소로 요청 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<% request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.highlight{
color:red; font-weight:bold;
}
</style>
</head>
<body>

<h2>JSP기반 텍스트 분석기</h2>

<form method="post">
<label>분석할 문장을 입력하세요:</label>
<input type="text" name="inputText" value="${param.inputText}"/>
<button type="submit">분석요청하기</button> 
</form>

<c:if test="${not empty param.inputText}">
	<c:set var="text" value="${param.inputText}"/>
	<c:set var="keywords" value="JSP, Java, Spring"/>
	
<h3>입력된 문장 : ${text}</h3>

<ul>
<li>
<b>입력받은 전체 문자열의 총 문자 갯수 출력 : </b>
${fn:length(text)} 문자
</li>

<li>
<b>입력받은 전체 문자열의 대문자들을 소문자로 변경 후 얻어 출력</b>
${fn:toLowerCase(text)}
</li>

<li>
<b>입력받은 전체 문자열에 공백문자가 있으면 언더바 기호로 변경한 전체 문자열을 얻어 출력</b>
${fn:replace(text,' ', '_')}
</li>

<%-- <li>
<b>키워드 포함 여부 : </b><br>
<c:forEach var="keyword" items="${ fn:split(keywords, ',')}">

	"${keyword}" : ${ fn:contatins(text,keyword) ? "포함됨":"없음" }

</c:forEach>
</li>
 --%>
<li>
<b>강조된 문장 : </b>
<c:set var = "highlightStart" value="<sapn class='highLight'>"/>

<c:set var = "highlightEnd" value="</sapn>"/>

<c:set var = "highlightedText" value="${text}"/>

<c:forEach var="keyword" items="${fn:split(keywords, ',')}">

<c:set var="replacement" value="${highlightStart}${keyword}${highlightEnd}"/>
<c:set var="highlightedText" value="${fn:replace(highlightedText, keyword, replacement )}"/>
</c:forEach>
<c:out value="${hightlightedText}" escapeXml='false'/>
</li>

<li>
<b>문자열 뒤집기 : </b>

<c:set var="reversedText" value=""/>
<c:forEach var="i" begin="0" end="${fn:length(text)-1}">
	<c:set var="reversedText" value="${fn:substring(text, i, i+1) }${reversedText }"/>
</c:forEach>
<c:out value="${reversedText}"/>

</li>




</ul>
</c:if>

</body>
</html>