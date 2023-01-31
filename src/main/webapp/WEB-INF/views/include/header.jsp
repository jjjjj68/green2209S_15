<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>header.jsp</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<style>
	#header .top_area { /* 전체 틀 */
		position: relative;
		max-width: 1280px;
		margin: 0 auto;
	}
	
	#header .logo_area { /* 로고그림,그린테니스장 묶음 */
    position: absolute;
    top: 48px;
    left: 0;
    z-index: 30;
	}
	#header .logo_main { /* 로고 그림 */
		float:left;
	}
	#header .logo_sub {	/* 그린테니스장 */
		float:left;
		display: inline-block;
		position: relative;
		top: 39px;
		font-size: 24px;
		font-weight: 700;
		color: #008200;
		line-height: 1;
		vertical-align: top;
		text-decoration: none;
	}
	
	#header .top_menu { /* 상단 로그인 회원가입 */
		float:right;
		color: #45464b;
		height:69px;
		padding-top:30px; /* 위어래 수정할것 */
		list-style:none;
		text-decoration: none;
	}
	
	#header .gnb ul > li > a {
    display: block;
    position: relative;
    height: 45px;
    padding-top: 30px;
    font-size: 13px;
    font-weight: 700;
    line-height: 1;
    color: #222;
    text-decoration: none;
	}

	#header .gnb ul {	/* 상단 빠르게가기 아이콘들 */
		float: right;
    padding-right: 42px;
		list-style:none;
	}
	
	#header .gnb ul > li { /* 아이콘들 사이간격 위치 */
    float: left;
    padding: 0 19px;
	}
	
	
	
	#header .gnb ul > li > a > img {
		width:30px; 
		height:30px;
		transform: translate(0 , -100%)
	}
	
	#header .gnb ul > li > a > .homeSub {
		position:absolute;
		bottom:0;
		left:50%;
		white-space:nowrap;
		transform: translate(-50%, 0)
	}
	#header .gnb ul > li > a > .shopingSub {
		position:absolute;
		bottom:0;
		left:50%;
		white-space:nowrap;
		transform: translate(-50%, 0)
	}
	#header .gnb ul > li > a > .historySub {
		position:absolute;
		bottom:0;
		left:50%;
		white-space:nowrap;
		transform: translate(-50%, 0)
	}
	#header .gnb ul > li > a > .hamburgerSub {
		position:absolute;
		bottom:0;
		left:50%;
		white-space:nowrap;
		transform: translate(-50%, 0)
	}
</style>
<body>
<!-- header -->
	<div id="header">
		<div class="top_area">
			<!-- 로고(그림,그린테니스장) -->
			<div class="logo_area">
				<a href="http://localhost:9090/green2209S_15" class="logo_main m-0 p-0"><img src="images/headerLogo.PNG" style="width:100px; height:100px"></a>
				<a href="http://localhost:9090/green2209S_15"class="logo_sub m-0 p-0">그린테니스장</a>
			</div>
			
			<!-- 상단 로그인 회원가입 -->
			<ul class="top_menu">
				<li>
					<a href="naver.com" style="color : #45464b; ">로그인</a>&nbsp;&nbsp;|&nbsp;
					<a href="" title="새창" style="color : #45464b; font-family: Verdana,sans-serif;">회원가입</a>
				</li>
			</ul>
			
			<div class="inner">
				<nav class="gnb">
					<ul>
						<!-- li class="mo"><a href="./login.do">로그인</a></li-->
						<!-- <li class="mo"><a href="">로그인</a></li> -->
						<li class="pc">
							<a href="" class="home" style="color: #0089ff;" target="_blank"><img src="images/home1.png" ><span class="homeSub">메인으로</span></a>
						</li>
						<li><a href="./basket_list.do" class="cart"><img src="images/shopping.png" ><span class="shopingSub">결제바구니</span></a></li>
						<li><a href="./aplictn_list.do" class="mypage"><img src="images/history.png" ><span class="historySub">신청내역</span></a></li>
						<li><a href="#allMenu" class="mo_allmenu"><img src="images/hamburger.png" ><span class="hamburgerSub">전체메뉴</span></a></li>
					</ul>
				</nav>
			</div>
			
		</div>
	</div>
</body>
</html>