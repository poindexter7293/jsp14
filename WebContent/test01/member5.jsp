<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="sec01.ex01.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	/*
           순서1. 입력한 가입 정보 중 한글문자 하나라도 존재하면  request 내장객체 메모리 영역에서 
                      입력해서 요청한 한글문자가 깨진 상태로 꺼내와 지므로 
                     컴퓨터가 한글 문자를 처리할수 있는 방식(인코딩 방식)의 값을 UTF-8(전세계 문자처리방식의값)으로 설정
	*/
	request.setCharacterEncoding("UTF-8");

	/* 순서2. HashMap 클래스의 객체 생성*/
	HashMap   membersMap =  new HashMap();
	
	/* 순서3. HashMap객체에 key,value 한쌍의 형태로 묶은 데이터를 저장 */
	membersMap.put("id", "park2");
	membersMap.put("pwd", "4321");
	membersMap.put("name", "박지성");
	membersMap.put("email", "park2@test.com");
	/*
	-----------------------------------HashMap----------------------------------
    key들   value들 
	("id", "park2")
	("pwd", "4321")
	("name", "박지성")
	("email", "park2@test.com")
	-----------------------------------------------------------
	*/
%>        
	<%-- 순서4. 순서5. memberForm.html에 입력한 요청 데이터들을 request 내장객체 메모리 영역에서 얻어 MemberVO객체 생성 후 각변수에 저장 --%>
	<jsp:useBean  id="vo1"  class="sec01.ex01.MemberVO"   /> <%--   <- MemberVO객체 생성후 참조변수 vo에 저장  --%>
	<jsp:setProperty   name="vo1"  property="*"  />          <%--   <- 생성한 MemberVO객체의 모든 setter메소드 호출해 입력한 정보들 모든 변수에 저장    --%>
	
<%
	//순서6. 2번째 MemberVO클래스의 객체 생성
	MemberVO vo2 = new MemberVO("son","1234","손흥민","son@test.com");

	/*순서7. ArrayList클래스의 배열 객체 메모리 생성 */
	ArrayList  membersList = new ArrayList();

	//위 두개의 MemberVO객체들을 ArrayList 배열에 추가 해서 저장
	membersList.add(vo1);     membersList.add(vo2);

	//추가로~~  HashMap내부에 ArrayList배열 추가!
	membersMap.put("ArrayList", membersList);	
	/*
				ArrayList membersList 배열 모습
		
		[  MemberVO첫번째객체  ,  MemberVO두번째객체   ]  
				0                 1                index	
								
		-----------------------------------HashMap 배열 모습----------------------------------
	    key들   value들 
	    
		("id", "park2")
		("pwd", "4321")
		("name", "박지성")
		("email", "park2@test.com")
		 
		("ArrayList",  new ArrayList())		<-----  마지막에 추가 
							|
							|	             입력한 정보			손흥민 정보 
						    ----> [ new MemberVO(),   new MemberVO() ]
						    		      0                 1             index
		-----------------------------------------------------------------------------------		
		
		
		참고.  위 HashMap 배열 모습에서  입력한 정보 (new MemberVO())를 얻어 ${}로 출력하기 위한 작성 방법
			
						${membersMap.ArrayList}
			->			${     new ArrayList()}
						
						${membersMap.ArrayList[0]}
			->			${			new MemberVO()}
						
						${membersMap.ArrayList[0].얻어서출력할인스턴스변수명}
			->			${membersMap.ArrayList[0].id}
						
			->			${new MemberVO()객체의 id인스턴스변수에 저장된 입력한 아이디값을 얻어 이자리에 출력}
										
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
		-----------------------------------HashMap 배열 모습----------------------------------
	    key들   value들 
	    
		("id", "park2")
		("pwd", "4321")
		("name", "박지성")
		("email", "park2@test.com")		 여기까지만 얻어 출력 
		....
		----------------------------------------------------------------------------------
 -->			
		<tr align="center">
			<td>${membersMap.id}</td>  <!-- ${해쉬맵.key} -->
			<td>${membersMap.pwd}</td>
			<td>${membersMap.name}</td>
			<td>${membersMap.email}</td>		
		</tr>
<!-- 
		-----------------------------------HashMap 배열 모습----------------------------------
	    key들   value들 
	    
		("id", "park2")
		("pwd", "4321")
		("name", "박지성")
		("email", "park2@test.com")
		 
		("ArrayList",  new ArrayList())		<-----  마지막에 추가 
							|
							|	             입력한 정보			손흥민 정보 
						    ---- [ new MemberVO(),   new MemberVO() ]
						    		      0                 1             index    
		-----------------------------------------------------------------------------------		
 
 	설명 : HashMap에 저장된 ArrayList배열(value)을 얻고  
 		 얻은 ArrayList배열의 0 index 위치 칸에 저장된    입력한 정보들이 저장되어 있는 new MemberVO()객체를 얻습니다.
 		 마지막으로 얻은 new MemberVO()객체의 각 인스턴스변수에 저장된 입력한정보들을 얻어 EL태그로 브라우저에 출력 
 -->		
 	   <tr align="center">
 	   		<td>${membersMap.ArrayList[0].id}</td>   <!-- ${해쉬맵.key[index].인스턴스변수명} -->
 	   		<td>${membersMap.ArrayList[0].pwd}</td>
 	   		<td>${membersMap.ArrayList[0].name}</td>
 	   		<td>${membersMap.ArrayList[0].email}</td> 	   
 	   </tr>
<!-- 		
 	설명 : HashMap에 저장된 ArrayList배열(value)을 얻고  
 		 얻은 ArrayList배열의  1 index 위치 칸에 저장된    손흥민 정보들이 저장되어 있는 new MemberVO()객체를 얻습니다.
 		 마지막으로 얻은 new MemberVO()객체의 각 인스턴스변수에 저장된 입력한정보들을 얻어 EL태그로 브라우저에 출력 
 -->		
 	   <tr align="center">
 	   		<td>${membersMap.ArrayList[1].id}</td>   <!-- ${해쉬맵.key[index].인스턴스변수명} -->
 	   		<td>${membersMap.ArrayList[1].pwd}</td>
 	   		<td>${membersMap.ArrayList[1].name}</td>
 	   		<td>${membersMap.ArrayList[1].email}</td> 	   
 	   </tr>		
		

		<tr height="1" bgcolor="pink">
			<td colspan="5"></td>
		</tr>			
	</table>











