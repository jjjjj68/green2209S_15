<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<div class="w3-content w3-section" >
  <img class="mySlides" src="${ctp}/images/slide5.jpg" style="width:100%; height: 600px; ">
  <img class="mySlides" src="${ctp}/images/slide6.jpg" style="width:100%; height: 600px;">
  <img class="mySlides" src="${ctp}/images/slide4.jpg" style="width:100%; height: 600px;">
</div>
  <script>
		var myIndex = 0;
		carousel();
		function carousel() {
		  var i;
		  var x = document.getElementsByClassName("mySlides");
		  for (i = 0; i < x.length; i++) {
		    x[i].style.display = "none";  
		  }
		  myIndex++;
		  if (myIndex > x.length) {myIndex = 1}    
		  x[myIndex-1].style.display = "block";  
		  setTimeout(carousel, 2000); // Change image every 2 seconds
		}
</script>