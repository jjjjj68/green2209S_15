<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오시는 길</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<style>
	.btn_map.green {
		margin-left: 43%;		
    padding: 10px 32px 10px 32px;
    font-size: 24px;
    color: #fff;
    line-height: 1;
    text-align: center;
    border : 0px;
    background-color: #0089ff;
}
</style>
<script>
function copyToClipboard() {
  const address = "사창동 148-7";
  
  navigator.clipboard.writeText(address);
  alert('복사되었습니다, 감사합니다.');
}
</script>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<jsp:include page="/WEB-INF/views/include/slide.jsp" />
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<span style="float: right; color: #45464b;">오시는 길</span>
	<span style="float: right; ">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</span>
	<span style="float: right; color: #45464b;">그린 테니스장</span>
	<span style="float: right; ">&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;</span>
	<span style="float: right;  font-weight: bold;"><img src="${ctp}/images/home10.png" style=" width: 20px;height: 20px;"></span>
	<p><br/></p>
	<h2 style="text-align: center;  font-size: 52px;font-weight: bolder;  margin-bottom: 2.5rem;">오시는 길</h2>
</div>
<div id="map" style="width:50%;height:350px;margin: auto;"></div>
<p><br/></p>
<p></p>

<div>
	<button type="button" onclick="copyToClipboard()" title="주소복사" class="btn_map green" >그린테니스장 주소 복사</button>
</div>																									
<jsp:include page="/WEB-INF/views/include/footer.jsp" />	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=42a84f37efb97ffe9a0dfff2dc43de47"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(36.635103878550666, 127.45956031433447), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(36.635103878550666, 127.45956031433447); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
</body>
</html>