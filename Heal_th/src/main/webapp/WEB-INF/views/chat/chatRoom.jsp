<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp" %>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {

	var createRoomNo = <%= request.getAttribute("createRoomNo")%>
	console.log("받은 createRoom : " + createRoomNo)
// 	var createRoomNo = null;
		
	if ( createRoomNo == null || createRoomNo =="" || createRoomNo == "undefined") {
		console.log ( "createRoomNo가 값이 없음" )
	} else {
		console.log( createRoomNo );
		goChat( createRoomNo );
		
		$("#"+createRoomNo).attr("disabled", true);
		$("#"+createRoomNo).css("background-color", "#f4f4f4");
	}
		
	/* 리스트를 누르면 해당리스트는 안눌리기 */
	$(".roomBtn").click(function() {
		
		$(this).attr("disabled", true);
		$(this).css("background-color", "#f4f4f4");
		
		$(".roomBtn").not(this).attr("disabled", false);
		$(".roomBtn").not(this).css("background-color", "#ffffff");
		
		console.log(".roomBtnClick")
	})
	
	
})




function goChat(roomNo) {
	console.log(".room 클릭")
	
	$.ajax({
			
		type:"get"			//요청 메소드
		, url: "/chat/chatArea"	//요청 URL
		, data: { 
			roomNo : roomNo
		}   //요청 파라미터
			
	, dataType: "html"		//응답 데이터 형식
	, success: function( res ) {
		console.log("AJAX 성공")
			
		//응답 데이터 반영
		$("#result").html( res )
		
		
	}
		
	, error: function() {
		console.log("AJAX 실패")
	}	
		
	})
}

</script>



<style type="text/css">

button, input {
	background: transparent;
    border: none;
	outline: 0;
}

/* 전체 영역 */
#backGround{
	display: flex;
	justify-content: space-between;
	width: 1200px;
	height: 700px;
	margin: 0 auto;
}


/* 좌측 메뉴 영역 */
#roomMenu {
	box-sizing: border-box;
	border-left: 1px solid #eee;
	border-right: 1px solid #eee;
	border-bottom: 1px solid #eee;
}


/* 내 아이디 부분 */
#myId {
	display:flex;
	align-items: center;
	width: 300px;
	height: 70px;
	padding-left: 16px;
	font-size: 20px;
	font-weight: 700;
	color: #fff;
	background: linear-gradient(90deg, #7ca3f5 , #c583d6);
}

/* 방 리스트 버튼 */
.roomBtn {
	display: flex;
	align-items: center;
	width: 300px;
	height: 74px;
	background-color: #fff;
	border-top: 1px solid #eee;
	border-bottom: 1px solid #eee;
	line-height: 50px;
	margin-top: -1px;
	position: relative;
}

.roomBtn:hover {
	background-color: #f4f4f4;
}

/* 왼쪽 사진부분 */
.left {
	display: flex;
	width: 44px;
	height: 44px;
	margin-right: 14px;
	margin-left: 16px;
}

.left > img {
	width: 44px;
	height: 44px;
	border-radius: 20px;
}


/* 오른쪽 닉네임, 마지막채팅 부분 */
.right {
	width: 70%;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	overflow: hidden;
}

.right > p {
	max-width: 210px;
	min-width: 0;
	height: 22px;
}

/* 닉네임 */
.reciverNick {
	display: flex;
	align-items: center;
	font-weight: 600;
	color: #222;
	font-size: 17px;
}

/* 마지막 채팅 */
.lastChat {
	align-items: center;
	font-size: 15px;
	color: #666;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis; 
	line-height: 1.5;
}

.timeView {
	position: absolute;
	right: 20px;
	top: 15px;
	font-size: 13px;
	color: #aaa;
}

.newChat {
	border: 1px solid red;
}




#result {
	float: right;
	width: 900px;
}

/* 비어있을때 채팅 부분 */
#emptyChatArea {
	width: 900px;
	height: 700px;
	border-top: 1px solid #eee;
	border-right: 1px solid #eee;
	border-bottom: 1px solid #eee;
	background-color: #fcfcfc;
	display: flex;
    align-items: center;
    justify-content: center;
}

#emptyChatArea > img {
	height: 50px;
}


/* 2dept menu */

#twoDepth-list {
	width: 1400px;
}

#twoDepth-list a:nth-child(2){
	color: #b571e9;
	border-bottom: 2px solid #b571e9;
	margin-top: 1px;
	font-weight: 700;
}

#twoDepth-list a {
    width: 50%;
}

</style>

<body>
<!-- 1depth visual -->
<body>
<div id="subvisual">
	<div id="subvisual-A">
		<p id="subv-title">멘토와 채팅하기</p>
		<p id="subv-content">챌린지, 운동을 하며 궁금했던 점을 멘토들에게 궁금한점을 물어보세요.</p>
	</div>
</div>
<!-- 2dept Menu -->
<div id="twoDepth">
	<div id="twoDepth-list">
		<a href="/chat/intro">멘토 리스트</a>
		<a href="/chat/chatRoom">내 채팅목록</a>
	</div>
</div>

<div class="big-container">
<h3 style="margin: 0 auto; width: 1200px; text-align: center;">내 채팅목록</h3>
</div>


<div id="backGround">
	
	<div id="roomMenu">
		<div id="myId">
			${userId }님 안녕하세요.
		</div>
		<c:forEach items="${roomList }" var="room">

			<button class="roomBtn" id="${room.roomNo }" onclick="goChat(${room.roomNo })" >
				
				<div class="left">
					<c:if test="${not empty room.storedName }">
						<img src="${pageContext.request.contextPath}/upload/${room.storedName}" class="profilePhoto">
					</c:if>
					<c:if test="${empty room.storedName }">
						<img src="/resources/img/chat_default.png" class="profilePhoto">
					</c:if>
				</div>
				
				<div class="right">
					<p class="reciverNick">${room.userNick }</p>
					<p class="lastChat ${room.roomNo }">
						<!-- 같은 방번호일때 채팅 넣어주기 -->
						<c:forEach items="${lastChat }" var="lastChat">
						<c:if test="${room.roomNo == lastChat.roomNo }">
							${lastChat.chatContents }
							
							<!-- 채팅 온 시간 -->
							<span class="timeView">
								<fmt:parseDate value="${lastChat.chatTime }" var="date" pattern="yyyy.MM.dd HH:mm:ss"/>
								<fmt:formatDate value="${date }" pattern="a hh:mm" />
							</span>
						</c:if>
						
						</c:forEach> <!-- lastChat  -->
					</p>
				</div>
				
			</button>
				
<!-- 		</div> -->
		</c:forEach> <!-- ${roomList } -->
		
	</div>
	
	<div id="result">
		<div id="emptyChatArea">
			<img src="/resources/img/chat/chatRoom_logo.png" alt="득근득근">
		</div>
	</div>
</div>



</body>

<jsp:include page="webSocketArea.jsp" />
<%@include file="../layout/footer.jsp" %>

</html>