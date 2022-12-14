<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="icon" href="/resources/img/favicon.ico" type="image/x-icon"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	console.log(${sessionScope.userNo})
	$("#wdButton").click(function(){
		if($("#bankName").val()=="" && $("#wdUsername").val()=="" &&$("#wdAccount").val()==""){
			alert("입력하지 않은 값이 있습니다.");
			return false;
		}
		
		$.ajax({
			type: "post"
			, url: "/message/insert"
			, data: {
				userNo: ${sessionScope.userNo},
				messageCon: "인출신청이 완료되었습니다."
			}
			, dataType: "json"
			, success: function(res){
				console.log("AJAX 성공")
				}
			, error: function(){
				console.log("AJAX 실패")
			}
		})
	})
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

.discharge{
	width: 540px;
	margin: 20px auto;
	text-align: center;
	vertical-align: middle;
}

.discharge p {
	margin: 5px;	
}

input {
	width: 230px;
	height: 36px;
	border: 1px solid silver;
}
#wdButton {
	width: 230px;
    height: 36px;
    background-color: transparent;
    border: 2px solid #7ca3f5;
    color:#7ca3f5;
    font-size:17px;
    border-radius: 8px;
    padding-top: 5px;
    cursor: pointer;
}

input {
	padding-left: 5px;
	text-align: center;
}

#wdButton {
	width: 238px;
    margin-top: 10px;
}

#wdInfo {
	width: 280px;
	margin: 5px auto;
	border: 1px solid #7ca3f5;
}

</style>
</head>
<body>
	<div class="discharge">
		<form action="./dischargeProc" method="post">
			<h1>인출신청</h1>
			<div id="wdInfo">
				<input type="hidden" name="userNo" value="${userno }">
				<p>은행명</p>
				<input type="text" id="bankName" name="bankName" placeholder="은행명을 입력해주세요">
				<p>예금주</p>
				<input type="text" id="wdUsername" name="wdUsername" placeholder="예금주 이름을 입력해주세요">
				<p>계좌번호</p>
				<input type="text" id="wdAccount" name="wdAccount" placeholder="계좌번호를 입력해주세요">
				<p>인출금액</p>
				<input type="hidden" name="wdAmount" value=${param.wdAmount }>
				<p>${param.wdAmount }원</p>
			</div>
			<button id="wdButton">인출신청</button>
			<p style="color: red; padding-top: 12px;">인출신청시 영업일기준 2~3일내 환불계좌로 입금됩니다.</p>
		</form>
	</div>
</body>
</html>