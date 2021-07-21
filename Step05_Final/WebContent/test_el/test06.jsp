<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cook=new Cookie("saveId", "kimbura");
	cook.setMaxAge(60);
	response.addCookie(cook);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test_el/test06.jsp</title>
</head>
<body>
	<h1>쿠키에 저장된 내용 EL로 추출할 수 있다.</h1>
	<p>saveId 라는 키값으로 60초 동안 유지되는 쿠키를 응답했습니다.</p>
	<a href="test07.jsp">쿠키값 확인하기</a>
</body>
</html>