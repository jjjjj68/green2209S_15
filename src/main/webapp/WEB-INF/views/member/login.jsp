<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>그린테니스장 로그인</title>
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
	h1, h2, h3, h4, h5, h6, p {
    margin: 0;
    padding: 0;
	}
	a {
		color:inherit;
		text-decoration:none
	}
	.btn_prev_page {
		display: flex;
	}
	.btn_prev_page span {
		font-size: 20.5px;
	}
	.btn_prev_page img { /* 이전으로 이미지 */
    width: 30px;
    height: 2rem;
    webkit-transform: rotate(180deg);
    /* transform: rotate(180deg); 방향돌려주기*/
    margin-right: 2rem;
	}
	.title_h1 {
    font-size: 52px;
    margin-bottom: 2.5rem;
	}
	h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
	}
	.title_area {
    text-align: center;
	}
	.title_area .desc {
    color: #555;
    font-size: 2.4rem;
    margin-bottom: 2rem;
	}
	
	.form-control {
    display: block;
    width: 100%;
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
	}
	.id_login_cont .login_form .login_input input {
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
	}
	.id_login_cont .login_form .login_input {
    webkit-box-flex: 1;
    ms-flex: 1 1 auto;
    flex: 1 1 auto;
    border-bottom: 1px solid #ddd;
    margin-bottom: 3rem;
	}
	div {
    display: block;
	}
	.id_login_cont {
    margin-top: 9rem;
    border-top: 1px solid #ccc;
    text-align: center;
	}
	.id_login_cont .login_form .btn_login {
    display: block;
    width: 100%;
    background: -webkit-gradient(linear, left top, right top, from(#003775), to(#7B20C9));
    background: linear-gradient(to right, #003775, #7B20C9);
    color: #fff;
    border: 0;
    padding: 1rem;
    font-size: 1.8rem;
	}
	.id_login_cont .login_form .etc_btn {
    text-align: center;
    margin-top: 2rem;
    font-size: 1.2rem;
    color: #555555;
	}
</style>
<body>
<p><br/></p>
<div class="container">
	<form name="myform" method="post" enctype="multipart/form-data">
	<!-- header -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<hr/>
	<div class="main">
		<div class="top_header">
			<a href="http://localhost:9090/green2209S_15" class="btn_prev_page" style="text-decoration:none; color: inherit;">
				<i><img src="${ctp}/images/leftarrow.png"></i>
				<span >이전으로</span>
			</a>
			<p></p>
			<div class="title_area">
				<h2 class="title_h1"><b>로그인</b></h2>
				<p class="desc">그린테니스장 홈페이지에 오신것을 환영합니다.</p>
			</div>
			<div id="content" class="contetn_section">
				<div class="id_login_cont">
					<div class="login id_login">
						<div class="cont login_form">
							<div class="login_input pw_input">
								<div class="form-row">
									<input type="text" class="form-control" id="mid" name="mid" title="아이디 입력" />	
								</div>
								<p></p>
								<div class="form-row">
									<input type="password" class="form-control" id="pwd" name="pwd" title="비밀번호 입력" />
								</div>
							</div>   
							<!-- //login_input -->
							<button type="submit" class="btn btn_login" >로그인</button> 
							<div class="etc_btn">
								<a href="">아이디찾기</a>&nbsp;|&nbsp;
								<a href="">비밀번호찾기</a>&nbsp;|&nbsp;
								<a href="">회원가입</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</div>
</body>
</html>