<%@page import="sec01.ex01.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//흐름  :  memberForm.html 입력한 가입정보들   member4.jsp로 전달-> 
//		 MemberVO객체의 변수에 저장  ->  
//		 MemberVO객체 를 ArrayList배열에 저장 ->
//		 ArrayList배열에 저장된 MemberVO객체를 다시 얻고 ->
//		 MembeVO객체의 변수 정보를 EL태그를 사용해서 각각 얻어 출력

	/*
           순서1. 입력한 가입 정보 중 한글문자 하나라도 존재하면  request 내장객체 메모리 영역에서 
                      입력해서 요청한 한글문자가 깨진 상태로 꺼내와 지므로 
                     컴퓨터가 한글 문자를 처리할수 있는 방식(인코딩 방식)의 값을 UTF-8(전세계 문자처리방식의값)으로 설정
	*/
	request.setCharacterEncoding("UTF-8");
%>        
	<%-- 순서2. 순서3. memberForm.html에 입력한 요청 데이터들을 request 내장객체 메모리 영역에서 얻어 MemberVO객체 생성 후 각변수에 저장 --%>
	<jsp:useBean  id="vo1"  class="sec01.ex01.MemberVO"   /> <%--   <- MemberVO객체 생성후 참조변수 vo에 저장  --%>
	<jsp:setProperty   name="vo1"  property="*"  />          <%--   <- 생성한 MemberVO객체의 모든 setter메소드 호출해 입력한 정보들 모든 변수에 저장    --%>
	
	<jsp:useBean  id="membersList" class="java.util.ArrayList" />
<%
	//2번째 MemberVO클래스의 객체 생성
	MemberVO vo2 = new MemberVO("son","1234","손흥민","son@test.com");

	//위 두개의 MemberVO객체들을 ArrayList 배열에 추가 해서 저장
	membersList.add(vo1);     membersList.add(vo2);

	/*
		ArrayList membersList 배열 모습
		
		[  MemberVO첫번째객체  ,  MemberVO두번째객체   ]  
				0                 1                index		
	*/
%>	
	<table width="100%" align="center">
		<tr align="center" bgcolor="pink">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
		</tr>
<!-- 
	ArrayList membersList 배열 모습
		
		[  MemberVO첫번째객체  ,  MemberVO두번째객체   ]  
				0                 1                index	

	위 ArrayList 배열의 첫번째 칸(0 index위치 칸)에 저장되어 있는 MemberVO객체의 각변수값들을 최종 얻어 EL태그로 출력 
	
		작성방법 ->  ${컬렉션가변배열[index].꺼내온MemberVO객체의변수명 }
 -->
 		<tr align="center">
 			<td>${membersList[0].id}</td> <%-- <td>${MemberVO첫번쨰객체.id}</td> --%>			
 			<td>${membersList[0].pwd}</td>
 			<td>${membersList[0].name}</td>
 			<td>${membersList[0].email}</td> 		
 		</tr>
<!-- 
	ArrayList membersList 배열 모습
		
		[  MemberVO첫번째객체  ,  MemberVO두번째객체   ]  
				0                 1                index	

	위 ArrayList 배열의 두번째 칸(1 index위치 칸)에 저장되어 있는 MemberVO객체의 각변수값들을 최종 얻어 EL태그로 출력 
	
		작성방법 ->  ${컬렉션가변배열[index].꺼내온MemberVO객체의변수명 }
 -->
 		<tr align="center">
 			<td>${membersList[1].id}</td> <%-- <td>${MemberVO두번쨰객체.id}</td> --%>			
 			<td>${membersList[1].pwd}</td>
 			<td>${membersList[1].name}</td>
 			<td>${membersList[1].email}</td> 		
 		</tr>

		<tr height="1" bgcolor="pink">
			<td colspan="5"></td>
		</tr>			
	</table>











