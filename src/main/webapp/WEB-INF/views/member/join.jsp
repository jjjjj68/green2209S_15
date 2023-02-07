<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
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
	    color: #46464a;
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
		.emailmain {
			position: relative;
	    width: 100%;
	    min-height: 1px;
	    padding-right: 2rem;
	    padding-left: 1rem;
		}
		.btn:hover {
		  border-color: #353540;
		  background-color: #353540;
		  color: #fff;
		  border-radius: 0.5rem;
		  box-shadow: 0 0.3rem 0.6rem rgba(0, 0, 0, 0.16);
		  transition: 0.25s;
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
	.btn.type3:hover {
    background: #1e1e24;
    border: 1px solid #1e1e24;
	}
	.btn.btn_md {
    padding: 1.3rem 1.5rem;
    min-height: 5.2rem;
    min-width: 15rem;
    margin-left: 200px;
	}
	.btn ~ .btn {
  margin-left: 1rem;
}
	.btn.type3 {
    background: #353540;
    color: #fff;
    border-color: #353540;
}
	.btn.btn_md {
  padding: 1.3rem 1.5rem;
  border : 1px;
  min-height: 5.2rem;
  min-width: 20rem;
}
</style>

<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<p><br/></p>
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
      <input type="text" class="form-control" name="mid" id="mid" value="" maxlength="12" title="아이디" style="width: 400px; display: inline-block; " readonly><button type="button" class="btn ml10 btn_popopen" style="border-color: #000; margin-bottom: 3px;" >중복확인</button>
    	<hr style="background: #ccc;"/>
		</div>
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
			<strong class="emailmain">이메일</strong> 
			<input type="text" class="form-control" name="password1" id="password1" value="" maxlength="30" title="이메일 아이디를 입력하세요"  style="width: 190px; display: inline-block;" >
			<span class="form-term">@</span>
			<input type="text" class="form-control" name="password1" id="password1" value="" maxlength="30" title="이메일 주소를 입력하세요"  style="width: 190px; display: inline-block;" >
			<select class="form-control" title="이메일 주소를 선택하세요" onchange="mail2(this.value, 'email2'); return false;" style="width: 150px; display: inline-block;">
	      <option value="">직접입력</option>
	      <option value="naver.com">naver.com</option>
	      <option value="yahoo.co.kr">yahoo.co.kr</option>
	      <option value="freechal.com">freechal.com</option>
	      <option value="empal.com">empal.com</option>
	      <option value="intizen.com">intizen.com</option>
	      <option value="hanmir.com">hanmir.com</option>
	      <option value="paran.com">paran.com</option>
	      <option value="hotmail.com">hotmail.com</option>
	      <option value="hanmail.net">hanmail.net</option>
	      <option value="nate.com">nate.com</option>
    	</select>
    	<hr style="background: #ccc;"/>
		</div>
		<div class="btns mt50">
	   <button class="btn btn_md" onclick="regist_cancel('@{/register.es(mid=${param.mid})}'); return false;">이전단계</button>
	   <button class="btn btn_md type3" type="button" onclick="regist_insert(); return false;" style="font-weight: 200px;">다음단계</button>
    </div>
</div>
<p><br/></p>
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