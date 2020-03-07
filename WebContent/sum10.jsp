<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 언어는 자바, 브라우저에게 알려줄 출력 타입은 html, 인코딩은 UTF8 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int total = 0;
	for(int i=1; i<=10; i++){
		total = total + 1;
	}
%>

1부터 10까지의 합 : <%=total %>

</body>
</html>