<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<html>
<head>
   <!-- title -->
		<title>그린테니스장 예약사이트</title>
		<!-- //title -->
</head>
<style>
	html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6,
p, blockquote, pre, abbr, address, cite, code, del, dfn, em,
img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i,
dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, 
article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {margin:0; padding:0;}
	html, body {
	    font-family: Verdana,sans-serif;
	    font-size: 15px;
	    line-height: 1.5;
	}
	.info_area01 .info_con01, .info_area01 .info_con02, .info_area01 .info_con03 {
    position: relative;
    width: 49%;
	}

	.info_area01 {
    padding: 100px 0;
	}
	.inner01 {
    position: relative;
    max-width: 1200px;
    margin: 0 auto;
	}
	
	.info_con01 {
		background-color: rgb(205,244,226);
	}
	.info_area01 .info_con01 {
    float: left;
    height: 444px;
    padding: 46px 0 0 50px;
	}
	.info_area01 .info_con01 .tit_type01 {
    font-size: 36px;
    font-weight: 400;
    color: #333;
    line-height: 1.2;
	}
	.info_area01 .info_con01 .btn_app {
    display: inline-block;
    position: relative;
    float : right;
    width: 189px;
    height: 70px;
    margin-top: 130px;
    margin-right : 40px;
    padding: 0 29px;
    font-size: 18px;
    font-weight: 700;
    color: #303037;
    line-height: 70px;
    border: 2px solid #303037;
	}
	img {
		max-width: 100%;
    vertical-align: top;
    overflow-clip-margin: content-box;
    overflow: clip;	
	}
	img, fieldset, iframe {
		border:none;
	}
	 
	.info_area01 .info_con02 {
    margin-bottom: 24px;
    border: 1px solid #e5e8ed;
	}
	.info_area01 .info_con02, .info_area01 .info_con03 {
    float: right;
    height: 210px;
    padding: 50px 0 0 40px;
	}
	.info_area01 .info_con02 .tit_type01, .info_area01 .info_con03 .tit_type01 {
    padding-bottom: 28px;
    font-size: 24px;
    font-weight: 700;
    color: #333;
    line-height: 1;
	}
	.info_area01 .con_more {
    display: block;
    position: absolute;
    top: 40px;
    right: 43px;
    padding-right: 16px;
    font-size: 16px;
    line-height: 1;
	}
	
	.info_area01 .info_con03 {
    background-color: #eff3f6;
	}
	.info_con03 {
    float: right;
    height: 210px;
    padding: 50px 0 0 40px;
	}
	.info_area01 .info_con03 .txt {
    font-size: 18px;
    color: #222;
	}
	.info_area02 {
		width:100%;
    height: 600px;
    margin-top : 450px;
    background: url(resources/images/bottom1.jpg) center top;
    background-size:cover;
	}
/* .info_area02 .tit_type01 {padding-top:5%; font-size:36px; font-weight:700; color:#fff; line-height:1;} */
	.info_area02 .tit_type01 {
    padding-top: 5%;
    font-size: 36px;
    font-weight: 700;
    color: #242526;
    line-height: 1;
	}
/* .info_area02 .con_txt {padding:2.5% 0 3%;font-size:22px; color:#fff;} */
	.info_area02 .con_txt {
    padding: 2.5% 0 3%;
    font-size: 22px;
    color: #242526;
    font-weight: 400;
	}
/* .info_area02 .btn_info {display:block; position:relative; width:226px; height:70px; padding:0 30px; font-size:18px; font-weight:700; color:#fff; line-height:66px; border:2px solid #fff;} */
	.info_area02 .btn_info {
    display: block;
    position: relative;
    width: 226px;
    height: 70px;
    padding: 0 30px;
    font-size: 18px;
    font-weight: 700;
    color: #242526;
    line-height: 66px;
    border: 2px solid #242526;
	}
	.page_top {
    display: block;
    position: fixed;
    right: 20px;
    bottom: 10px;
    z-index: 999;
    height: 33px;
    padding: 0 10px;
    border-radius: 3px;
    background: #3b3a40;
    color: #fff;
    line-height: 33px;
    text-align: center;
}
	.tit_type01 strong {
		content: ' \261E';
	}
	.info_area02 .info_con {
		padding-top: 80px;
		padding-left: 230px;
	}
	
</style>

<body>
	<!-- container -->
	<div id="container">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- 슬라이드 쇼 -->
		<jsp:include page="/WEB-INF/views/include/slide.jsp" />
		<!-- 내비바 -->
		<jsp:include page="/WEB-INF/views/include/nav.jsp" />
		<!-- content -->
		<div id="content">
						<div class="info_area01">
				<div class="inner01">
					<div class="info_con01">
						<h2 class="tit_type01">그린<br>테니스장<br><strong>예약신청 </strong></h2>
						<a href="./resrvtn_aplictn.do" class="btn_app">예약신청 ▷</a>
						<!-- <span class="img"><img src="resources/images/player1.png" ></span> -->
					</div>
					<div class="info_con02">
						<h2 class="tit_type01">공지사항</h2>
						<ul class="notice">
							<li>
								<a href="">
									테니스 대회 안내 (2023 데이비스컵) 
								</a>
							</li>
							<br/>
							<li>
								<a href="">
									테니스장 무단 사용 금지 안내 
								</a>
							</li>
						</ul>
						<a href="./notice_list.do?type_gbn=01" class="con_more" title="공지사항 더보기">더보기</a>
					</div>
					<div class="info_con03">
						<h2 class="tit_type01">고객센터 안내</h2>
						<p class="txt">그린테니스장 <strong>00-0000-0000</strong></p>
					</div>
				</div>
			</div>
			<!-- // -->

			<!-- 예약 신청 안내 -->
			<div class="info_area02">
				<div class="inner">
					<div class="info_con">
						<h2 class="tit_type01">예약신청 안내</h2>
						<p class="con_txt">예약신청이 어려 우신가요? <br>안내 페이지에서 자세하게 설명 드립니다.</p>
						<a href="./aplictn_guide.do" class="btn_info">신청방법 안내</a>
					</div>
				</div>
			</div>
			<!-- //예약 신청 안내 -->

			<!-- page top -->
			<a href="#none" class="page_top">TOP</a>
			<!-- //page top -->
			</div>
		</div>
		<!-- //content -->
		
		<!-- footer -->
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
		<!-- //footer -->
		
</body>
</html>