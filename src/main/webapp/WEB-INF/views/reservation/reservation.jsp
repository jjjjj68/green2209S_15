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
  .tennis_court {
    background: url("https://www.ksponco.or.kr/online/images/content/img_tennis.jpg") no-repeat 10px 10px;
    width: 540px;
    height: 240px;
    border: 1px solid #d3d3d3;
    margin: auto;
    background-color: #fff;
	}
	.tennis_court {
	    padding-bottom: 50px;
	    text-align: center;
	}
	a {color: #45464b;text-decoration: none;}
	
	.court_list .t_list0 {position: absolute;top: 140px;left: 168px;}
	.court_list .t_list1 {position: absolute;top: 120px;left: 278px;}
	.court_list .t_list2 {position: absolute;top: 120px;left: 336px;}
	.court_list .t_list3 {position: absolute;top: 120px;left: 370px;}
	.court_list .t_list4 {position: absolute;top: 156px;left: 463px;}
	.court_list .t_list5 {position: absolute;top: 126px;left: 463px;}
	.court_list .t_list6 {position: absolute;top: 55px;left: 463px;}
	.court_list .t_list7 {position: absolute;top: 25px;left: 463px;}
	.court_list .t_list8 {position: absolute;top: 25px;left: 385px;}
	.court_list .t_list9 {position: absolute;top: 25px;left: 354px;}
	.court_list .t_list10 {position: absolute;top: 25px;left: 300px;}
	.court_list .t_list11 {position: absolute;top: 25px;left: 267px;}
	.court_list .t_list12 {position: absolute;top: 25px;left: 213px;}
	.court_list .t_list13 {position: absolute;top: 25px;left: 135px;}
	.court_list .t_list14 {position: absolute; top: 25px;left: 102px;}
	.court_list .t_list15 {position: absolute;top: 25px;left: 50px;}
	.court_list .t_list16 {position: absolute;top: 25px;left: 18px;}
	.court_list .t_list17 {position: absolute;top: 142px;left: 50px;}
	.court_list .t_list18 {position: absolute;top: 142px;left: 18px;}
	.court_txt {font-size: 1em;font-weight: bold;position: absolute;color: #ffffff;top: 2px;left: 3px; padding-top: 6px;padding-right: 10px;}
	
	.calendar_area {margin:40px 0 25px; }
	.label {display:block; width:110px; height:30px; margin:auto; padding:6px 0; font-size:15px; color:#009ce1; line-height:1; text-align:center; letter-spacing:-0.12em; border:1px solid #009ce1; background-color:#fff; border-radius:4px;}
	
	
	.imposi-e {     display: block;margin-top: 5px;margin-left:7.5px; width: 110px;height: 30px;padding: 6px 0;font-size: 15px;color: #ababab;line-height: 1;text-align: center;letter-spacing: -0.12em;border: 1px solid #ababab;background-color: #fff;border-radius: 4px;}
	.imposi-i {     display: block;margin-top: 5px; width: 110px;height: 30px;padding: 6px 0;font-size: 15px;color: #6f6f6f;line-height: 1;text-align: center;letter-spacing: -0.12em;border: 1px solid #6f6f6f;background-color: #fff;border-radius: 4px;}
	
	
	.tbl_calendar {table-layout:fixed; width:100%; border-top:1px solid #a6a6a6;}
	.tbl_calendar thead th {height:50px; padding:0 13px; font-size:18px; font-weight:400; color:#222; line-height:1; text-align:right; border-left:1px solid #a6a6a6; border-bottom:1px solid #a6a6a6;}
	.tbl_calendar thead th:first-child,
	.tbl_calendar tbody td:first-child {border-left:0;}
	.tbl_calendar tbody td {height:108px; padding:16px 14px; text-align:right; border-left:1px solid #a6a6a6; border-bottom:1px solid #a6a6a6; vertical-align:top;}
	.tbl_calendar .date {display:block; margin-bottom:30px; font-size:18px; color:#222;}
	.tbl_calendar .mo_th {display:none;}
</style>

<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<jsp:include page="/WEB-INF/views/include/slide.jsp" />
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<span style="float: right; ">일일입장 예약신청</span>
	<span style="float: right;  font-weight: bold;"><img src="${ctp}/images/home10.png" style=" width: 20px;height: 20px;">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp; </span>
	<p><br/></p>
	<h2 style="text-align: center; font-size: 52px;font-weight: bolder;  margin-bottom: 2.5rem;">일일입장 예약신청</h2>
</div>

<form class="myform">
	<div class="" style="background : #F5F5F5; width: 1100px; height: 590px; margin: auto; text-align: right;">
	<div class="today_after" style="font-size: 20px; color: #222;">
		${today} ~ ${afterDate}
	</div>
	<!-- 
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
			<tr>
			</tr>
		</table>
		 -->
		<table id="cal" class="tbl_calendar">
		  <caption>날짜 리스트</caption>
		  <colgroup>
		    <col style="width:15%;">
		    <col style="width:14%;">
		    <col style="width:14%;">
		    <col style="width:14%;">
		    <col style="width:14%;">
		    <col style="width:14%;">
		    <col style="width:15%;">
		  </colgroup>
		  <thead>
		    <tr>
		      <th scope="col">일</th>
		      <th scope="col">월</th>
		      <th scope="col">화</th>
		      <th scope="col">수</th>
		      <th scope="col">목</th>
		      <th scope="col">금</th>
		      <th scope="col">토</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr class="mo_th" >
		      <!-- <th scope="col" class="txt_red">12</th>
		      <th scope="col">13</th>
		      <th scope="col">14</th>
		      <th scope="col">15</th>
		      <th scope="col">16</th>
		      <th scope="col">17</th>
		      <th scope="col">18</th> -->
		    </tr>
		    <tr id="first_week">
		      <!-- <td><span class="date  txt_red">12</span><span></span><span></span></td>
		      <td><span class="date ">13</span><span></span><span></span></td>
		      <td><span class="date ">14</span><span></span><span></span></td>
		      <td><span class="date ">15</span><span></span><span></span></td>
		      <td><span class="date ">16</span><span></span><span></span></td>
		      <td><a href="javascript:fn_tennis_time_list('20230217')"><span class="date ">17</span><span class="label">가능
		            0건</span><span class="imposi-e">마감 115건</span></a></td>
		      <td><a href="javascript:fn_tennis_time_list('20230218')"><span class="date ">18</span><span class="label">가능
		            0건</span><span class="imposi-e">마감 214건</span></a></td> -->
		    </tr>
		    <tr class="mo_th">
		      <!-- <th scope="col" class="txt_red">19</th>
		      <th scope="col">20</th>
		      <th scope="col">21</th>
		      <th scope="col">22</th>
		      <th scope="col">23</th>
		      <th scope="col">24</th>
		      <th scope="col">25</th> -->
		    </tr>
		    <tr id="second_week">
		      <!-- <td>
			      <a href="javascript:fn_tennis_time_list('20230219')">
				      <span class="date  txt_red">19</span>
				      <spanclass="label">가능 0건</span>
				      <span class="imposi-e">마감 225건</span>
			      </a>
		      </td>
		      <td>
			      <a href="javascript:fn_tennis_time_list('20230220')">
				      <span class="date ">20</span><span class="label">가능0건</span>
				      <span class="imposi-e">마감 115건</span>
			      </a>
		      </td>
		      <td>
			      <a href="javascript:fn_tennis_time_list('20230221')">
				      <span class="date ">21</span>
				      <span class="label">가능2건</span>
				      <span class="imposi-e">마감 113건</span>
			      </a>
		      </td>
		      <td>
			      <a href="javascript:fn_tennis_time_list('20230222')">
				      <span class="date ">22</span>
				      <span class="label">가능5건</span>
				      <span class="imposi-e">마감 153건</span>
			      </a>
		      </td>
		      <td><span class="date ">23</span><span></span><span></span></td>
		      <td><span class="date ">24</span><span></span><span></span></td>
		      <td><span class="date ">25</span><span></span><span></span></td> -->
		    </tr>
		  </tbody>
</table>
		 
	</div>
	<!-- 
	<div class="tennis_court" style="position:relative; ">
  <ul class="court_list">
    <li class="t_list0"> <a id="tennis_court_img_a_1_1" href=""> <span
          class="court_txt text_position">1</span> <img id="tennis_court_img_1_1"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve2.gif" alt="테니스코드1"> </a> </li>
    <li class="t_list1"> <a id="tennis_court_img_a_1_2" href=""> <span
          class="court_txt txt_left">2</span> <img id="tennis_court_img_1_2"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif" alt="테니스코드2"> </a> </li>
    <li class="t_list2"> <a id="tennis_court_img_a_1_3" href=""> <span
          class="court_txt txt_left">3</span> <img id="tennis_court_img_1_3"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif" alt="테니스코드3"> </a> </li>
    <li class="t_list3"> <a id="tennis_court_img_a_1_4" href=""> <span
          class="court_txt txt_left">4</span> <img id="tennis_court_img_1_4"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_court_on1.gif" alt="테니스코드4"> </a> </li>
    <li class="t_list4"> <a id="tennis_court_img_a_1_5" href=""> <span
          class="court_txt text_position">5</span> <img id="tennis_court_img_1_5"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve2.gif" alt="테니스코드5"> </a> </li>
    <li class="t_list5"> <a id="tennis_court_img_a_1_6" href=""> <span
          class="court_txt text_position">6</span> <img id="tennis_court_img_1_6"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve2.gif" alt="테니스코드6"> </a> </li>
    <li class="t_list6"> <a id="tennis_court_img_a_1_7" href=""> <span
          class="court_txt text_position">7</span> <img id="tennis_court_img_1_7"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve2.gif" alt="테니스코드7"> </a> </li>
    <li class="t_list7"> <a id="tennis_court_img_a_1_8" href=""> <span
          class="court_txt text_position">8</span> <img id="tennis_court_img_1_8"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve2.gif" alt="테니스코드8"> </a> </li>
    <li class="t_list8"> <a id="tennis_court_img_a_1_9" href=""> <span
          class="court_txt txt_left">9</span> <img id="tennis_court_img_1_9"
          src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif" alt="테니스코드9"> </a> </li>
    <li class="t_list9"> <a id="tennis_court_img_a_1_10" href=""> <span
          class="court_txt">10</span> <img id="tennis_court_img_1_10" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif"
          alt="테니스코드10"> </a> </li>
    <li class="t_list10"> <a id="tennis_court_img_a_1_11" href=""> <span
          class="court_txt">11</span> <img id="tennis_court_img_1_11" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif"
          alt="테니스코드11"> </a> </li>
    <li class="t_list11"> <a id="tennis_court_img_a_1_12" href=""> <span
          class="court_txt">12</span> <img id="tennis_court_img_1_12" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif"
          alt="테니스코드12"> </a> </li>
    <li class="t_list12"> <a id="tennis_court_img_a_1_13" href=""> <span
          class="court_txt">13</span> <img id="tennis_court_img_1_13" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_court_on1.gif"
          alt="테니스코드13"> </a> </li>
    <li class="t_list13"> <a id="tennis_court_img_a_1_14" href=""> <span
          class="court_txt">14</span> <img id="tennis_court_img_1_14" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif"
          alt="테니스코드14"> </a> </li>
    <li class="t_list14"> <a id="tennis_court_img_a_1_15" href=""> <span
          class="court_txt">15</span> <img id="tennis_court_img_1_15" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_court_on1.gif"
          alt="테니스코드15"> </a> </li>
    <li class="t_list15"> <a id="tennis_court_img_a_1_16" href=""> <span
          class="court_txt">16</span> <img id="tennis_court_img_1_16" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif"
          alt="테니스코드16"> </a> </li>
    <li class="t_list16"> <a id="tennis_court_img_a_1_17" href=""> <span
          class="court_txt">17</span> <img id="tennis_court_img_1_17" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_court_on1.gif"
          alt="테니스코드17"> </a> </li>
    <li class="t_list17"> <a id="tennis_court_img_a_1_18" href=""> <span
          class="court_txt">18</span> <img id="tennis_court_img_1_18" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_noreserve.gif"
          alt="테니스코드18"> </a> </li>
    <li class="t_list18"> <a id="tennis_court_img_a_1_19" href=""> <span
          class="court_txt">19</span> <img id="tennis_court_img_1_19" src="https://www.ksponco.or.kr/online/images/content/btn_tennis_court_on1.gif"
          alt="테니스코드19"> </a> </li>
  </ul>
</div>
 -->
</form>

<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<script>
	'use strict';
	let date = new Date();
	
	let nowYoil = date.getDay();
	let nowDay = date.getDate();
	
	let lastDate = new Date(date.getFullYear(),date.getMonth()+1,0);
	let lastDay = lastDate.getDate();
	
	let firstSun = nowDay - nowYoil;
	let block = '';
	
	let cnt = 0;
	let sw = 'off';
	for(let i=0; i<7; i++){
		block += '<td>';
		
		if(sw == 'on' && cnt < 6) block += '<a href="javascript:fn_tennis_time_list(\'20230219\')">';
		
		block += '<span class="date ';
		if(i == 0) block += 'txt_red';
		block += '">'+(firstSun+i);
		
		if(sw == 'off' || cnt > 5) block += '</span><span></span><span></span>';
		else if(sw == 'on' && cnt < 6) {
			block += '</span><span class="label">가능 0건</span>';
			block += '<span class="imposi-e">마감 225건</span></a>';
			cnt++;
		}
		
		console.log(sw);
		console.log(cnt);
		
		if((firstSun+i) == nowDay) sw = 'on';
		
		block += '</td>';
		if((firstSun+i) == lastDay) firstSun = -i;
	}
	$("#first_week").html(block);
	block = '';
	for(let i=0; i<7; i++){
		block += '<td>';
		if(sw == 'on' && cnt < 6) block += '<a href="javascript:fn_tennis_time_list(\'20230219\')">';
		
		
		block += '<span class="date ';
		if(i == 0) block += 'txt_red'
		block += '">'+(firstSun+i+7);
		
		if(sw == 'off' || cnt > 5) block += '</span><span></span><span></span>';
		else if(sw == 'on' && cnt < 6) {
			block += '</span><span class="label">가능 0건</span>';
			block += '<span class="imposi-e">마감 225건</span></a>';
			cnt++;
		}
		
		console.log(sw);
		console.log(cnt);
		
		if((firstSun+i+7) == nowDay) sw = 'on';
		
		if((firstSun+i+7) == lastDay) firstSun = -i-7;
	}
	$("#second_week").html(block);
	/* <a href="javascript:fn_tennis_time_list('20230219')">
    <span class="date  txt_red">19</span>
    <spanclass="label">가능 0건</span>
    <span class="imposi-e">마감 225건</span>
		</a> */
	
	
</script>
</body>
</html>