<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<style>
	.data_list { table-layout: fixed;width: 100%;border-top: 2px solid #000;border-collapse: separate;}
	.data_list thead th { height: 60px;padding: 13px 0;font-size: 18px;font-weight: 500; border-left: 1px solid #dbe0e2;border-bottom: 1px solid #dbe0e2;background-color: #f5f5f5;}
	.data_list tbody td { padding: 15px 20px;font-size: 18px; text-align: center;border-left: 1px solid #dbe0e2;border-bottom: 1px solid #dbe0e2;}
	.data_list tfoot td {padding: 12px 12px;font-size: 18px;text-align: center;border-bottom: 1px solid #dbe0e2;background-color: #f5f5f5;}
	.total_price {font-size: 24px;font-weight: 500;text-align: center;}
	.btn_area .btn_base {margin: 0 3px;}
	.btn_base.on {color: #fff;border: 1px solid #2376bd;background: #2376bd; padding: 20px 20px 20px 20px}
	.btn_area {padding-top: 40px;text-align: center;}

</style>

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script>
	
	function requestPay() {
				var IMP = window.IMP;   
				IMP.init("imp13705453"); 
	   	 IMP.request_pay({
	      pg: "html5_inicis.INIpayTest",
	      pay_method: "card",
	      merchant_uid: "ORD20180131-0000011",   // 주문번호
	      name: "그린테니스장",
	      amount: 10,                         // 숫자 타입
	      buyer_email: "wogml6466@gmail.com",
	      buyer_name: "이재희",
	      buyer_tel: "010-0000-0000",
	      buyer_addr: "서울특별시 강남구",
	      buyer_postcode: "01181"
	    }, function (rsp) { // callback
	      if (rsp.success) {
	    	  console.log(rsp);
	      } else {
	    	  console.log(rsp);
	      }
	    });
	  }
</script>

<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<jsp:include page="/WEB-INF/views/include/slide.jsp" />
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<span style="float: right; color: #45464b;">결제바구니</span>
	<span style="float: right; ">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</span>
	<span style="float: right; color: #45464b;">그린 테니스장</span>
	<span style="float: right; ">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</span>
	<span style="float: right;  font-weight: bold;"><img src="${ctp}/images/home10.png" style=" width: 20px;height: 20px;"></span>
	<p><br/></p>
	<h2 style="text-align: center; font-size: 52px;font-weight: bolder;  margin-bottom: 2.5rem;">결제바구니</h2>
	<form id="listForm" method="post" action="">
				<table class="data_list">
					<colgroup>
						<col style="width:5%;">
						<col style="width:20%;">
						<col >
						<col style="width:25%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">예약일자</th>
							<th scope="col">종목 / 내용</th>
							<th scope="col">결제금액</th>
						</tr>
					</thead>
					<tbody id='list_tbody'>
						<tr >
							<td class="shop0"></td>
							<td>2023.03.02(목)</td>
							<td>그린테니스장 / ${Num}번코트, ${starttime}:00 ~ ${endtime}:00 </td>
							<td>10,000</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td id='td_tot_amt' colspan="4">
								<p class="total_price">총금액  : <strong style="color: #FF0000;">1,000</strong></p>
							</td>
						</tr>
					</tfoot>
				</table>
				<div class="btn_area">
					<button type="button" class="btn_base on" onclick="requestPay()">결제하기</button> <!-- 결제하기 버튼 생성 -->
				</div>
			</form>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<script>
	'use strict'
	block += '<td>';
	
	
	
	block += '<td>';
	
</script>
</body>
</html>