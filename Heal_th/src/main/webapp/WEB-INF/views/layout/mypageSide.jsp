<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
 
 <style type="text/css">
 
 #profileArea{
    display: flex;
    background-color: #f9fbfc;
    height: 100%;
    justify-content: flex-end;
        position: absolute;
    box-shadow: 5px 1px 8px 0 rgb(0 0 0 / 6%);
    border-left: 1px solid rgba(0,0,0,.08);
    
}
 
 #boxSide{
 	 width: 318px;
    background-color: white;
    height:100%;
 }
.pIcon{
	width: 160px;
    height: 160px;
    border-radius: 71px;
}
 .infoTitle{
	font-size: 20px;
	margin: 10px 0;
}
 
 #profilePhoto{
 	 padding: 10px 20px;
    text-align: center;
 
 }
#manageInfo{
	
    padding: 30px;
}

#intro{
	margin-top: 8px;
    padding-left: 39px;
    height: 40px;
}
.info{
	z-index: 99;
} 

#pointMoney,#listOfActivies,#shoppingLst{

	margin-top: 40px;
}

.rankingImg,#moneyIcon,#pointIcon{
	width: 30px;
	height:30px;

}
#moneypointRanking{
	padding: 34px 20px;
}
.rankingTitle{

	font-size: 17px;
    margin-left: 15px;
}
#ranking{
    text-align: center;
}
#dgMoney{
	float: left;
  margin: 20px 20px 0 33px;
}
#point {
	    margin-top: 20px;
    text-align: center;
}
.moneyPointTitle{
	font-size: 17px;
}

 </style>
 

	
		
	<div id="profileArea">
		<div id="boxSide">
			<div id="profilePhoto">
				<c:if test="${storedName == null }">
					<a href="/mypage/setProfile"><img src="/resources/img/mypage/userprofile.png" class="pIcon"></a>
				</c:if>
				<c:if test="${storedName != null}">
					<a href="/mypage/setProfile"><img src="${pageContext.request.contextPath}/upload/${storedName.storedName}" class="pIcon"></a>
				</c:if>
			</div>
		
			
			<div id="moneypointRanking">
				<div id="ranking">
					<c:choose>
						<c:when test="${mypageInfo.rankingNo ==1}">
							<img src="/resources/img/mypage/chicken.png" class="rankingImg" >
							<span class="rankingTitle">????????????</span>
						</c:when>
							<c:when test="${mypageInfo.rankingNo ==2}">
							<img src="/resources/img/mypage/healthy.png" class="rankingImg" >
							<span class="rankingTitle">?????????</span>
						</c:when>
							<c:when test="${mypageInfo.rankingNo ==3}">
							<img src="/resources/img/mypage/trainer.png" class="rankingImg" >
							<span class="rankingTitle">????????????</span>
						</c:when>
							<c:when test="${mypageInfo.rankingNo ==4}">
							<img src="/resources/img/mypage/master.png" class="rankingImg" >
							<span class="rankingTitle">?????????</span>
						</c:when>
							<c:when test="${mypageInfo.rankingNo ==5}">
							<img src="/resources/img/mypage/god.png" class="rankingImg" >
							<span class="rankingTitle">?????????</span>
						</c:when>
					
					</c:choose>
				
				</div>
				<div id="dgMoney">
					<img src="/resources/img/mypage/dollarcoin.png" id="moneyIcon">
					<span class="moneyPointTitle"><a href="/dgmoney/view ">${mypageInfo.dgMoney}???</a></span>
				</div>
				<div id="point">
					<img src="/resources/img/mypage/point.png" id="pointIcon">
					<span class="moneyPointTitle">${mypageInfo.point}</span>
				</div>
			</div>
			<div id="intro">
				<c:choose>
					<c:when test="${mypageInfo.userIntro == null}">
						<a href="/mypage/setProfile">??? ??? ????????? ??????????????????</a>
					</c:when>
					<c:otherwise>
						<a href="/mypage/setProfile">${mypageInfo.userIntro}</a>
					</c:otherwise>
				
				</c:choose>
			</div>
		
			<div id="manageInfo">
					<div id="userInfoAdmin">
						<ul id="updateInfo">
							<li class="infoTitle updateTitle" >?????? ?????? ??????</li>
							<li class="info updateUser"><a href="/mypage/updateInfo">?????? ?????? ??????</a></li>
							<li class="info updatePw"><a href="/mypage/updatePw">???????????? ??????</a></li>
							<li class="info dropOut"><a href="/mypage/dropOut">????????????</a></li>
							<li class="info logOut"><a href="/mypage/logout">????????????</a></li>
							
						</ul>
					</div>	
					<div id="pointMoney">
						<ul id="moneyAdmin">
							<li class="infoTitle dgMoneyPoint">????????????</li>
							<li class="info dgMoney"><a href="/dgmoney/view" onclick="window.open('/dgmoney/view', '_blank','width=550, height=260, left=600, top=200'); return false;">????????????</a></li>
						</ul>
					</div>
					
					<div id="shoppingLst">
						<ul id="shopping">
							<li class="infoTitle payment">??????/????????????</li>
							<li class="info cart"><a href="/store/cartlist">????????????</a></li>
							<li class="info payList"><a href="/store/orderlist">?????? ??????</a></li>
						</ul>
					
					</div>
					
					<div id="listOfActivies">
						<ul id="acitivies">
							<li class="infoTitle dgActivies">?????? ?????? ??????</li>
							<li class="info attend"><a href="/check/check" onclick="window.open('/check/check', '_blank','width=500, height=700, left=600, top=200'); return false;">????????????</a></li>
							<li class="info scrap"><a href="/scrap/scrap">????????? ??????</a></li>
						</ul>
					
					</div>
					
					
			</div>
		</div>
	</div>


</html>