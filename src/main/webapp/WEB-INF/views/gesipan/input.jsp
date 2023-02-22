<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>그린테니스장 게시판</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<script>
	'use strict';
	function fCheck() {
		let title = myform.title.value;
		let content = myform.content.value;
		
		if(title.trim() == "") {
			alert("게시글 제목을 입력하세요");
			myform.title.focus();
		}
		else {
			myform.submit();
		}
	}
</script>
<style>
	.top {
		background-color: #F5F5F5;
		color: #45464B;
	}
	#searchString {
		display: inline-block;
    height: 50px;
    padding: 0 0 0 9px;
    font-size: 18px;
    line-height: 48px;
    border: 1px solid #dbe0e2;
    background: #fff;
    vertical-align: middle;
	}
	#searchbnt {
		display: inline-block;
    width: 100px;
    height: 50px;
    padding: 15px 0;
    font-size: 17px;
    color: #fff;
    line-height: 1;
    text-align: center;
    background-color: #454545;
	}
	#search {
		display: inline-block;
    position: relative;
    height: 50px;
    padding: 7px 15px 7px 7px;
    font-size: 18px;
    color: #313133;
    line-height: 1;
    border: 1px solid #dbe0e2;
    background: no-repeat 100% 50% #fff;
    cursor: pointer;
    vertical-align: middle;
	}
</style>

<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<jsp:include page="/WEB-INF/views/include/slide.jsp" />
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2 style="text-align: center; font-size: 52px;font-weight: bolder;   margin-bottom: 2.5rem;">게시판 글쓰기</h2>
</div>
<div class="container text-center">
	<form name="myform" method="post">
    <h2 class="text-center">게시판 글쓰기</h2>
    <br/>
    <table class="table table-bordered">
      <tr>
        <th>글쓴이</th>
        <td>${sMid}</td>
      </tr>
      <tr>
        <th>글제목</th>
        <td><input type="text" name="title" placeholder="글제목을 입력하세요" autofocus required class="form-control"/></td>
      </tr>
      <tr>
        <th>글내용</th>
        <td><textarea rows="6" name="content" id="CKEDITOR" class="form-control" placeholder="내용을 입력하세요" required></textarea></td>
      </tr>
      <tr>
        <td colspan="2" class="text-center">
          <input type="button" value="글올리기" onclick="fCheck()" class="btn btn-success"/> &nbsp;
          <input type="reset" value="다시입력" class="btn btn-warning"/> &nbsp;
          <input type="button" value="돌아가기" onclick="history.go(-1)" class="btn btn-secondary"/>
        </td>
      </tr>
    </table>
    <input type="hidden" name="mid" value="${sMid}"/>
  </form>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>