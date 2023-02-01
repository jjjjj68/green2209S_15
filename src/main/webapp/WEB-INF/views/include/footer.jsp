<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>footer.jsp</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<style>
	a {
    color: #45464b;
    text-decoration: none;
	}
	ul li {
		list-style-type: none;
		float: left;
	}
	#footer .footer_top {
    padding: 35px 0 ;
    background-color: #35373e;
    width: 100%;
	}
	#footer .footer_top li {
		list-style: none;
	}
	#footer .inner {
    position: relative;
    max-width: 1200px;
    margin: 0 auto;
	}
	#footer .foot_menu {
    float: left;
    padding-top: 10px;
	}
	#footer .foot_menu > ul {
		list-style:none;
	}
	#footer .foot_menu > li > a {
    display: block;
    padding: 1px 15px;
    font-size: 15px;
    color: #fff;
    line-height: 1;
    text-align: center;
	}
	#footer .family_site {
    float: right;
    list-style:none;
	}
	#footer .family_site .con_site .tit_site {
    display: block;
    position: relative;
    width: 200px;
    height: 40px;
    padding: 0 15px;
    color: #fff;
    line-height: 38px;
    border: 1px solid #9698a4;
	}
</style>
<body>
<p><br/></p>
<div class="container">
	<div id="footer">
		<div class="footer_top">
			<div class="inner">
				<ul class="foot_menu">
					<li>
						<a href="" target="_blank" title="새창"><font color="#F29600"><b>개인정보처리방침</b></font></a>
					</li>
					<li>
						<a href="" target="_blank" title="새창">이용약관</a>
					</li>
					<li>
						<a href="" target="_blank" title="새창">찾아오시는길</a>
					</li>
				</ul>
				<div class="family_site">
					<div class="con_site">
						<a href="#none" class="tit_site">패밀리사이트</a>
						<ul class="list_site">
							<li><a href="" target="_blank" title="새창">한국체육산업개발㈜</a></li>
						</ul>
					</div>
					<div class="con_site">
						<a href="#none" class="tit_site">관련사이트</a>
						<ul class="list_site">
							<li><a href="" target="_blank" title="새창">국민체육진흥공단</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //footer  -->
	
</div>
<p><br/></p>
</body>
</html>