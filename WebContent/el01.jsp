<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	pageContext.setAttribute("p1","page scope value"); //내장 객체를 사용하여 각 스코프에 변수를 만들어 넣어준다.
	request.setAttribute("r1", "request scope value");
	session.setAttribute("s1", "session scope value");
	application.setAttribute("a1", "application scope value");
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

- JSP로 출력하기 <br>
pageContext.getAttribute("p1") : <%=pageContext.getAttribute("p1") %> <br><br>

- EL 사용해서 출력하기 <br>
pageContext.getAttribute("p1") : ${pageScope.p1}<br>
request.getAttribute("r1") : ${requestScope.r1}<br>
session.getAttribute("s1") : ${sessionScope.s1}<br>
application.getAttribute("a1") : ${applicationScope.a1}<br><br>

- 아래와 같이 내장객체를 명시하지 않아도 출력가능 (단, 내장객체들의 맴버 변수명들이 중복되지 않는다는 조건하에) <br>
pageContext.getAttribute("p1") : ${p1}<br>
request.getAttribute("r1") : ${r1}<br>
session.getAttribute("s1") : ${s1}<br>
application.getAttribute("a1") : ${a1}<br>

</body>
</html>