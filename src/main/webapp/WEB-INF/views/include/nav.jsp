<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>nav.jsp</title>
   <jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<style>
	#nav {background-color:#0189ff;}
	#nav.fixed {position:fixed; top:0; left:0; right:0; z-index:100;}
	#nav .nav_menu {display:table; text-align:center; margin:0 auto;}
	#nav .nav_menu > li {display:table-cell; width:240px; text-align:center;}
	#nav .nav_menu > li > a {position:relative; display:block; font-size:20px; color:#cce1ff; text-align:center; line-height:90px; text-decoration: none;}
</style>
<body>
	<div id="nav">
		<div class="inner">
			<ul class="nav_menu">
				<li><a href="${ctp}/reservation/reservation">일일입장 예약신청</a></li>
				<li><a href="">신청방법안내</a></li>
				<li><a href="">시설이용안내</a></li>
				<li><a href="">오시는길</a></li>
			</ul>
		</div>
	</div>
</body>
</html>