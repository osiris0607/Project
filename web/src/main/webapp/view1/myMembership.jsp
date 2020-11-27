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
   margin-top: 60px;
   margin-bottom: 400px;
   margin-left: 30%;
}

section {
   margin-bottom: 8%;
}

/* 테이블 */
table {
   margin-top: 4%;
   text-align: center;
   width: 92%;
   border-top: 1px #ccc solid;
   border-bottom: 1px #ccc solid;
}

table thead .table_head {
   background: #65abe23d;
   border-bottom-style: double;
   height: 40px;
}

table thead .table_head th {
   /*  border: 1px red solid; */
   text-align: center;
   width: 140px;
}

table tbody .table_row td {
   border-bottom: 1px #eee solid;
   text-align: center;
   width: 140px;
   height: 50px;
}

#level {
   border: none;
   background-color: #f5dd42;
   text-align: left;
   width: 50%;
}
</style>
</head>
<body>
   <header>
      <jsp:include page="header.jsp" />
   </header>

   <!-- 사이드바 -->
   <nav><jsp:include page="sideBar.jsp" /></nav>
   <!-- 사이드바 끝 -->

   <!-- 본문 -->
   <div class="col-sm-8 page">
   <jsp:include page="myInfoHeader.jsp"/>
   <hr>
      <!-- 본문 section1  -->
      <section id="section1">
         <h4>
            <strong>멤버쉽</strong>
         </h4>
         <hr style="float: left; width: 70%;">
         <div class="clear"></div>
         <!-- The offer section displays a banner text for promotions -->
         <div id="subject">
            <ul>
               <li>등급혜택
                  <pre style="border: 0px red solid; width: 70%;">다음 등급인 VVIP까지 남았습니다.</pre>
                     <li style="list-style: none">- 누적 구매금액은 실시간 반영되지 않으며, 출고 처리 중 상태부터 매주 월요일 오전에 집계됩니다.</li>
                     <li style="list-style: none">- 회원 등급에 따라 등급 할인, 적립금 추가 지급, 매월 정기 쿠폰 발행 등의 혜택이 주어집니다.</li>
                     <li style="list-style: none">- 누적 구매 금액은 최근 5년 치가 반영됩니다.</li>
               <li style="list-style: none"> <br></li>
               <li>마일리지 : <span style="background-color:#eee"> 1,000 </span> 점</li>
               <li>보유쿠폰 : <span style="background-color:#eee"> 3 </span> 장</li>
            </ul>
         </div>
         <div>
            <table class="orderList_table">
               <thead>
                  <tr class="table_head">
                     <th style="width: 50px;">쿠폰번호</th>
                     <th>쿠폰명</th>
                     <th style="width: 20px;">할인율</th>
                     <th>할인금액</th>
                     <th>발급일</th>
                     <th>만료일</th>
                     <th style="width: 90px;">상태</th>
                  </tr>
               </thead>
               <tbody>
                  <tr class="table_row">
                     <td>AAAA-1234</td>
                     <td>할인쿠폰</td>
                     <td>20%</td>
                     <td>3,000원</td>
                     <td>2020/1/1</td>
                     <td>2020/4/1</td>
                     <td>사용</td>
                  </tr>
                  <tr class="table_row">
                     <td>ZZZZ-9999</td>
                     <td>최초이용쿠폰</td>
                     <td>10%</td>
                     <td>10,000원</td>
                     <td>2020/1/2</td>
                     <td>2020/7/2</td>
                     <td>미사용</td>
                     
                  </tr>
               </tbody>
            </table>
         </div>

      </section>

      <!-- 본문 끝 -->

   </div>

   <!-- footer -->
   <footer class="container-fluid navbar-absolute-bottom2"
      id="foot-bottom">
      <div class="clear"></div>
      <jsp:include page="footer.jsp"></jsp:include>
   </footer>
   <!-- footer 끝 -->

</body>
</html>