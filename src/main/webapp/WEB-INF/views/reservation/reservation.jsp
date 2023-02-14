<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>reservation</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<style>
	.today_after {
		border-bottom: 2px solid #000 ;
		width:50%; 
		margin: auto; 
		display: block; 
		text-align: center; 
		margin-bottom:30px;
		padding-top: 30px;
	}
</style>
<script>

</script>

<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<jsp:include page="/WEB-INF/views/include/slide.jsp" />
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<span style="float: right; ">일일입장 예약신청</span>
	<span style="float: right;  font-weight: 40px;"><img src="${ctp}/images/home10.png" style=" width: 20px;height: 20px;">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp; </span>
	<h2 style="text-align: center; font-size: 52px;font-weight: bolder; padding-left:75px;  margin-bottom: 2.5rem;">일일입장 예약신청</h2>
</div>

<form class="myform">
	<div class="" style="background : #F5F5F5; width: 1100px; height: 590px; margin: auto; text-align: right;">
	<div class="today_after" style="font-size: 20px; color: #222;">
		${today} ~ ${afterDate}
	</div>
		<table class="table table-bordered" style="padding: 30px 60px;">
			<tr class="" >
				<th style="width:13%; color:red; vertical-align:middle">일</th>
        <th style="width:13%; vertical-align:middle">월</th>
        <th style="width:13%; vertical-align:middle">화</th>
        <th style="width:13%; vertical-align:middle">수</th>
        <th style="width:13%; vertical-align:middle">목</th>
        <th style="width:13%; vertical-align:middle">금</th>
        <th style="width:13%; color:blue; vertical-align:middle">토</th>
			</tr>
				<c:set var="cnt" value="${1}" />
				<c:forEach var="preDay" begin="${preLastDay - (startWeek-2)}" end="${preLastDay}"  varStatus="status">
					t
				</c:forEach>
				
		</table>
	</div>

</form>

<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>

</html>