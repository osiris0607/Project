<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.clear {
   clear: both;
}

.line {
   margin-top: 10%;
   margin-left: 20%;
   width: 60%;
   border-bottom: #ccc 1px solid;
}

/* 본문 */
.page {
   width: 60%;
   position: relative;
   margin-top: 2%;
   margin-left: 20%;
}

section {
   margin-bottom: 8%;
}

/* ////////// 위 css내용들 수정하지 말것 */
/* ////////// 아래 본문 내용의 css는 여기서부터 작성하기 */
</style>
<script type="text/javascript">
$(function () { 
    $('#collapsesample').on('show.bs.collapse', function () {
       alert('펼쳐질 때 이 메시지가 보입니다.');})
 });
</script>
</head>
<body>
   <header>
      <jsp:include page="../include/myInfoHeader.jsp" />
   </header>

   <!-- 사이드바 -->
   <nav>
      <jsp:include page="../include/sideBar.jsp" />
   </nav>
   <!-- 사이드바 끝 -->

   <!-- 본문 -->
   <div class="col-sm-8 page">
      <!-- 본문 section1  -->
      <section id="section1">
         <div class="table-responsive" style="width: 80%; margin-left: 20%;">

            <h4>
               <strong>1:1 문의내역</strong>
            </h4>
            <hr style="float: left; width: 70%;">
            <br> <br> <br>
            <div class="clear"></div>

            <div>
               <ul>한번 등록한 상담내용은 수정이 불가능합니다. 수정을 원하시는 경우, 삭제 후 재등록 하셔야 합니다.
               </ul>
               <ul>1:1 상담은 24시간 신청가능하며 접수된 내용은 빠른 시간내에 답변을 드리도록 하겠습니다.
               </ul>
               <table class="table table-hover">
                  <thead>
                     <tr>
                        <th>NO</th>
                        <th>문의유형</th>
                        <th>상품명</th>
                        <th>제목</th>
                        <th>문의날짜</th>
                        <th>처리상태</th>
                     </tr>
                  </thead>
                  
                  
                  <tr id="1" data-toggle="collapse" data-target="[name='tr1']">
                     <td align="center">1</td>
                     <td align="center"></td>
                     <td align="center">상품 문의 질문드려요</td>
                     <td align="center"></td>
                     <td align="center"></td>
                     <th>완료</th>
                     
                  
                     <!-- 문의 본문 -->
                 	 <tr name="show1" style="display: none;">
                     <td colspan="6"  >
                       <div name="tr1" class="collapse" lang="reply">
                      	 <b>제목: </b>상품 문의 질문드려요 (헤더부분)
                      	 제가 얼마전에 주문했었는데 
                      	 이게 원래 이런건가요????
                      	 답변해주세요
                      	 <small>작성일자: 2020년12월25일</small>
                	 </div>
                     </td>
                   </tr>
                   
                   
                     <!-- 문의 본문 -->
                   <tr name="show1"  style="display: none;">
                     <td colspan="6">
                     <div name="tr1" class="collapse" lang="reply">
                      	 <b>제목: </b>상품 문의 질문드려요 (헤더부분)
                      	 제가 얼마전에 주문했었는데 
                      	 이게 원래 이런건가요????
                      	 답변해주세요
                      	 <small>작성일자: 2020년12월25일</small>
                	 </div>
                     </td>
                  </tr>
                  </tr>
                  <tr id="2">
                        <td align="center">1</td>
                     <td align="center"></td>
                     <td align="center">상품 문의 질문드려요</td>
                     <td align="center"></td>
                     <td align="center"></td>
                     <th>완료</th>
                     
                     </tr>
                  
               <!--visible  -->   
               </table>
            </div>
</body>
</html>
<script type="text/javascript">
$(function(){
	$("tr").click(function(){
		var no=this.id;
		/* $("[name='tr"+no+"']").attr('style=display:inline;'); */
		$("[name='tr1']").toggle();
		alert(this.id);
	}); 
	/* $("[name='show1']").click(function(){
		alert('nice');
	}) */
	
})
</script>