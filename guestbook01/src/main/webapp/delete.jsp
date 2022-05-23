<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String num = request.getParameter("no");
	long no = Long.parseLong(num);
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(password);
	
	boolean result = new GuestbookDao().delete(vo);
	
	if(result) {
		response.sendRedirect("/guestbook01");
	} else { %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호가 일치하지 않습니다.</h1>
	<br/>
	<a href="/guestbook01">목록으로 가기</a>
</body>
</html>
<%
	}
%>