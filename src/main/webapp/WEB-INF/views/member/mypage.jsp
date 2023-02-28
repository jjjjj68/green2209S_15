<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<jsp:include page="/WEB-INF/views/include/slide.jsp" />
<p><br/></p>
<div class="container">
<form name="myform" method="post" action="${ctp}/member/memberUpdateOk" class="was-validated" enctype="Multipart/form-data">
    <h2>회 원 정 보 수 정</h2>
    <div><font color="blue"></font></div>
    <br/>
    <div class="form-group">
      아이디 : ${sMid}
    </div>
    <div class="form-group">
      이름 : ${vo.name}
    </div>
    <div class="form-group">
      휴대전화 : ${vo.tel}
    </div>
    <div class="form-group">
      이메일 : ${vo.email}
    </div>
    
    
    <button type="button" class="btn btn-secondary" onclick="fCheck()">회원정보수정</button> &nbsp;
    <button type="reset" class="btn btn-secondary">다시작성</button> &nbsp;
    <button type="button" class="btn btn-secondary" onclick="location.href='${ctp}/member/memberMain';">돌아가기</button>
    <input type="hidden" name="email"/>
    <input type="hidden" name="tel"/>
    <input type="hidden" name="mid" value="${sMid}"/>
    <input type="hidden" name="name" />
  </form>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>