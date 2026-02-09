<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL의 core라이브러리 태그들을 사용하기 위해 외부 사이트에서 불러오는 taglib 디렉티브 태그 한줄 작성 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 변수 선언 		
		number변수 선언하고  정수 100 저장 후  page내장객체 메모리 영역에 number변수 바인딩 
		
		string변수 선언하고 문자열 "JSP" 저장 후  page내장객체 메모리 영역에 string변수 바인딩 
	 --%>
	 <c:set var="number"  value="${100}" scope="page" />
	 <c:set var="string"  value="JSP"  scope="page" />
	 
	 <h4>문자열 비교와 else 구문 흉내내기</h4>
	 <%--
	 		string변수에 저장된 문자열과 'Java'문자열을 비교해 같으면?
	 		결과값을 result2변수에 저장합니다. result2변수를 page내장객체 영역에 바인딩(저장)합니다! 
	  --%>
	  <c:if test="${string eq 'Java'}" var="result2" scope="page">
	  
	  	문자열은 Java 입니다.<br>

	  </c:if>
	  
	  <%--else구문 흉내내기 :   reuslt2변수에 저장된 값이 false이면(string변수에 저장된 문자열이 'Java'문자열과 다르면?) --%>
	  <c:if test="${not pageScope.result2}">
	  		
	  		string변수에 저장된 문자열은 Java가 아닙니다.<br>
	  
	  </c:if>	
	 
	 	 
	 <h4>JSTL의 if태그로 짝수/홀수 판단하기</h4>

	 <%-- c:if 태그를 작성해 number변수의 값을 2로 나누었을때 나머지가 0과 같은지 판단(number변수값 짝수인지 판단)하는 조건식을 작성해 
	           결과 값 을 result변수에 저장!  result변수는 page내장객체 영역에 바인딩(저장)합니다!
	  --%>
<%-- <c:if test="${number %    2 == 0 }" var="result" scope="page" > --%>
	 <c:if test="${number mod  2 eq 0 }" var="result" scope="page" >
	 
			${number}는 짝수 입니다.<br>
			
	 </c:if>

	  result : ${pageScope.result}<br>
	  
	 
	  <h4>조건식 작성 주의사항</h4>
	  <%--
	  		주의사항1 : test속성에 EL ${} 가 아닌 일반값 100을 작성 하면 무조건 false를 반환합니다.
	  				                                   하지만 일반 값으로 true가 사용되는 경우는 예외 입니다. 
	   --%>
	  <c:if test="100" var="result3" scope="page">
	  		
	  		EL이 아닌 정수를 조건식 자리에 작성하면 false를 반환 <br>
	 
	  </c:if>
	
	   result3 : ${pageScope.result3} <br><br>

	  <%--
	  	  주의사항2 : test속성에  EL ${}가 아닌 문자열 "tRuE"는 대소문자 관계 없이 항상 true를 반환해서 result4변수에 저장
				   그리고 scope="page"으로 인한 page내장객체 영역에 result4가 바인딩 됩니다.
	   --%>
	   <c:if test="tRuE" var="result4" scope="page">
	   	
	   		대소문자 구분 없이 "tRuE"문자열을 test속성에 조건식 대신 작성 하면  true를 반환합니다 <br>
	   	
	   </c:if>
	
	   result4 : ${pageScope.result4} <br><br>
	   
	   <%-- 
	   	   주의사항3 : test속성에 EL ${ }태그를 통해 조건식을 작성할 때  EL태그 내부에 바깥 양쪽 공백이 하나라도 삽입 되면 무조건 false를 반환합니다.
	    			false는  result5변수에 저장되며, result5는 page내장객체 영역에 바인딩 됩니다.	
	    --%>
	   <c:if test="  ${true}  "  var="result5"  scope="page">
	   
	   		EL 바깥 양쪽에 공백이 있는 경우 test속성에 적은 조건식의 결과는 무조건 false를 반환합니다. <br>
	   
	   </c:if>
	   
	   result5 : ${pageScope.result5} <br>
	   
	   
	   
	



</body>
</html>















