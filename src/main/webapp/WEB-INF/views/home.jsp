<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<html>
<head>
   <title>Home</title>
</head>
<body>
	<form name="myform">
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
	</form>
</body>
</html>