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
</head>
<body>

<div class="container">

<h1>공지사항</h1>
<hr>

<table border="1px">
<thead>
	<tr>
		<th style="width: 10%;">글번호</th>
		<th style="width: 50%;">제목</th>
		<th style="width: 15%;">작성자</th>
		<th style="width: 20%;">작성일자</th>
		<th style="width: 15%;">조회수</th>
	</tr>
</thead>
<tbody>
<c:forEach items="${list }" var="notice">
	<tr>
		<td>${notice.noticeNo }</td>
		<td><a href="/notice/view?noticeNo=${notice.noticeNo }">${notice.noticeTtl }</td>
		<td>${notice.userNo }</td>
		<td><fmt:formatDate value="${notice.noticeDate }" pattern="yy-MM-dd HH:mm:ss"/></td>
		<td>${notice.noticeHit }</td>
	</tr>
</c:forEach>


</tbody>

</table>

<div class="text-center">
      <ul class="pagination pagination-sm">
   
      <%-- 첫 페이지로 이동 --%>
      <c:if test="${paging.curPage ne 1 }">
         <li><a href="/dghelper/healthrecord">&larr; 처음</a></li>   
      </c:if>
      
      <%-- 이전 페이징 리스트로 이동 --%>
      <c:choose>
      <c:when test="${paging.startPage ne 1 }">
         <li><a href="/dghelper/healthrecord?curPage=${paging.startPage - paging.pageCount }">&laquo;</a></li>
      </c:when>
      <c:when test="${paging.startPage eq 1 }">
         <li class="disabled"><a>&laquo;</a></li>
      </c:when>
      </c:choose>
      
      <%-- 이전 페이지로 가기 --%>
      <c:if test="${paging.curPage > 1 }">
         <li><a href="/dghelper/healthrecord?curPage=${paging.curPage - 1 }">&lt;</a></li>
      </c:if>
      
      
      
      <%-- 페이징 리스트 --%>
      <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
      <c:if test="${paging.curPage eq i }">
         <li class="active"><a href="/dghelper/healthrecord?curPage=${i }">${i }</a></li>
      </c:if>
      <c:if test="${paging.curPage ne i }">
         <li><a href="/dghelper/healthrecord?curPage=${i }">${i }</a></li>
      </c:if>
      </c:forEach>
   
      
      
      <%-- 다음 페이지로 가기 --%>
      <c:if test="${paging.curPage < paging.totalPage }">
         <li><a href="/dghelper/healthrecord?curPage=${paging.curPage + 1 }">&gt;</a></li>
      </c:if>
      
      <%-- 다음 페이징 리스트로 이동 --%>
      <c:choose>
      <c:when test="${paging.endPage ne paging.totalPage }">
         <li><a href="/dghelper/healthrecord?curPage=${paging.startPage + paging.pageCount }">&raquo;</a></li>
      </c:when>
      <c:when test="${paging.endPage eq paging.totalPage }">
         <li class="disabled"><a>&raquo;</a></li>
      </c:when>
      </c:choose>
   
      <%-- 끝 페이지로 이동 --%>
      <c:if test="${paging.curPage ne paging.totalPage }">
         <li><a href="/dghelper/healthrecord?curPage=${paging.totalPage }">끝 &rarr;</a></li>   
      </c:if>
      
      </ul>
   </div>

</div>

</body>
</html>
