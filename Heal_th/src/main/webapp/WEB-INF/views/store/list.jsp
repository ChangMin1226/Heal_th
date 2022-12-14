<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


// //검색 버튼
// $(".search_area button").on("click", function(e) {
// 	e.preventDefault();

// 	let type = $(".search_area select").val();
// 	let keyword = $(".search_area input[name='keyword']").val();

// 	if (!keyword) {
// 		alert("키워드를 입력하세요.");
// 		return false;
// 	}

// 	moveForm.find("input[name='type']").val(type);
// 	moveForm.submit();
// });






</script>

<style>



#cart{
	background-color: transparent;
	border: 2px solid #7ca3f5; 
	color:#7ca3f5;
	border-radius: 8px;
	text-align: center;
	flex:3;
	width: 100px;
	height: 32px;
	font-size:12px;
	margin-top:100px;
}


.title {
	margin-bottom: 40px;
}



.store {
	position: relative;
	flex: 3 2 30%;
	border: 1px solid #333;
	box-shadow: 1px 1px 10px 0px rgb(0 0 0/ 30%);
	border-radius: 10px;
	text-align: center;
	width: 400px;
	height: 300px;
}

.store-content {
/* 	margin-top: 30px; */
	height : 100%;
	width: 1200px;
	margin : 0 auto;
	display: flex;
	flex-wrap: wrap;
}

.store img {
	border: 0;
	margin-top: 20px;
	height: 100px;
	width: 200px;
}

.search_area {
	display: inline-block;
	text-align: center;
	margin-top: 30px;
}

.search_area input {
	height: 36px;
	width: 250px;
}

.search_area button {
	width: 100px;
	height: 36px;
}

.search_area select {
	height: 35px;
}



.pageInfo_wrap {
	text-align: center;
}

.pageInfo {
	list-style: none;
	display: inline-block;
	margin: 50px 0 0 100px;
}

.pageInfo li {
	float: left;
	font-size: 20px;
	margin-left: 18px;
	padding: 7px;
	font-weight: 500;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: underline;
}

.active {
	background-color: #cdd5ec;
}


.store-ul{
	display: flex;
	flex-wrap: wrap;
	width : 372px;
	height: 300px;
	background-color: #fff;
	margin-right: 42px;
	margin-bottom: 10px;
	align-content: flex-end;
    justify-content: center;
	padding-bottom: 35px;
	border:2px solid #7ca3f5;
	border-radius: 10px !important;
	
	    box-shadow: 0px 13px 54px -3px lightgrey;
}
.store-ul:nth-child(3n) {
    margin-right: 0px;
}   




.imgbox{
	border: 1px solid #ccc;
    width: 230px;
    height: 230px;
        display: block;
    box-sizing: border-box;
    margin: 10px;
}



.text-center {
	display: flex;
	justify-content: center;
	margin-top: 40px;
}

.pagination {
	display: flex;
	margin: 0;
}

.pagination > li{
	display: flex;
}

.pagination > li > a {
	display: flex;
	margin: 0 4px;
	width: 40px;
	height: 40px;
	border-radius: 20px !important;
	font-size: 16px;
	justify-content: center;
	align-items: center;
}



.search_area {
	display: inline-block;
	text-align: center;
	margin-top: 30px;
}

.search_area input {
	height: 36px;
	width: 250px;
}


.search_area button {
	width: 100px;
	height: 36px;
}

.search_area select {
	height: 35px;
}

#twoDepth-list a {
	padding: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #666666;
	font-size: 18px;
	font-weight: 400;
	width: 50%;
}

#twoDepth-list a:nth-child(1){
    color: #b571e9;
    border-bottom: 2px solid #b571e9;
    margin-top: 1px;
    font-weight: 700;
}

.big-container {
	text-align: center;
}

.imgbox18{
	background-image:url(/resources/img/store/18.jpg);
	width:200px; 
	margin:5px;
	padding: 5px;
} 

.imgbox17{
	background-image:url(/resources/img/store/17.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox16{
	background-image:url(/resources/img/store/16.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox15{
	background-image:url(/resources/img/store/15.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox14{
	background-image:url(/resources/img/store/14.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox13{
	background-image:url(/resources/img/store/12.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox12{
	background-image:url(/resources/img/store/13.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox11{
	background-image:url(/resources/img/store/11.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox10{
	background-image:url(/resources/img/store/10.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox9{
	background-image:url(/resources/img/store/9.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox8{
	background-image:url(/resources/img/store/8.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox7{
	background-image:url(/resources/img/store/6.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox6{
	background-image:url(/resources/img/store/7.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox5{
	background-image:url(/resources/img/store/5.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox4{
	background-image:url(/resources/img/store/4.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox3{
	background-image:url(/resources/img/store/3.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox2{
	background-image:url(/resources/img/store/2.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
.imgbox1{
	background-image:url(/resources/img/store/1.jpg);
	width:200px;
	margin:5px;
	padding: 5px;
} 
</style>


<body>
<div id="subvisual">
    <div id="subvisual-A">
        <p id="subv-title">득근 상점</p>
<!--         <p id="subv-content">나의 오늘 운동기록을 매일매일 기록해 봐요</p> -->
    </div>
</div>
<div id="twoDepth">
    <div id="twoDepth-list">
        <a href="/store/list">상점목록</a>
        <a href="/store/cartlist">장바구니목록</a>
		<a href="/store/orderlist">구매목록</a>
    </div>
</div><!-- subvisual 끝 -->


<div class="big-container">
	<h3>득근 상점</h3>
</div>





				<div class="store-content">
					<c:forEach items="${list }" var="StoreDto">
					<ul class="store-ul">
					<div class="imgbox${StoreDto.prodNo }" >
					</div>
					<div class="main" style="padding-top:23px;">
						<li class="li1" style="font-size:14px;">
							<a href="/store/view?prodNo=${StoreDto.prodNo }" id="store${StoreDto.prodNo }">${StoreDto.pName }</a>
						</li>
						<li>${StoreDto.pPrice } 원</li>
						<li>조회수 : ${StoreDto.pHit } </li>
					<button id="cart" ><a href="/store/cart?prodNo=${StoreDto.prodNo }">장바구니에 담기</a></button>
					</div><!-- main끝 -->


					</ul>
					</c:forEach>
				</div>




<!-- 			<div class="search_wrap text-center"> -->
<!-- 			<div class="search_area"> -->
<!-- 				<select name="type" id="type"> -->
<%-- 					<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option> --%>
<%-- 				</select> <input type="text" name="keyword" value="${pageMaker.cri.keyword }"> --%>
<!-- 				<button>검색</button> -->
<!-- 			</div> -->
<!-- 		</div> -->
		
		
		

	<form id="moveForm" method="get">
		<input type="hidden" id="prodNo" name="prodNo" value='<c:out value="${pageInfo.prodNo}"/>'> 
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }"> 
		<input type="hidden" name="type" value="${pageMaker.cri.type }">
	</form>


	<div class="text-center">
		<ul class="pagination pagination-sm">
	
		<%-- 첫 페이지로 이동 --%>
		<c:if test="${paging.curPage ne 1 }">
			<li><a href="/store/list"> &lt;&lt;  </a></li>	
		</c:if>
		

		
		<%-- 이전 페이지로 가기 --%>
		<c:if test="${paging.curPage > 1 }">
			<li><a href="/store/list?curPage=${paging.curPage - 1 }">&lt;</a></li>
		</c:if>
		
		
		
		<%-- 페이징 리스트 --%>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
	<c:if test="${paging.curPage eq i }">
		<li class="active"><a href="/store/list?curPage=${i }">${i }</a></li>
	</c:if>
		<c:if test="${paging.curPage ne i }">
			<li><a href="/store/list?curPage=${i }">${i }</a></li>
		</c:if>
		</c:forEach>
	
		
		
		<%-- 다음 페이지로 가기 --%>
		<c:if test="${paging.curPage < paging.totalPage }">
			<li><a href="/store/list?curPage=${paging.curPage + 1 }">&gt;</a></li>
		</c:if>
		

	
		<%-- 끝 페이지로 이동 --%>
		<c:if test="${paging.curPage ne paging.totalPage }">
			<li><a href="/store/list?curPage=${paging.totalPage }"> &gt;&gt;</a></li>	
		</c:if>
		
		</ul>
	</div>

</body>
<%@include file="../layout/footer.jsp" %>
</html>

