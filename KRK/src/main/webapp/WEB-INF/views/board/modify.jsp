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
				    <h4 style="display:inline-block;"><c:out value="${yourboard.bno}"/> 글 수정</h4>
				</div><%-- /.panel-heading --%>
				<div class="panel-body">
				
<form role="form" id="frmModify">
		      <input type="hidden" name="bno" value='<c:out value="${yourboard.bno}" /> '/>
    <div class="form-group">
        <label>제목</label>
        <input class="form-control" name="btitle" 
               value='<c:out value="${yourboard.btitle}"/>' >
    </div>
    <div class="form-group">
        <label>내용</label>
        <textarea class="form-control" rows="3" name="bcontent"
                  ><c:out value="${yourboard.bcontent}"/></textarea>
    </div>
    <div class="form-group">
        <label>작성자</label>
        <input class="form-control" name="bwriter"
               value='<c:out value="${yourboard.bwriter}"/>' readonly="readonly"/>
    </div>
    <div class="form-group">
        <label>최종수정일</label> [등록일시: <fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss" value="${yourboard.bregDate}"/>]
        <input class="form-control" name="bmoddate" 
               value='<fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss" value="${yourboard.bmodDate}"/>'
               disabled="disabled" /><%-- input 요소의 readonly 속성을 disabled 속성으로 교체 --%>
    </div>
    <button type="button" class="btn btn-default" id="btnModify" data-oper="modify">수정</button>
    <button type="button" class="btn btn-danger" id="btnRemove" data-oper="remove">삭제</button>
    <button type="button" class="btn btn-info" id="btnToList" data-oper="tolist">목록</button>
</form>

<script>

var frmModify = $("#frmModify");

$('button').on("click", function(){ 
 
    var operation = $(this).data("oper");  
    alert("operation: "+ operation);
    
    if(operation == "modify"){  //게시물 수정 
	       frmModify.attr("action", "${contextPath}/board/modify").attr("method","post");

    } else if(operation == "remove"){  //게시물 삭제
        frmModify.attr("action", "${contextPath}/board/delete").attr("method","post");
  
    } else {// if(operation == "tolist"){ //게시물 목록 화면 요청
        frmModify.attr("action","${contextPath}/board/list").attr("method","get");
        frmModify.empty(); 
    }
  
    frmModify.submit() ; //요청 전송
});

</script>

