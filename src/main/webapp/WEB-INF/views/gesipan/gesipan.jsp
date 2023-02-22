<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>그린테니스장 게시판</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>

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
	<span style="float: right; color: #45464b;">게 시 판</span>
	<span style="float: right; ">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</span>
	<span style="float: right; color: #45464b;">그린 테니스장</span>
	<span style="float: right; ">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</span>
	<span style="float: right;  font-weight: bold;"><img src="${ctp}/images/home10.png" style=" width: 20px;height: 20px;"></span>
	<h2 style="text-align: center; font-size: 52px;font-weight: bolder; padding-left:180px;  margin-bottom: 2.5rem;">게 시 판</h2>
</div>
<div class="container text-center">
	<table>
		<tr>
			<td class="text-left p-0" style="float: left;">
     		<a href="${ctp}/gesipan/input" class="btn btn-secondary btn-sm">글쓰기</a>
   		</td>		
		</tr>
	</table>
  <form name="searchForm" method="post" <%-- action="${ctp}/boSearch.bo"  --%> style="margin-bottom: 30px; float: right;">
    <select id="search">
      <option value="title">글제목</option>
      <option value="mid">글쓴이</option>
      <option value="content">글내용</option>
    </select>
    <input type="text" name="searchString" id="searchString" title="검색어 입력" placeholder="검색어 키워드를 입력해주세요"/>
    <input type="button"  value="검색" onclick="searchCheck()" id="searchbnt" />
    <input type="hidden" name="pag" value="${pag}"/>
		<input type="hidden" name="pageSize" value="${pageSize}"/>
  </form>
</div>
<form name="myform">
	<div>
		<table class="" style="width: 100%">
	    <tr class="top">
	      <th>글번호</th>
	      <th>글제목</th>
	      <th>글쓴이</th>
	      <th>글쓴날짜</th>
	    </tr>
	    <c:set var="curScrStartNo" value="${pageVo.curScrStartNo}"/>
	    <c:forEach var="vo" items="${vos}">
		   	<tr><!-- 한번 다른데 페이징 한거에서는 페이지 처리를 어디서 해줬는지 봐바바 너가 5만 출력하게 한거아냐 ? 아니지-->
			   	<td>${curScrStartNo}</td>
			   	<td class="text-left">
	    	    <a href="${ctp}/gesipan/content" >${vo.title}</a>
    	  	</td>
		      <td>${vo.mid}</td>
    	  	<td>${fn:substring(vo.WDate,0,10)}</td>
		   	</tr>
	   	</c:forEach>
		</table>
	</div>
</form>
<p><br/></p>

<!-- 블록 페이지 시작 -->
<div class="text-center">
  <ul class="pagination justify-content-center">
    <c:forEach var="i" begin="${(curBlock)*pageVo.blockSize + 1}" end="${(pageVo.curBlock)*pageVo.blockSize + pageVo.blockSize}" varStatus="st">
      <c:if test="${i <= pageVo.totPage && i == pageVo.pag}">
    		<li class="page-item active"><a class="page-link bg-secondary border-secondary" href="${ctp}gesipan/gesipan?pageSize=${pageVo.pageSize}&pag=${i}">${i}</a></li>
    	</c:if>
      <c:if test="${i <= pageVo.totPage && i != pageVo.pag}">
    		<li class="page-item"><a class="page-link text-secondary" href="${ctp}gesipan/gesipan?pageSize=${pageVo.pageSize}&pag=${i}">${i}</a></li>
    	</c:if>
    </c:forEach>
  </ul>
</div>
<!-- 블록 페이지 끝 -->




<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>