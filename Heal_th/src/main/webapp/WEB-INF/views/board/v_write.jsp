<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운동 인증 게시글 작성</title>

<style type="text/css">

/* @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap'); */

/* * { */
/*     margin: 0; */
/*     padding: 0; */
/*     box-sizing: border-box; */
/* /*     font-family: 'Montserrat', sans-serif; */ */
/* } */

/* body { */
/*     display: flex; */
/*     justify-content: center; */
/*     align-items: center; */
/*     min-height: 100vh; */
/* /*     background-color: #0C4160; */ */

/*     padding: 30px 10px; */
/* } */

/* .card { */
/*     max-width: 500px; */
/*     margin: auto; */
/* /*     color: black; */ */
/*     border-radius: 20 px; */
/* } */

/* p { */
/*     margin: 0px; */
/* } */

/* .container .h8 { */
/*     font-size: 30px; */
/*     font-weight: 800; */
/*     text-align: center; */
/* } */

/* .btn.btn-primary { */
/*     width: 100%; */
/*     height: 70px; */
/*     display: flex; */
/*     text-align: center; */
/*     align-items: center; */
/*     justify-content: space-between; */
/*     padding: 0 15px; */
/*     background-image: linear-gradient(to right, #77A1D3 0%, #79CBCA 51%, #77A1D3 100%); */
/*     border: none; */
/*     transition: 0.5s; */
/*     background-size: 200% auto; */

/* } */


/* .btn.btn.btn-primary:hover { */
/*     background-position: right center; */
/*     color: #fff; */
/*     text-align: center; */
/*     text-decoration: none; */
/* } */



/* .btn.btn-primary:hover .fas.fa-arrow-right { */
/*     transform: translate(15px); */
/*     transition: transform 0.2s ease-in; */
/* } */

/* .form-control { */
/*     color: white; */
/*     background-color: #223C60; */
/*     border: 2px solid transparent; */
/*     height: 60px; */
/*     padding-left: 20px; */
/*     vertical-align: middle; */
/* } */

/* .form-control:focus { */
/*     color: white; */
/*     background-color: #0C4160; */
/*     border: 2px solid #2d4dda; */
/*     box-shadow: none; */
/* } */

/* .text { */
/*     font-size: 14px; */
/*     font-weight: 600; */
/* } */



body {
    background: url(https://splatoon.nintendo.com/assets/img/home/bg-main.png) left;
}


/* body * { */
/*     box-sizing: border-box; */
/* } */

.wrapper {
    padding: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-flow: wrap;
    height: 100vh;
}

button {
	width: 68px;
    flex: 1;
    padding: 10px 10px;
    margin: 10px;
    border-radius: 10px;
    border: 3px solid #284cff;
    font-size: 25px;
/*     text-shadow: 0 3px 5px rgba(0, 0, 0, 0.25); */
    white-space: nowrap;
    color: gray;
    background: transparent;
    background-image: url(https://i.imgur.com/8PFQWxB.png);
    background-repeat: repeat-x;
    background-position: 0 -100%;
    transition: 1.5s ease;
}

button:hover {
    background-position: 500% 100%;
}

/*  button:nth-child(1) {  */
/*      filter: hue-rotate(20deg);  */
/* }  */



</style>

</head>
<body>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<!-- <div class="wrapper"> -->
<!--     <button>등록</button> -->
<!-- </div> -->


<!-- <div class="container p-0"> -->
<!--         <div class="card px-4"> -->
<!--             <p class="h8 py-3">운동인증 게시글</p><br><br> -->
<!--             <div class="row gx-3"> -->
<!--                 <div class="col-12"> -->
<!--                     <div class="d-flex flex-column"> -->
<!--                         <p class="text mb-1">Person Name</p> -->
<!--                         <input class="form-control mb-3" type="text" placeholder="Name" value="Barry Allen"> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-12"> -->
<!--                     <div class="d-flex flex-column"> -->
<!--                         <p class="text mb-1">Card Number</p> -->
<!--                         <input class="form-control mb-3" type="text" placeholder="1234 5678 435678"> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-6"> -->
<!--                     <div class="d-flex flex-column"> -->
<!--                         <p class="text mb-1">Expiry</p> -->
<!--                         <input class="form-control mb-3" type="text" placeholder="MM/YYYY"> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-6"> -->
<!--                     <div class="d-flex flex-column"> -->
<!--                         <p class="text mb-1">CVV/CVC</p> -->
<!--                         <input class="form-control mb-3 pt-2 " type="password" placeholder="***"> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-12"> -->
<!--                     <div class="btn btn-primary mb-3"> -->
<!--                         <span class="ps-3">등록</span> -->
<!--                         <span class="fas fa-arrow-right"></span> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->


<!-- <div> -->

<h1>운동 인증</h1>

<form action="" method="post">

<table>
	<tr>
		<td>제목</td>
		<td><input type="text" name="v_title" required id="title"></td>
	</tr>
	
	<tr>
		<td>운동 종목</td>
		<td><input type="text" name="exercise" required id="exercise"></td>
	</tr>
	
	<tr>
		<td>소요 시간</td>
		<td><input type="text" name="time" required id="time"></td>
	</tr>
	
	<tr>
		<td>소비 칼로리</td>
		<td><input type="text" name="kcal" required id="kcal">kcal</td>
	</tr>
	
	<tr>
		<td>첨부파일</td>
		<td><button>첨부파일</button></td>
	</tr>
	




<button>삭제</button>

<button>등록</button>

<!--  <div class="col-12"> -->
<!-- 	<div class="btn btn-primary mb-3" style="text-align: center;"> -->
<!--     	<span class="ps-3" style="text-align: center;">등록</span> -->
<!--         <span class="fas fa-arrow-right"></span> -->
<!-- 	</div> -->
<!-- </div> -->

</table>
</form>

</div>

</body>
</html>