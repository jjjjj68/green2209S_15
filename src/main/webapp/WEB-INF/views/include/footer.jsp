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
    padding: 20px;
    padding-bottom : 30px;
    background-color: #35373e;
	}
	#footer .footer_top li {
		list-style: none;
	}
	#footer .inner {
    position: relative;
    max-width: 1200px;
    margin-bottom: 20px;
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
			</div>
		</div>
	</div>
	<!-- //footer  -->
</div>
<p><br/></p>
</body>
</html>