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
   #header .logo_sub {   /* 그린테니스장 */
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
   #header .gnb ul {   /* 상단 빠르게가기 아이콘들 */
    display: block;
    float: right;
    list-style:none;
    margin-block-start: 5.5em;
    margin-block-end: 2em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 20px;
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
   }
   #header .gnb ul > li { /* 아이콘들 사이간격 위치 */
    float: left;
    padding: 0 15px;
   }
   #header .gnb ul > li > a > img { /* 메인으로 아이콘 크기 위치 */
      width:30px; 
      height:30px;
      transform: translate(0 , -100%)
   }
   #header .gnb ul > li > a > .homeSub {	/* 메인으로 글씨 위치 */
      position:absolute;
      bottom:0;
      left:50%;
      white-space:nowrap;
      transform: translate(-50%, 0)
   }
   #header .gnb ul > li > a > .sub {	/* 글씨 위치 */
      position:absolute;
      bottom:0;
      left:50%;
      white-space:nowrap;
      transform: translate(-50%, 0)
   }
</style>
<body>
<!-- header -->
<div>
   <div id="header">
      <div class="top_area">
         <!-- 로고(그림,그린테니스장) -->
         <div class="logo_area">
            <a href="http://localhost:9090/green2209S_15" class="logo_main m-0 p-0"><img src="${ctp}/images/headerLogo.PNG" style="width:100px; height:100px"></a>
            <a href="http://localhost:9090/green2209S_15"class="logo_sub m-0 p-0">그린테니스장</a>
         </div>
         <div class="inner">
            <div class="gnb">
             <ul>
                <li><a href="" class="home" style="color: #0089ff;" target="_blank"><img src="${ctp}/images/home1.png" ><span class="homeSub">메인으로</span></a></li>
                <li><a href="" ><img src="${ctp}/images/shopping.png" ><span class="sub">결제바구니</span></a></li>
                <li><a href="" ><img src="${ctp}/images/history.png" ><span class="sub">신청내역</span></a></li>
                <li><a href="" ><img src="${ctp}/images/join.png" ><span class="sub">회원가입</span></a></li>
                <li><a href="${ctp}/member/login"><img src="${ctp}/images/login1.png" ><span class="sub">로 그 인</span></a></li>
             </ul>
            </div>
         </div>
      </div>
   </div>
</div>

</body>
</html>