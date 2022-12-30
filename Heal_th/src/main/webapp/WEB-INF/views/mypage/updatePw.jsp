<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

<script type="text/javascript">
	$(document).ready(function(){
	$("#chkPw").click(function(){
		console.log("click")
		$("#chkUsingPwForm").submit()
	})
		if(${isUsingPw} == false){
			$("#resultPw").html("비밀번호를 다시 한번 확인해주세요")
			$("#resultPw").css("color","red")
				
		}
		$("#cancel").click(function(){
			console.log("취소하기")
			history.go(-1)
		})
	})

		
	function chkUsingPw(){
		console.log("click")
		$("#chkUsingPwForm").submit()
	}	
	
</script>

<style type="text/css" >
#beforeUpdatePw{
	width: 1200px;
	margin : 0 auto;
	text-align: center;
}

</style>

<body id="updatePw">

	<div id="beforeUpdatePw">
		<div id="boxArea">
			<div id="title">
				<span id="titleForHead">비밀번호 변경하기</span>
			</div>
			
			<div id="description">
				<<span class="formTitle newPw">비밀번호 변경 전 현재 사용 중인 비밀번호를 입력해주세요</span>
			</div>
			
			<div id="beforeUpdatePwForm">
				<form action="/mypage/chkUsingPw" method="post" id="chkUsingPwForm">
					<div id="showid"> 
						<label for="userId">	
							<span class="formTitle userId">아이디</span>
						</label>
						<input type="text" id="userId" name="userId" class="inputInfo" value="${userId}" readonly="readonly">
					</div>
					
					<div id="inputUsingPw">
						<label for="userPw">
							<span class="formTitle usingPwChk">현재 비밀번호</span>
						</label>		
							<input type="password" id="userPw" name="userPw" class="inputInfo">
						<div id="resultPw" class="resMsg"></div>
					</div>

					<div id="btn">
						<button type="button" id="chkPw" onclick="chkUsingPw()">비밀번호 확인</button>
						<button type="button" id="cancel">취소하기</button>
					</div>
			
					<div id="searchPw">
						<a href="/login/searchPw"><span>비밀번호가 기억나지 않아요</span></a>
					
					</div>
			
				</form>
			</div>
	</div>
	</div>

</body>
</html>