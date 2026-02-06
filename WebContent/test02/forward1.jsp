<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
    request.setCharacterEncoding("UTF-8");
    
    request.setAttribute("id", "hong");
    request.setAttribute("pwd", "1234");
    session.setAttribute("name", "홍길동");
    application.setAttribute("email", "hong@test.com");
    RequestDispatcher dispatcher = request.getRequestDispatcher("member1.jsp");
    dispatcher.forward(request, response);
    %>