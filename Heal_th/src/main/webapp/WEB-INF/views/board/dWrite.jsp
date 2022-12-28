<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../layout/header.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<style type="text/css">
* {
    margin: 0;
    padding: 0;
}

header {margin-bottom: 0px; }

#btnCancle {
    width: 100px;
    background: #616161;
    font-size: 21px;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 5px;
    cursor: pointer;
    padding: 10px 5px; 
    margin: 10px 5px;
    padding-bottom: 14px; 
	height: 52px;
	width: 100px;
	margin-left: 195px;
	margin-right: 18px;
}

#btnWrite {
    width: 100px;
    background: #7ca3f5;
    font-size: 21px;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 5px;
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
    margin-left: 220px;
    padding-bottom: 20px;

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

/*Blue Buttons*/
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
    margin-left: 195px;
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
#progressbar #before:before { content: "\f023"; }

#progressbar #goal:before {
    content: "\f007";
}

#progressbar #after:before {
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


</style>


<script type="text/javascript">
$(document).ready(function(){
	
	var current_fs, next_fs, previous_fs; //fieldsets
	var opacity;
	

	$(".next").click(function(){
		
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
	    
	    if($("#bfTitle").val().length == 0) {
				$("#bfTitle").focus(function() {
					alert("제목 입력");					
				});
			
				return false;
			
		}
			
	    
	});
	

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
	
	$("#btnInsert").click(function() {
		
		$(this).parents("form").submit();
		alert("50 포인트가 적립됐습니다");
	})

})


</script>


</head>

<body>

<div id="contents">
<!-- MultiStep Form -->
<div class="container-fluid" id="grad1" style="width: 1200px;">
    <div class="row justify-content-center mt-0" style="width: 1200px;">
        <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2" style="width: 1200px;">
            <div class="card px-0 pt-4 pb-0 mt-3 mb-3" style="width: 1200px;">
                <h1><strong style="font-size: 40px; text-align: center;">식단 공유 게시글</strong></h1><br><br>
                <p style="font-size: 15px; text-align: center;">게시글을 작성해주세요</p><br><br>
                <div class="row">
                    <div class="col-md-12 mx-0">
                    
                        <form id="msform" method="post" action="/board/dWrite" enctype="multipart/form-data">
                        
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li class="active" id="before" style="margin-left: 90px;"><strong>Start</strong></li>
                                <li id="goal"><strong>Content</strong></li>
                                <li id="finish"><strong>Finish</strong></li>
                            </ul><br><br>
                            
                            <!-- fieldsets -->
			            <fieldset>
				            <div class="form-card"><br><br>
				             	<label for="bfTitle">제목</label>
									<input type="text" id="dTitle" name="dTitle" placeholder="제목을 입력해주세요" required id="dTitle">
				                 <br><br>
				                        
								<label for=	"prodClassification">제품 분류</label>
									<input type="text" id="prodClassification" name="prodClassification" required id="prodClassification">
				                <br>
				                <label for="file">첨부파일</label><br>
									<jsp:include page="../file/upload.jsp" /> 
								</div>

								<br><br>
			                        <input type="button" name="next" class="next action-button" onClick="javascript:window.scrollTo(0,0)" value="다음">
						</fieldset>
			                            
						<fieldset>
							<div class="form-card">
								<br><br>
								<h4 style="color: black">내용</h4><br><br>
									<textarea rows="20" cols="50" id="dContent" name="dContent" placeholder="게시글을 작성해주세요"></textarea>
									
							</div>  <br><br><br>                          
							
							<input type="button" name="previous" class="previous action-button-previous" onClick="javascript:window.scrollTo(0,0)"
                                 value="이전"/>
                                <input type="button" name="next" class="next action-button" onClick="javascript:window.scrollTo(0,0)"
                                 value="다음"/>
							
							<br><br><br><br><br><br><br>
							
						</fieldset>
                            
						<fieldset>
							<div class="form-card">
							<br><br><br><br>
								<h2 style="text-align: center;">게시글을 등록하시겠습니까?</h2>
							<br><br><br>
                                    <a class="btn block" id="btnCancle" onclick="if ( confirm('정말 취소하시겠습니까?') == false ) { return false; }" href="/board/verifyBoard" >취소</a>
									<button type="submit" id="btnWrite">등록</button>
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









