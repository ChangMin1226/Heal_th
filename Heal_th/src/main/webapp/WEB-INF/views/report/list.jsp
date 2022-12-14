<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$(".reportDelete").click(function(){ //신고삭제하기
		console.log(".reportDelete click")
		console.log($(this).val())
		if(confirm("신고를 삭제하시겠습니까?")){
			$.ajax({
				type: "post"
				,url: "/report/delete"
				,data: {
					reportNo:$(this).val() //신고번호
					}
				,dataType: "html"
				,success: function(reportList){
					console.log("신고목록 불러오기 성공")
					//응답 데이터 출력
					$("#reportList").html(reportList)
				}
				,error: function(){
					console.log("신고목록 불러오기 실패")
				}
			})
			
		}else{
			return false
		}
	})
	
	
	$(".postDelete").click(function(){ //게시글삭제하기
		console.log(".postDelete click")
		console.log($(this).val())
		if(confirm("게시글을 삭제하시겠습니까?")){
			$.ajax({
				type: "post"
				,url: "/report/deletePost"
				,data: {
					reportNo:$(this).val() //신고번호
					}
				,dataType: "html"
				,success: function(reportList){
					console.log("신고목록 불러오기 성공")
					//응답 데이터 출력
					$("#reportList").html(reportList)
				}
				,error: function(){
					console.log("신고목록 불러오기 실패")
				}
			})
			
		}else{
			return false
		}
	})
	$(".reportDelete").click(function(){
		
	})
	$(".userNink").click(function(){
		console.log($(this).text())
	    var form = $('<form>');
	    var obj = $('<input>');
	    obj.attr('type', 'hidden');
	    obj.attr('name', 'keyword');
	    obj.attr('value', $(this).text())
	    
	    form.append(obj);
	    
	    form.attr('method', 'post');
	    form.attr('action', '/admin/user');
	    var searchForm = "$('#searchIcon').click()"
	    $('body').append(form)
	    form.submit();
	})
})

</script>

<table id="reportListTable" class="table table-hover">
<thead>
<th style="width:200px">게시판 명</th>
<th style="width:686px" >제목</th>
<th style="width:200px" >글 작성자</th>
<th style="width:200px" >신고자</th>
<th colspan="2"></th>
</thead>
<tbody>
<c:forEach items="${reportList }" var="report">
	<tr>
<%-- 		<td>스크랩 번호 : ${scrap.scrapNo }</td> --%>
<%-- 		<td>카테고리 번호 : ${scrap.categoryNo }</td> --%>
<%-- 		<td>카테고리 : ${scrap.categoryName } 게시판</td> --%>
<%-- 		<td>글 번호 : ${scrap.boardNo }</td> --%>
		<td class="tbodytd">${report.categoryName } 게시판</td>
		<c:choose>
			<c:when test="${report.categoryNo eq 1}"> <!-- bf 게시판 -->
				<td><a href="/board/bfView?bfNo=${report.boardNo}" target='_blank'> ${report.title }</a></td>
			</c:when>
			<c:when test="${report.categoryNo eq 2}"> <!-- 운동인증 게시판 -->
				<td><a href="/board/verifyView?verifyNo=${report.boardNo}" target='_blank'> ${report.title }</a></td>
			</c:when>
			<c:when test="${report.categoryNo eq 3}"> <!-- 식단공유 게시판 -->
				<td><a href="/board/dView?dietNo=${report.boardNo}" target='_blank'> ${report.title }</a></td>
			</c:when>
			<c:otherwise>	<!-- 후기, 시설리뷰 게시판 -->
				<td><a href="/board/rView?reviewNo=${report.boardNo}" target='_blank'> ${report.title }</a></td>
			</c:otherwise>
		</c:choose>
		<td><a href='#' class="userNink">${report.wuserNick}</a></td><!-- 글 작성자 닉네임 -->
		<td><a href='#' class="userNink">${report.ruserNick}</a></td><!-- 신고자 닉네임 -->
		<td style="text-align:right"><button class="reportDelete" value="${report.reportNo}">신고반려</button></td>
		<td style="text-align:right"><button class="postDelete" value="${report.reportNo}">게시글삭제</button></td>
	</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>