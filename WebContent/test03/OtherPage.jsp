<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h4>/test3/OtherPage.jps</h4>

<ul>
  <li> 
  redirectTest.jsp를 클라이언트가 최초요청했을 때 톰캣에 의해 생성된 request내장객체 메모리에 바인딩되어있는 requestVar변수의 값:
  ${requestScope.requestVar}<br>
  </li>
  <li>c:redirect 태그로 재요청시 전달받은 값 1: ${param.user_param1}</li>
  <li>c:redirect 태그로 재요청시 전달받은 값 1: ${param.user_param2}</li>
</ul>
