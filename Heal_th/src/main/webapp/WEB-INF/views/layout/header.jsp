<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쌈장이 득근득근</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 부트스트랩 Bootstrap 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	
	$("#menu > ul ").mouseover(function(){ 
		$('#dropMenu').slideDown('500'); 
		
	});
	
	$("#dropMenu").mouseleave(function(){ 
		$('#dropMenu').slideUp('500'); 
		
	});
	
	
})



</script>



<style type="text/css">

@import url('https://webfontworld.github.io/sunn/SUIT.css');

html, body, pre, h1, h2, h3, h4, h5, h6, dl, dt, dd, ul, li, ol, th, td, p, blockquote, form, fieldset, legend, menu, nav, section, hgroup, article, header, aside, footer, input, select, textarea, button {
    margin: 0;
    padding: 0;
    list-style:none;
    font-family: 'SUIT';
}

a {
    color: #000;
    text-decoration: none;
}

header{
	margin-bottom: 180px;
}

#topMenu {
	display: flex;
    align-items: center;
    justify-content: space-between;
    height: 80px;
    background-color: #fff;
    position: fixed;
    z-index: 999;
    padding-left: 160px;
    box-shadow: 0 0 10px rgb(0 0 0 / 8%);
    top: 0;
    left: 0;
 	right: 0;
}


#topMenu .logo { 
 	width: 180px; 
 	height: 38px; 
} 

#topMenu .logo a {
    height: 100%;
    display: flex;
    align-items: center;
}


#menu {
	margin: 0 auto;
	width: 900px;
	display: flex;
    justify-content: center;
    height: 100%;
    position: absolute;
    left: 50%;
    top: 0;
    transform: translateX(-50%);
    font-size: 19px;
    font-weight: 600;
}

#menu > ul {
	display: flex;
    align-items: center;
    height: 100%;
}

#menu > ul > li {
	height: 100%;
    width: 150px;
}

#menu > ul > li > a {
	height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    white-space: nowrap;
    position: relative;
}



#right {
	position: relative;
	height: 100%; 
	width: 440px; 
	background-color: #aaa; 
	float: right; 
	background: linear-gradient(120deg, transparent 50px, #3f94d6 0 , #1869a7);
}

#right > ul {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    height: 100%;
    padding: 0 160px 0 0;
}

#right > ul > li {
	margin-left: 30px;
	display: flex;
    align-items: center;
}

#login > img {
	margin-right: 6px;
	width: 20px;
	height: 20px;
}

#join > img {
	margin-right: 6px;
	width: 20px;
	height: 20px;
}

#right > ul > li > a {
	display: block;
	font-size: 16px;
	font-weight: 400;
	color: #fff;
}



/* 드롭다운 메뉴~~ */

.hover {
	box-shadow: 0 0 0px rgb(0 0 0 / 0%) !important;;
	border-bottom: 1px solid #eeeeee;
}


#dropMenu {
	display: none;
	margin: 0 auto;
	height: 270px;
	width: 100%;
	background-color: #fff;
	position: fixed;
	box-shadow: 0 0 10px rgb(0 0 0 / 8%);
	top: 0;
}

#dropMenu > ul {
	display: flex;
    align-items: center;
    justify-content: center;
}

#dropMenu > ul:nth-child(1) {
	padding-top: 80px;
	margin-top: 34px;
}

#dropMenu > ul:last-child {
	margin-bottom: 34px;
}

#dropMenu > ul > li {
    width: 150px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-left: 1px solid #eaeaea;
}

#dropMenu > ul > li:last-child {
	border-right: 1px solid #eaeaea;
}

#dropMenu > ul > li > a {
	height: 20px;
    color: #666;
    font-weight: 400;
}

</style>

</head>

<header class="hover">

	<div id="dropMenu" >
		<ul>
			<li>
				<a href="">2-1depth</a>
			</li>
			<li>
				<a href="">2-1depth</a>
			</li>
			<li>
				<a href="">2-1depth</a>
			</li>
			<li>
				<a href="">2-1depth</a>
			</li>
			<li>
				<a href="">2-1depth</a>
			</li>
			<li>
				<a href="">2-1depth</a>
			</li>
			
		</ul>
		
		<ul>
			<li>
				<a href="">2-2depth</a>
			</li>
			<li>
				<a href="">2-2depth</a>
			</li>
			<li>
				<a href="">2-2depth</a>
			</li>
			<li>
				<a href="">2-2depth</a>
			</li>
			<li>
				<a href="">2-2depth</a>
			</li>
			<li>
				<a href="">2-2depth</a>
			</li>
			
		</ul>
		
		<ul>
			<li>
				<a href="">2-3depth</a>
			</li>
			<li>
				<a href="">2-3depth</a>
			</li>
			<li>
				<a href="">2-3depth</a>
			</li>
			<li>
				<a href="">2-3depth</a>
			</li>
			<li>
				<a href="">2-3depth</a>
			</li>
			<li>
				<a href="">2-3depth</a>
			</li>
			
		</ul>
		
		
	</div>

	<div id="topMenu" class="">	
		<h1 class="logo">
			<a href="">
				<img src="/resources/img/logo.png" alt="득근득근">
			</a>		
		</h1>
				
		<div id="menu">
		<ul>
			<li>
				<a href="">챌린지</a>
			</li>
			<li>
				<a href="">운동질문</a>
			</li>
			<li>
				<a href="">운동도우미</a>
			</li>
			<li>
				<a href="">출석체크</a>
			</li>
			<li>
				<a href="">득근상점</a>
			</li>
			<li>
				<a href="">커뮤니티</a>
			</li>
		</ul>
		</div> <!-- menu -->
	
		
		<div id="right">
			<ul>
				<li id="login">
					<img src="/resources/img/loginicon.png">
					<a href="">
						로그인
					</a>
				</li>
				
				<li id="join">
					<img src="/resources/img/joinicon.png">
					<a href="">
					회원가입
					</a>
				</li>
			</ul>
		</div>
	</div>	<!-- topMenu -->

	
</header>











