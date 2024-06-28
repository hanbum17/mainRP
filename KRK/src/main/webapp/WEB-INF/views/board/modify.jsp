<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<%@ include file="../include/header.jsp" %>

<style>
    .fileUploadResult ul li { list-style: none; }
</style>


        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">Modify</h3>
                </div><!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                    
                    
<div class="panel-heading">
    <h4 style="display:inline-block;"><c:out value="${yourboard.bno}"/> 글 상세</h4>
    <small class="pull-right" >조회수: <c:out value="${yourboard.bviewsCnt}"/></small>
</div><%-- /.panel-heading --%>


<div class="form-group">
<label>제목</label>
<input class="form-control" name="btitle" 
       value='<c:out value="${yourboard.btitle}"/>' readonly="readonly">
</div>
<div class="form-group">
    <label>내용</label>
    <textarea class="form-control" rows="3" name="bcontent"
               readonly="readonly" ><c:out value="${yourboard.bcontent}"/></textarea>
</div>
<div class="form-group">
    <label>작성자</label>
    <input class="form-control" name="bwriter"
           value='<c:out value="${yourboard.bwriter}"/>' readonly="readonly"/>
</div>
<div class="form-group">
    <label>최종수정일</label> [등록일시: <fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss" value="${yourboard.bregDate}"/>]
<input class="form-control" name="bmoddate" 
       value='<fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss" value="${yourboard.bmodDate}"/>' readonly="readonly" />
</div>
<button type="button" class="btn btn-default" id="btnToModify" >수정</button>
<button type="button" class="btn btn-info" id="btnToList" >목록</button>
</div><!-- /.panel-body -->


<script>
//게시물 수정 페이지로 이동
$("#btnToModify").on("click", function(){
    location.href='${contextPath}/board/modify?bno=<c:out value="${yourboard.bno}"/>';
})

//게시물 목록 페이지로 이동
$("#btnToList").on("click", function(){
    location.href="${contextPath}/board/list";
})
</script>
