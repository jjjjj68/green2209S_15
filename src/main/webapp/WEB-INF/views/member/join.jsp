<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
</head>
<style>
	body {
	    margin: 0;
	    padding: 0;
	    font-size: 1.8rem;
	    letter-spacing: -.05em;
	    font-weight: 400;
	    font-family: 'Spoqa Han Sans Neo','Noto Sans KR','Malgun Gothic','맑은 고딕',Dotum,'돋움',sans-serif;
	    line-height: 1.25;
	}
	button, input, optgroup, pre, select, textarea {
    color: inherit;
    font-family: inherit;
    font-size: inherit;
    font-weight: inherit;
    margin: 0;
	}
	
	.container {
	    max-width: 1100px;
	    padding-top: 12rem;	
	    padding-bottom: 16rem;
	    color: #151515;
}
		.title_h2 {
    font-size: 2rem;
    margin: 4.6rem 0 2.5rem 0;
}
		.form-control {
			min-height: 3.5rem !important;
			width: 400px;
		}
		.mid {
			padding: 0.6rem 1.2rem;
			display: inline-flex;
		}
		.name {
			padding: 0.6rem 1.2rem;
			display: inline-flex;
			
		}
		.namemain {
			position: relative;
	    width: 100%;
	    min-height: 1px;
	    padding-right: 2.8rem;
	    padding-left: 1rem;
		}
		.midmain {
			position: relative;
	    width: 100%;
	    min-height: 1px;
	    padding-right: 2rem;
	    padding-left: 1rem;
		}
		.pwdmain {
			position: relative;
	    width: 100%;
	    min-height: 1px;
	    padding-right: 1rem;
	    padding-left: 1rem;
		}
		.telmain {
			position: relative;
	    width: 100%;
	    min-height: 1px;
	    padding-right: 1.5rem;
	    padding-left: 1.5rem;
		}
		.emailmain {
			position: relative;
	    width: 100%;
	    min-height: 1px;
	    padding-right: 2rem;
	    padding-left: 1rem;
		}
		
	.name, .pwd, .mid {
		
	}
	#password {
    appearance: none;
}
	#password::-webkit-progress-bar {
	    background: #f0f0f0;
	    border-radius: 10px;
}
	#password::-webkit-progress-value {
	    border-radius: 10px;
	    background: var(--c, red);
}
	#password[value]::-webkit-progress-value {
	    transition: width 0.5s;
}
	.textbox {
		padding-left: 6rem;
    line-height: 1.7;
    font-size: 1em;
    position: relative;
	}
		.btn  {
			margin-left: 1rem ;
	    min-height: 3rem;
	    line-height: 1.4285;
	    border: 1px solid #999;
	    background-color: #fff;
	    font-size: 1.6rem;
	    display: inline-block;
	    text-align: center;
	    min-width: 12rem;
	}
	.btn.type3:hover {
    background: #1e1e24;
    border: 1px solid #1e1e24;
    color: #fff;
	}
	.btn.type3 {
    background: #353540;
    color: #fff;
    border-color: #353540;
    border: 1px;
}
 	.btn_back {
 		color: #fff;
 	}
	.btn.type3, .btn_back {
    padding: 1.3rem 1.5rem;
    min-height: 5.2rem;
    min-width: 15rem;
    margin-left: 200px;
	}
</style>
<script>
	'use strict';
	let idCheckSw = 0;
	
	function joinCheck() {
		let regMid = /^[a-z0-9_]{4,20}$/;
		let regPwd = /(?=.*[0-9a-zA-Z]).{4,20}$/;
    let regName = /^[가-힣a-zA-Z]+$/;
    let regEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
    let regTel = /\d{2,3}\d{3,4}\d{4}$/g;	
    
    let submitFlag = 0;
    
		let mid = myform.mid.value;
		let name = myform.name.value;
		let email1 = myform.email1.value;
		let email2 = myform.email2.value;
	  let email = email1 + '@' + email2;
	  let tel = myform.tel.value;
		
	  if(!regMid.test(mid)) {
		  alert("아이디는 영문 소문자와 숫자, 언더바(_)만 사용가능합니다.(길이는 4~20자리까지 허용)");
		  return false;
	  }
	  else if(!regPwd.test(pwd)) {
		  alert("비밀번호는 1개이상의 문자와 특수문자 조합의 6~24 자리로 작성해주세요.");
		  myform.pwd.focuse();
		  return false;
	  }
	  else if(!regName.test(name)) {
		  alert("성명은 한글과 영문대소문자만 사용가능합니다.");
		  myform.name.focuse();
		  return false;
	  }
	  else if(!regEmail.test(email)) {
	    alert("이메일 형식에 맞지않습니다.");
	    myform.email1.focus();
	    return false;
	  }
	  else {
		  submitFlag = 1;
	  }
	  
	  if(tel != "") {
		  if(!regTel.test(tel)) {
			  alert("전화번호 양식은 - 빼주세요");
			  myform.tel.focus();
			  return false;
		  }
		  else {
			  submitFlag = 1;
		  }
	  }
	  
	  if(submitFlag==0) {
		  if(idCheckSw == 0) {
			  alert("아이디 중복체크버튼을 눌러주세요!");
  			document.getElementById("midBtn").focus();
		  }
		  
	  }
	  
	}
</script>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<p><br/></p>
<form name="myform">
<div class="container">
	<h1 class="h1" style="font-weight: 400; position: relative;">회원가입</h1>
	<hr style="border: 0; height: 1.5px; background: #777;"/>
	<div class="privacy">
		<div class="form-group">
			<strong class="namemain">이 름</strong> 
			<input type="text" class="form-control" name="name" id="name" value="" maxlength="5" title="이름" style="width: 400px; display: inline-block; " >
			<hr style="background: #ccc;"/>
		</div>
		<div class="form-group">
      <strong class="midmain">아이디</strong> 
      <input type="text" class="form-control" name="mid" id="mid" value="" maxlength="12" title="아이디" style="width: 400px; display: inline-block; " readonly><button type="button" id="midBtn" class="btn ml10 btn_popopen" style="border-color: #000; margin-bottom: 3px;" data-toggle="modal" data-target="#myModal" >중복확인</button>
    	<hr style="background: #ccc;"/>
		</div>
		<!-- idCheck 모달 -->
		<div class="form-group">
			<form>
				<strong class="pwdmain">비밀번호</strong> 
				<input type="password" class="form-control" name="password" id="password" value="" maxlength="15" title="새 비밀번호(영문 + 숫자 + 특수문자, cg=10~20자)" placeholder="새 비밀번호" style="width: 400px; display: inline-block;" >
        <progress max="3" value="0" id="meter"></progress>
  	  </form>
	  <div class="textbox"></div>
		<hr style="background: #ccc;"/>
		</div>
		</div>
		<div class="form-group">
			<strong class="pwdsub">비밀번호 확인</strong> 
			<input type="password" class="form-control" name="password1" id="password1" value="" maxlength="15" title="비밀번호 확인" placeholder="비밀번호 확인" style="width: 400px; display: inline-block;" >
			<hr style="background: #ccc;"/>
		</div>
		<div class="form-group">
      <strong class="telmain">핸드폰</strong> 
      <input type="text" class="form-control" name="tel" id="tel"  maxlength="11" title="핸드폰번호" style="width: 400px; display: inline-block; ">
    	<hr style="background: #ccc;"/>
		</div>
		<div class="form-group">
			<strong class="emailmain">이메일</strong> 
			<input type="text" class="form-control" name="email1" id="email1"  maxlength="30" title="이메일 아이디를 입력하세요"  style="width: 190px; display: inline-block;" >
			<span class="form-term">@</span>
			<input type="text" class="form-control" name="email2" id="email2"  maxlength="30" title="이메일 주소를 입력하세요"  style="width: 190px; display: inline-block;" >
			<select class="form-control" title="이메일 주소를 선택하세요" onchange="mail2(this.value, 'email2'); return false;" style="width: 150px; display: inline-block;">
	      <option value="">직접입력</option>
	      <option value="naver.com" selected>naver.com</option>
		    <option value="gmail.com">gmail.com</option>
		    <option value="hanmail.net">hanmail.net</option>
		    <option value="hotmail.com">hotmail.com</option>
		    <option value="nate.com">nate.com</option>
		    <option value="yahoo.com">yahoo.com</option>
    	</select>
    	<hr style="background: #ccc;"/>
		</div>
		<div class="btns mt50">
	   <button class="btn btn_back" onclick="history.go(-1)" return false;" style="border: 1px solid #000;">이전단계</button>
	   <button class="btn btn_md type3" type="button" onclick="joinCheck()" >다음단계</button>
    </div>
</div>
</form>
<p><br/></p>
<div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">아이디 중복확인</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	<p style="text-align: center;">사용할 아이디를 입력하세요</p>
          <input type="text" name="idcheck" id="idcheck" maxlength="12" style="width:200px; margin-left: 130px">
          <input type="button" value="중복확인" class="btn btn_md type3" style="width:65px; height: 35px; padding: 0; margin :0; min-height: 0; min-width: 0; display:inline-block;"> 
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">닫 기</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>


</body>


<script>
	const password = document.querySelector("#password");
	const strengthBar = document.querySelector("#meter");
	var display = document.querySelector(".textbox");
	
	password.addEventListener("keyup", function () {
	  checkPassword(password.value);
	});

	
	function checkPassword(password) {
		  let strength = 0;
		  const regexes = [
		        /[a-z]+/,
		        /[A-Z]+/,
		        /[0-9]+/,	
		        /[$@#&!]+/,
		    ]

		  regexes.forEach((regex, index) => {
		    strength += password.match(regex) ? 1 : 0;
		  });

		  strengthBar.value = strength;

		  switch (strength) {
		    case 1:
		      strengthBar.style.setProperty("--c", "#ff0000");
		      break;
		    case 2:
		      strengthBar.style.setProperty("--c", "orange");
		      break;
		    case 3:
		      strengthBar.style.setProperty("--c", "blue");
		      break;
		  }

		  if (password.length < 10) {
		        display.textContent = "10~15자리 영문 대소문자, 숫자, 특수문자중 3가지 이상 조합"
		        strengthBar.style.setProperty("--c", "red")
		    } 
		  	else {
        	display.textContent = "사용가능한 비밀번호입니다. "
				}
		}
</script>
</html>