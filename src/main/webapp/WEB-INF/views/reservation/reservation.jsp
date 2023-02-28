<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>일일예약하기</title>
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
	.calendar_area {
		margin:40px 0 25px; 
	}
	.label {
		display:block; 
		width:110px; height:30px; 
		margin:auto; padding:6px 0; 
		font-size:15px; color:#009ce1; 
		line-height:1; text-align:center; 
		letter-spacing:-0.12em; 
		border:1px solid #009ce1; 
		background-color:#fff; 
		border-radius:4px;
	}
	.imposi-e {     
		display: block;
		margin-top: 5px;
		margin-left:7.5px; 
		width: 110px;
		height: 30px;
		padding: 6px 0;
		font-size: 15px;
		color: #ababab;
		line-height: 1;
		text-align: center;
		letter-spacing: -0.12em;
		border: 1px solid #ababab;
		background-color: #fff;
		border-radius: 4px;
	}
	.imposi-i {
			display: block;
			margin-top: 5px; 
			width: 110px;
			height: 30px;
			padding: 6px 0;
			font-size: 15px;
			color: #6f6f6f;
			line-height: 1;
			text-align: center;
			letter-spacing: -0.12em;
			border: 1px solid #6f6f6f;
			background-color: #fff;
			border-radius: 4px;
		}
	.tbl_calendar {
		table-layout:fixed; 
		width:100%; 
		border-top:1px solid #a6a6a6;
	}
	.tbl_calendar thead th {
		height:50px; 
		padding:0 13px; 
		font-size:18px; 
		font-weight:400; 
		color:#222; 
		line-height:1; 
		text-align:right; 
		border-left:1px solid #a6a6a6; 
		border-bottom:1px solid #a6a6a6;
	}
	.tbl_calendar thead th:first-child, .tbl_calendar tbody td:first-child {border-left:0;}
	.tbl_calendar tbody td {
		height:108px; 
		padding:16px 14px; 
		text-align:right; 
		border-left:1px solid #a6a6a6; 
		border-bottom:1px solid #a6a6a6; 
		vertical-align:top;
	}
	.tbl_calendar .date {
		display:block; 
		margin-bottom:30px; 
		font-size:18px; 
		color:#222;
	}
	.tbl_calendar .mo_th {display:none;}
	
	.btn_reserve {
  	border: none;
  	margin-bottom: 0px;
	}
	.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
table {
  border-collapse: collapse;
  width: 100%;
}

table td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: center;
}

table td .date {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

table td .date.txt_red {
  color: red;
  font-weight: bold;
}

.btn_reserve {
  display: block;
  margin-top: 5px;
  margin-bottom: 0px;
  background-color: #4CAF50;
  color: white;
  border: none;
  cursor: pointer;
  padding: 8px 16px;
  text-align: center;
  text-decoration: none;
  font-size: 14px;
  border-radius: 4px;
}

.btn_reserve:hover {
  background-color: #3e8e41;\
  margin-bottom: 0px;
}

/* 모달창 스타일링 */
.modal {
  display: none; /* 기본적으로 모달을 숨김 */
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.4);
}

.modal_content {
  background-color: #fefefe;
  margin: 10% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 60%;
}

.modal_header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.modal_header h2 {
  margin: 0;
}

.modal_body p {
  margin: 10px 0;
}

.btn_close_modal {
  color: #aaa;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
  border: none;
  background: none;
}

.btn_close_modal:hover,
.btn_close_modal:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
</style>
<script>
</script>
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
	<div class="main" style="background: #F5F5F5; width: 1100px; height: 500px; margin: auto; text-align: right;">
  <div class="today_after" style="font-size: 20px; color: #222;">
    ${today} ~ ${afterDate}
  </div>
  <table id="cal" class="tbl_calendar">
    <%-- <caption>날짜 리스트</caption> --%>
    <colgroup>
      <col style="width: 15%;">
      <col style="width: 14%;">
      <col style="width: 14%;">
      <col style="width: 14%;">
      <col style="width: 14%;">
      <col style="width: 14%;">
      <col style="width: 15%;">
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
      <tr class="mo_th">
      </tr>
      <tr id="first_week">
      </tr>
      <tr class="mo_th">
      </tr>
      <tr id="second_week">
      </tr>
    </tbody>
    
  </table>
  </div>
 </form> 
  <p><br /></p>
	  <!-- 모달 창 -->
	<div id="reserve_modal" class="modal">
  <div class="modal_content">
    <span class="btn_close_modal">&times;</span>
    <h2>일일 예약하기</h2>
    
     <div class="form-group">
		  <label for="reserve_time">예약 시간:</label>
		  <div>
		    <select id="restime1" class="restimeClass"></select>
		    <select id="restime2" class="restimeClass"></select>
		    <select id="restime3" class="restimeClass"></select>
		    <select id="restime4" class="restimeClass"></select>
		    <select id="restime5" class="restimeClass"></select>
		  </div>
		</div>
     <div class="form-group">
       <label for="reserve_court">코트:</label>
       <div>
				<select name="courtNum" id="courtNum" onchange="viewRestime(this)">
					<c:forEach var="Num" begin="1" end="5">
						<option value="${Num}">${Num}번코트</option>
					</c:forEach>
				</select>
			</div>
     </div>
     <button id="reserveBtn" type="submit" class="btn btn-primary">예약하기</button>
      
  </div>
</div>

<p><br/></p>

<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
	
	for(let i = 0; i < 7; i++) {
	  block += '<td>';
	  
	  if(sw == 'on' && cnt < 6) block += '<a href="javascript:fn_tennis_time_list(\'20230219\')">';
	  
	  block += '<span class="date ';
		if(i == 0) block += 'txt_red';
		block += '">'+(firstSun+i);
		
		if(sw == 'off' || cnt > 5) block += '</span><span></span><span></span>';
		else if(sw == 'on' && cnt < 5) {
	    block += '</span><button type="button" class="btn_reserve" data-date="20230219" data-court="1" onclick="loadDateData('+(cnt+1)+')" >예약하기</button>';
			cnt++;
		}
	
		if((firstSun+i) == nowDay) sw = 'on';
		
		block += '</td>';
		if((firstSun+i) == lastDay) firstSun = -i;
	}
	
	
	
	$("#first_week").html(block);
	block = '';
	
	for(let i=0; i<7; i++){
		block += '<td>';
		if(sw == 'on' && cnt < 6) {
			block += '<a href="javascript:fn_tennis_time_list(\'20230219\')">';
		}
		
	  block += '<span class="date ';
	  if(i == 0) {
	    block += 'txt_red';
	  }
	  block += '">'+(firstSun+i+7);
	  
	  if(sw == 'off' || cnt > 5) block += '</span><span></span><span></span>';
		else if(sw == 'on' && cnt < 5) {
	    block += '</span><button type="button" class="btn_reserve" data-date="20230219" data-court="1" onclick="loadDateData('+(cnt+1)+')" >예약하기</button>';
			cnt++;
		}
	  
	  if((firstSun+i+7) == nowDay) {
	    sw = 'on';
	  }
	  if((firstSun+i+7) == lastDay) {
	    firstSun = -i-7;
	  }
	  block += '</td>';
	}
	$("#second_week").html(block);
	
	$('.btn_reserve').on('click', function() {
		  const date = $(this).data('date');
		  const court = $(this).data('court');
		  $('.modal-date').text(date);
		  $('.modal-court').text(court);
		  $('.modal').addClass('active');
		});
	
	$(document).on("click", ".btn_reserve", function() {
		let date = $(this).data("date");
		let court = $(this).data("court");
		let modal = $("#reserve_modal");
		modal.find(".modal_date").text(date);
		modal.find(".modal_court").text(court);
		modal.show();
	});
	
	$(document).on("click", ".btn_reserve", function() {
		  let date = $(this).data("date");
		  let court = $(this).data("court");
		  let modal = $("#reserve_modal");
		  modal.find(".modal_date").text(date);
		  modal.find(".modal_court").text(court);
		  modal.show();
		});
	
	//모달창 닫기
	$(document).on("click", ".btn_close_modal", function() {
	  $("#reserve_modal").hide();
	});
	
	$(document).on("click", ".btn_reserve", function() {
		  let date = $(this).data("date");
		  let time = $(this).data("time");
		  let court = $(this).data("court");
		  let modal = $("#reserve_modal");
		  modal.find(".modal_date").text(date);
		  modal.find(".modal_time").val(time);
		  modal.find(".modal_court").val(court);
		  modal.show();
		});
	
	$(document).on("click", ".btn_reserve", function() {
	    let date = $(this).data("date");
	    let court = $(this).data("court");
	    let modal = $("#reserve_modal");
	    modal.find(".modal_date").text(date);
	    modal.find(".modal_court").text(court);
	    
	    modal.show();
	});
	
	$(".restimeClass").on("change", function(){
		if($(this).val() == '') document.getElementById("reserveBtn").disabled = true;
		else document.getElementById("reserveBtn").disabled = false;
	});
	
	$("#courtNum").on("change", function(){
		if($("#restime"+$(this).val()).val() == '') document.getElementById("reserveBtn").disabled = true;
		else document.getElementById("reserveBtn").disabled = false;
	});
	
	function loadDateData(day) {
		$.ajax({
			type: "post",
			url: "${ctp}/reservation/getThisDate",
			data: {day:day},
			success: function(vos) {
				for(let i=1; i<=5; i++){
					$("#restime"+i).html('');
					let block = '';
					block += vos[i-1].time09 == null ? '<option value="09">09:00 - 10:00</option>' : '<option value="">09:00 - 10:00 [예약완료]</option>';  
					block += vos[i-1].time10 == null ? '<option value="10">10:00 - 11:00</option>' : '<option value="">10:00 - 11:00 [예약완료]</option>';  
					block += vos[i-1].time11 == null ? '<option value="11">11:00 - 12:00</option>' : '<option value="">11:00 - 12:00 [예약완료]</option>';  
					block += vos[i-1].time12 == null ? '<option value="12">12:00 - 13:00</option>' : '<option value="">12:00 - 13:00 [예약완료]</option>';  
					block += vos[i-1].time13 == null ? '<option value="13">13:00 - 14:00</option>' : '<option value="">13:00 - 14:00 [예약완료]</option>';  
					block += vos[i-1].time14 == null ? '<option value="14">14:00 - 15:00</option>' : '<option value="">14:00 - 15:00 [예약완료]</option>';  
					block += vos[i-1].time15 == null ? '<option value="15">15:00 - 16:00</option>' : '<option value="">15:00 - 16:00 [예약완료]</option>';  
					block += vos[i-1].time16 == null ? '<option value="16">16:00 - 17:00</option>' : '<option value="">16:00 - 17:00 [예약완료]</option>';  
					block += vos[i-1].time17 == null ? '<option value="17">17:00 - 18:00</option>' : '<option value="">17:00 - 18:00 [예약완료]</option>';  
					block += vos[i-1].time18 == null ? '<option value="18">18:00 - 19:00</option>' : '<option value="">18:00 - 19:00 [예약완료]</option>';  
					block += vos[i-1].time19 == null ? '<option value="19">19:00 - 20:00</option>' : '<option value="">19:00 - 20:00 [예약완료]</option>';  
					block += vos[i-1].time20 == null ? '<option value="20">20:00 - 21:00</option>' : '<option value="">20:00 - 21:00 [예약완료]</option>';  
					block += vos[i-1].time21 == null ? '<option value="21">21:00 - 22:00</option>' : '<option value="">21:00 - 22:00 [예약완료]</option>';  
					
					$("#restime"+i).append(block);
				}
				$("#courtNum").val(1).prop("selected",true);
				
				$("#restime1").css("display","inline-block");
				for(let i=2; i<=5; i++) $("#restime"+i).css("display","none");
				
				$("#reserveBtn").attr("onclick","reservation("+day+")");
				
				if($("#restime1").find("option:eq(0)").val() == '') document.getElementById("reserveBtn").disabled = true;
				else document.getElementById("reserveBtn").disabled = false;
			},
			error: function() {
				alert("전송 오류");
			}
		});
	}
	
	function viewRestime(me) {
		let idx = $(me).val();
		for(let i=1; i<=5; i++) {
			if(i != idx) $("#restime"+i).css("display","none");
			else $("#restime"+i).css("display","inline-block");
		}
	}
	
	function reservation(day) {
		let courtNum = $("#courtNum").val();
		let time = $("#restime"+courtNum).val();
		
		if(time == '') {
			alert("해당 시간은 예약이 완료되었습니다.");
			return;
		}
		
		$.ajax({
			type: "post",
			url: "reservation",
			data: {courtNumber:courtNum,startTime:time,afterDay:day},
			success: function(res) {
				if(res == 0) alert("예약 실패");
				else {
					alert("예약이 완료되었습니다.");
					document.location.reload(true);
				}
			},
			error: function() {
				alert("전송 에러");
			}
		});
		
		
	}
	
</script>
</body>
</html>