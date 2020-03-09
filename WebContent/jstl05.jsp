<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="http://localhost:8080/firstweb/jstlValue.jsp" var="urlValue" scope = "request"></c:import> 
<%-- <c:import url="https://www.naver.com/" var="urlValue" scope = "request"></c:import>--%> <%--이렇게 외부 url도 가능 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${urlValue }
</body>
</html>

