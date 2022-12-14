<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="../layout/header.jsp" />

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 스타일 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script scr="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script scr="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></script> -->

<!-- 날짜 위젯 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


<style type="text/css">

* {
    margin: 0;
    padding: 0;
}

header{margin-bottom: 140px;}

body{padding: 0;}

/* header <a>Tag style */

a {
    color: #000;
    text-decoration: none;
    text-decoration-line: none;
}

a:focus, a:hover {
    text-decoration: none;
    outline: none;
}


/* button style */
#btnCancle{
     width: 100px; 
     background: #616161; 
     font-weight: bold; 
     color: white; 
     border: 0 none; 
     border-radius: 0px; 
     cursor: pointer; 
     padding: 10px 5px; 
     margin: 10px 5px; 
     margin-left: 208px;
}



#btnInsert {
    width: 100px;
    background: #7ca3f5;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px; 
    margin: 10px 5px;
    padding-bottom: 14px; 
	height: 52px;
	width: 100px;
}


/*form styles*/
#msform {
    text-align: center;
    position: relative;
    margin-top: 20px;
    display: block;
}

#msform fieldset .form-card {
    background: white;
    border: 0 none;
    border-radius: 0px;
    box-shadow: 0 2px 2px 2px rgba(0, 0, 0, 0.2);
    padding: 20px 40px 30px 40px;
    box-sizing: border-box;
    width: 94%;
    margin: 0 3% 20px 3%;

    /*stacking fieldsets above each other*/
    position: relative;
}

#msform fieldset {
    background: white;
    border: 0 none;
    border-radius: 0.5rem;
    box-sizing: border-box;
    width: 750px;
    height: 800px;
/*     margin-left: 95px; */
    padding-bottom: 20px;
    margin-left: 225px;

    /*stacking fieldsets above each other*/
    position: relative;
}

/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
    display: none;
}

#msform fieldset .form-card {
    text-align: left;
    color: #9E9E9E;
}

#msform input, #msform textarea {
    padding: 0px 8px 4px 8px;
    border: none;
    border-bottom: 1px solid #ccc;
    border-radius: 0px;
    margin-bottom: 25px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
/*     font-family: montserrat; */
    color: #2C3E50;
    font-size: 16px;
    letter-spacing: 1px;
}

#msform input:focus, #msform textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: none;
    font-weight: bold;
    border-bottom: 2px solid skyblue;
    outline-width: 0;
}

/*Buttons*/
#msform .action-button {
    width: 100px;
    background: #7ca3f5;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px;
}


/*Previous Buttons*/
#msform .action-button-previous {
     width: 100px; 
     background: #616161; 
     font-weight: bold; 
     color: white; 
     border: 0 none; 
     border-radius: 0px; 
     cursor: pointer; 
     padding: 10px 5px; 
     margin: 10px 5px; 
}



/*The background card*/
.card {
    z-index: 0;
    border: none;
    border-radius: 0.5rem;
    position: relative;
}

/*FieldSet headings*/
.fs-title {
    font-size: 25px;
    color: #2C3E50;
    margin-bottom: 10px;
    font-weight: bold;
    text-align: left;
}

/*progressbar*/
#progressbar {
    margin-bottom: 30px;
    overflow: hidden; 
    color: lightgrey;
    width: 800px;
    text-align: center;
/*     margin-left: 67px; */
	margin-left: 205px;
}


#progressbar .active {
    color: #000000;
}

#progressbar li {
    list-style-type: none;
    font-size: 12px;
    width: 25%;
    float: left;
    position: relative;
}

/*Icons in the ProgressBar*/
#progressbar #before:before {
/*     font-family: FontAwesome; */
    content: "\f023";
}

#progressbar #goal:before {
/*     font-family: FontAwesome; */
    content: "\f007";
}

#progressbar #after:before {
/*     font-family: FontAwesome; */
    content: "\f09d";
}

#progressbar #finish:before {
    content: "\f00c";
}

/*ProgressBar before any progress*/
#progressbar li:before {
    width: 50px;
    height: 50px;
    line-height: 45px;
    display: block;
    font-size: 18px;
    color: #ffffff; 
    background: lightgray;
    border-radius: 50%;
    margin: 0 auto 10px auto;
    padding: 2px;
}

/*ProgressBar connectors*/
#progressbar li:after {
    content: '';
    width: 100%;
    height: 2px;
    background: lightgray;
    position: absolute;
    left: 0;
    top: 25px;
    z-index: -1;
}

/*Color number of the step and the connector before it*/
#progressbar li.active:before, #progressbar li.active:after {
    background: #7ca3f5;
}

#contents{
	right: 50%;
    left: 50%;
    margin: -50px 0 0 -50px;
    text-align: center;
}

/* content style */
#title{font-size: 15px; font-weight: bold;}

#article{color: black; font-size: 18px; font-weight: bold;}

#information {display: flex; float: right; margin-top: 12px; font-weight: bold; font-size: 17px; margin-right: 19px;}


</style>


<script type="text/javascript">

$(document).ready(function(){
	
	var current_fs, next_fs, previous_fs; //fieldsets
	var opacity;
	
	

	//1번째 다음 버튼
	$(".next").click(function(){
		console.log("다음 버튼 클릭");
		
	  
		//유효성 검사
		if($("#bfTitle").val() == ""){
	 		console.log("제목을 입력하세요")
	 		$("#bfTitleError").html("* 제목을 입력해주세요")
	 		$("#bfTitleError").css("color","red")
		return false
		
	 	} 
		
		if ($("#height").val() == ""){
	 		console.log("신장 정보를 입력하세요")
	 		$("#heightError").html("* 신장 정보를 입력해주세요")
	 		$("#heightError").css("color","red")
	 		return false
		} 
		
		if($("#gender").val() == "") {
		 	console.log("성별을 입력하세요")
		 	$("#genderError").html("* 성별을 입력해주세요")
		 	$("#genderError").css("color","red")
		 	return false
		}
			
			if ($("#weight").val() == ""){
		 	console.log("현재 몸무게를 입력하세요")
		 	$("#weightError").html("* 현재 몸무게를 입력해주세요")
		 	$("#weightError").css("color","red")
		 	return false
		} 
			
			if ($("#bfExercise").val() == ""){
		 	console.log("운동 종류를 입력하세요")
		 	$("#bfExerciseError").html("* 운동 종류를 입력해주세요")
		 	$("#bfExerciseError").css("color","red")
		 	return false
		} 
			
			 
			 
	    current_fs = $(this).parent();
	    next_fs = $(this).parent().next();
	    
	    
	    //Add Class Active
	    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	    
	    //show the next fieldset
	    next_fs.show(); 
	    //hide the current fieldset with style
	    current_fs.animate({opacity: 0}, {
	        step: function(now) {
	            // for making fielset appear animation
	            opacity = 1 - now;

	            current_fs.css({
	                'display': 'none',
	                'position': 'relative'
	            });
	            next_fs.css({'opacity': opacity});
	        }, 
	        duration: 600
	    });
	    
	    
	});
	
	
	//2번째 다음 버튼
	$(".next2").click(function(){
		console.log("다음 버튼 클릭");
		
	  
		//유효성 검사
		if ($("#gWeight").val() == ""){
			 console.log("목표 체중을 입력하세요")
			 $("#gWeightError").html("* 목표 체중을 입력해주세요")
			 $("#gWeightError").css("color","red")
			 return false
		} 
			
			if ($("#sDate").val() == ""){
			 console.log("시작일을 입력하세요")
			 $("#sDateError").html("* 시작일을 입력해주세요")
			 $("#sDateError").css("color","red")
			 return false
		}
			
			if ($("#eDate").val() == ""){
			 console.log("종료일을 입력하세요")
			 $("#eDateError").html("* 종료일을 입력해주세요")
			 $("#eDateError").css("color","red")
			 return false
		}
			
		if ($("#seleExercise").val() == ""){
			 console.log("선택 운동을 입력하세요")
			 $("#seleExerciseError").html("* 선택 운동을 입력해주세요")
			 $("#seleExerciseError").css("color","red")
			 return false
		}
			
		if ($("#beforeCon").val() == ""){
			 console.log("다짐글을 입력하세요")
			 $("#beforeConError").html("* 다짐글을 입력해주세요")
			 $("#beforeConError").css("color","red")
			 return false
		}
			
			 
			 
	    current_fs = $(this).parent();
	    next_fs = $(this).parent().next();
	    
	    
	    //Add Class Active
	    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	    
	    //show the next fieldset
	    next_fs.show(); 
	    //hide the current fieldset with style
	    current_fs.animate({opacity: 0}, {
	        step: function(now) {
	            // for making fielset appear animation
	            opacity = 1 - now;

	            current_fs.css({
	                'display': 'none',
	                'position': 'relative'
	            });
	            next_fs.css({'opacity': opacity});
	        }, 
	        duration: 600
	    });
	    
	    
	});
	
	//3번째 다음 버튼
	$(".next3").click(function(){
		console.log("다음 버튼 클릭");
		
	  
		//유효성 검사
		if ($("#cWeight").val() == ""){
			 console.log("변화된 몸무게를 입력하세요")
			 $("#cWeightError").html("* 변화된 몸무게를 입력해주세요")
			 $("#cWeightError").css("color","red")
			 return false
		} 
			
			if ($("#gResult").val() == ""){
			 console.log("결과를 입력하세요")
			 $("#gResultError").html("* 결과를 입력해주세요")
			 $("#gResultError").css("color","red")
			 return false
		}
			
			if ($("#afterCon").val() == ""){
			 console.log("후기글을 입력하세요")
			 $("#afterConError").html("* 후기글을 입력해주세요")
			 $("#afterConError").css("color","red")
			 return false
		}
			
			 
	    current_fs = $(this).parent();
	    next_fs = $(this).parent().next();
	    
	    
	    //Add Class Active
	    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	    
	    //show the next fieldset
	    next_fs.show(); 
	    //hide the current fieldset with style
	    current_fs.animate({opacity: 0}, {
	        step: function(now) {
	            // for making fielset appear animation
	            opacity = 1 - now;

	            current_fs.css({
	                'display': 'none',
	                'position': 'relative'
	            });
	            next_fs.css({'opacity': opacity});
	        }, 
	        duration: 600
	    });
	    
	    
	});
	
	
	
	//이전 버튼
	$(".previous").click(function(){
	    
	    current_fs = $(this).parent();
	    previous_fs = $(this).parent().prev();
	    
	    //Remove class active
	    $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	    
	    //show the previous fieldset
	    previous_fs.show();

	    //hide the current fieldset with style
	    current_fs.animate({opacity: 0}, {
	        step: function(now) {
	            // for making fielset appear animation
	            opacity = 1 - now;

	            current_fs.css({
	                'display': 'none',
	                'position': 'relative'
	            });
	            previous_fs.css({'opacity': opacity});
	        }, 
	        duration: 600
	    });
	});
	
	//유효성 검사 메세지 초기화
	$("#bfTitle").focus(function(){
	   $("#bfTitleError").html("")
	  })
		   
	$("#height").focus(function(){
		$("#heightError").html("")
	})
		   
	$("#gender").focus(function(){
		$("#genderError").html("")
	})
	
	$("#weight").focus(function(){
		$("#weightError").html("")
	})
	
	$("#bfExercise").focus(function(){
		$("#bfExerciseError").html("")
	})
		   
	$("#gWeight").focus(function(){
		$("#gWeightError").html("")
	})
		   
	$("#sDate").focus(function(){
		$("#sDateError").html("")
	})
	
	$("#eDate").focus(function(){
		$("#eDateError").html("")
	})
	
	$("#seleExercise").focus(function(){
		$("#seleExerciseError").html("")
	})
		   
	$("#beforeCon").focus(function(){
		$("#beforeConError").html("")
	})
		   
	$("#cWeight").focus(function(){
		$("#cWeightError").html("")
	})
		   
	$("#gResult").focus(function(){
		$("#gResultError").html("")
	})
		   
	$("#afterCon").focus(function(){
		$("#afterConError").html("")
	})


	//날짜
	//기간 설정 - 시작일
	$( function() {
	    $( "#sDate" ).datepicker({
	    	showButtonPanel: true,
	    	closeText: '닫기',
	    	dateFormat: "yy-mm-dd"
	    });
	  } );
    
	//기간 설정 - 목표일
	$( function() {
	    $( "#eDate" ).datepicker({
	    	showButtonPanel: true,
	    	closeText: '닫기',
	    	dateFormat: "yy-mm-dd"
	    });
	  } );
	
	
	//게시글 포인트
	$("#btnInsert").click(function() {
		console.log("게시글 등록");	
		confirm("게시글을 등록하시겠습니까?");
		
		$(this).parents("form").submit();
		alert("50 포인트가 적립됐습니다");
		
	})
		
	
})

</script>


</head>
<body>

<div id="contents">
<!-- MultiStep Form -->
<div class="container-fluid" id="grad1">
    <div class="row justify-content-center mt-0">
        <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2" style="max-width: 1200px;">
            <div class="card px-0 pt-4 pb-0 mt-3 mb-3" style="width: 1200px;">
                <h1><strong style="font-size: 40px; text-align: center;">Before & After 게시글</strong></h1><br><br>
                <p style="font-size: 15px; text-align: center;">게시글을 작성해주세요</p><br><br>
                <div class="row">
                    <div class="col-md-12 mx-0">
                    
                        <form id="msform" method="post" action="/board/bfWrite" enctype="multipart/form-data">
                        
                        
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li class="active" id="before"><strong>Before</strong></li>
                                <li id="goal"><strong>Goal</strong></li>
                                <li id="after"><strong>After</strong></li>
                                <li id="finish"><strong>Finish</strong></li>
                            </ul><br><br>
                            
                            <!-- fieldsets -->
			            <fieldset>
				            <div class="form-card"><br><br>
				             <h2 style="color: black; text-align: left;">Before</h2><br><br>
				             	<label for="bfTitle" id="title">제목</label>
									<input type="text" id="bfTitle" name="bfTitle" placeholder="제목을 입력해주세요">
									<div id="bfTitleError" class="resMsg"></div>
				                 <br><br>
				                        
							<h3 id="article">운동 전 정보</h3><br><br>
								<label for=	"height" id="title">신장</label><br>
									<input type="number" id="height" name="height" placeholder="숫자만 입력해 주세요" style="width: 550px;"><span id="information">kg</span>
									<div id="heightError" class="resMsg"></div>
				                <br>
				                 <label for="gender" id="title" style="margin-right: 15px;">성별</label><br>
				                 	<input type="text" id="gender" name="gender" placeholder="여성 / 남성">
<!-- 									<input type="radio" id="gender" name="gender" value="여성" style="width: 14px; margin-top: 16px;"><span style="margin-left: 20px; display: block; margin-top: -39px;">여성</span> -->
<!-- 									<input type="radio" id="gender" name="gender" value="남성" style=" display: block; width: 14px; margin-top: -14px; margin-left: 61px"><span style="margin-left: 80px; display: block; margin-top: -39px;">남성</span> -->
				                 	<div id="genderError" class="resMsg"></div>
				                 <br>
				                 <label for="weight" id="title">몸무게</label><br>
									<input type="number" id="weight" name="weight" placeholder="현재 몸무게를 입력해주세요 *숫자만 입력하세요"  style="width: 550px;"><span id="information">cm</span>
									<div id="weightError" class="resMsg"></div>
				                  <br>
				                  <label for="bfExercise" id="title">운동종류</label>
				                    <input type="text" id="bfExercise" name="bfExercise" placeholder="현재 하고 있는 운동종류를 입력해주세요">
				                    <div id="bfExerciseError" class="resMsg"></div>
				                  <br>
				                  <label for="file" id="title">첨부파일</label><br>
									<jsp:include page="../file/upload.jsp" /> 
								</div>

								<br><br>
			                        <input type="button" name="next" class="next action-button" onClick="javascript:window.scrollTo(0,0)" value="다음">
						
								 <br><br><br><br><br><br><br><br>
						</fieldset>
						
						
			                            
						<fieldset>
							<div class="form-card">
								<h3 id="article">설정 목표</h3>
									<br><br> 
								<label for="gWeight" id="title">목표 체중</label><br>
									<input type="number" id="gWeight" name="gWeight" placeholder="목표 체중을 입력해주세요 *숫자만 입력하세요" style="width: 550px;"><span id="information">kg</span>
									<div id="gWeightError" class="resMsg"></div>
								<br>
								<label for="date" id="title">목표 기간</label>
									<input type="text" id="sDate" name="sDate" placeholder="시작일: YYYY-MM-DD"> ~ 
									<div id="sDateError" class="resMsg"></div>
									<input type="text" id="eDate" name="eDate" placeholder="목표일: YYYY-MM-DD">
									<div id="eDateError" class="resMsg"></div>
								<br>
								<label for="seleExercise" id="title">선택 운동</label>
									<input type="text" id="seleExercise" name="seleExercise" placeholder="선택한 운동을 입력해주세요">
									<div id="seleExerciseError" class="resMsg"></div>
								<br>
					
								<h4 style="color: black" id="article">다짐글</h4><br><br>
									<textarea rows="20" cols="50" id="beforeCon" name="beforeCon" placeholder="다짐글을 작성해주세요"></textarea>
									<div id="beforeConError" class="resMsg"></div>
							
							</div>                            
			                      <br><br>
									<input type="button" name="previous" class="previous action-button-previous" onClick="javascript:window.scrollTo(0,0)"
			                                 value="이전"/>
			                        <input type="button" name="next" class="next2 action-button" onClick="javascript:window.scrollTo(0,0)"
			                                 value="다음"/>
                            
                            <br><br><br><br><br><br><br><br>
						</fieldset>

                            
						<fieldset>
							<div class="form-card"><br><br>
								<h2 style="color: black">After</h2> <br><br>
								<h3 id="article">운동 후 현재 정보</h3><br><br>
								<label for="cWeight" id="title">몸무게</label><br>
									<input type="number" id="cWeight" name="cWeight" placeholder="운동 후 몸무게를 입력해주세요 *숫자만 입력하세요" style="width: 550px;"><span id="information">kg</span>
									<div id="cWeightError" class="resMsg"></div>
								<br><br>
	            
	            				<label for="gResult" id="title" style="margin-right: 15px;">결과</label>
									<select id="gResult" name="gResult" style="font-size: 13px; color: black;">
										<option value="매우 성공" selected="selected">매우 성공</option>
										<option value="약간 성공">약간 성공</option>
										<option value="변화 없음">변화 없음</option>
										<option value="약간 실패">약간 실패</option>
										<option value="매우 실패">매우 실패</option>
									</select>
									<div id="gResultError" class="resMsg"></div>
								<br><br><br>
	                            
								<h3 id="article">후기글</h3><br><br>
									<textarea rows="20" cols="50" id="afterCon" name="afterCon" placeholder="후기글을 작성해주세요"></textarea>
									<div id="afterConError" class="resMsg"></div>
							</div>
							
							<br><br>
							
								<input type="button" name="previous" class="previous action-button-previous" onClick="javascript:window.scrollTo(0,0)"
                                 value="이전"/>
                                <input type="button" name="next" class="next3 action-button" onClick="javascript:window.scrollTo(0,0)"
                                 value="다음"/>
                                 
                                 <br><br><br><br><br><br><br><br>
                                 
						</fieldset>
                            
						<fieldset>
							<div class="form-card">
							<br><br><br><br>
								<h2 style="text-align: center;">게시글을 등록하시겠습니까?</h2>
							<br><br><br><br>
                                    
								<button id="btnCancle">
									<a class="btn block" onclick="if ( confirm('정말 취소하시겠습니까?') == false ) { return false; }" href="/board/bfBoard" style="text-decoration: none; color: white; font-size: 14px; font-weight: bold; ">취소</a>
								</button>
                                    
								<button type="submit" id="btnInsert" name="btnInsert" style="color: white; font-size: 14px;">등록</button>
                                    
							</div>
						</fieldset>
                        
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


</body>
</html>