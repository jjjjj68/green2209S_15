<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>reservation</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<jsp:include page="/WEB-INF/views/include/slide.jsp" />
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<span style="float: right; ">일일입장 예약신청</span>
	<span style="float: right;  font-weight: 40px;"><img src="${ctp}/images/home10.png" style=" width: 20px;height: 20px;">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp; </span>
	<h2 style="text-align: center; font-size: 52px;font-weight: bolder; padding-left:75px;  margin-bottom: 2.5rem;">일일입장 예약신청</h2>
	<div class="maincho">
		<h3 style="height: 50px; padding: 18px 0; font-size: 25px; line-height: 1; text-align: center;border: 1px solid #a6a6a6;">예약방법선택</h3><a href="" style="display:inline-block; position: absolute; color: transparent;">닫기</a>
	</div>
	<div class="mcho" style="border: 1px solid #a6a6a6;" >
		<div class="form-group" style="text-align: center; float: none;">
			<span>
				<input type="radio" id="day" name="reservation" value="A" >
				<label for="day" style="padding-right: 100px; font-size: 20px">날짜별</label>
			</span>
			<span>
				<input type="radio" id="coat" name="reservation" value="B">
				<label for="day" style="font-size: 20px; ">코트별</label>
			</span>
		</div>
	</div>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>