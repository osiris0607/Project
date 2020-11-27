<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>    

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet"> 
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */

    .clear{
    clear: both;
    }
    .line{
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
     section{
     margin-bottom: 8%;
     width:70%;
    }
    /* 테이블 */
    table{
    margin-top: 4%;
    text-align: center;
    width: 100%;
    border-top: 1px #ccc solid;
    border-bottom: 1px #ccc solid;
    }
    
    table thead .table_head{
    background: #65abe23d;
    border-bottom-style: double;
    height: 40px;
    }
    table thead .table_head th{
   /*  border: 1px red solid; */
    text-align: center;
    width: 140px;
    }
    table tbody .table_row td{
    border-bottom: 1px #eee solid;
    text-align: center;
    width: 140px;
    height: 50px;
    }
    
  </style>
</head>
<body>
<header>
<jsp:include page="../include/header.jsp"/>
</header>

  	<!-- 사이드바 -->
    <nav><jsp:include page="../include/sideBar.jsp"/></nav>
	<!-- 사이드바 끝 -->

	<!-- 본문 -->
<div class="col-sm-8 page">
   <jsp:include page="../include/myInfoHeader.jsp"/>
	<!-- 본문 section1  -->
    <section id="section1">
    <h4><strong>구매이력</strong></h4>
	<hr style="float: left; width: 70%;">
	<div class="clear"></div>
      <!-- The offer section displays a banner text for promotions -->
       <div>
       <form name="dateFrm" action="" method="post">
			<input type='date' name='firstdate' value='2020-01-01' /> ~
			<input type='date' name='seconddate' value='2020-11-14' /> 
			&nbsp;&nbsp;      
			<input type="button" name='check' value="조회">
		</form>
      <table class="orderList_table">
      <thead>
         <tr class="table_head">
            <th style="width: 40px;">NO</th>
            <th>상품명</th>
            <th style="width: 40px;">수량</th>
            <th>가격</th>
            <th>날짜</th>
            <th>합계</th>
            <th style="width: 90px;">상태</th>
            <th style="width: 90px;">취소/반품</th>
         </tr>
     </thead>
     <tbody>
         <tr class="table_row">
            <td>1</td>
            <td>오렌지</td>
            <td>2</td>
            <td>3,000</td>
            <td>1/1</td>
            <td>6,000</td>
            <td>결제완료</td>
            <td><input type="button" value="반품" onclick="#"></td><!-- 파라미터값?반품:취소 -->
         </tr>
         <tr class="table_row">
            <td>2</td>
            <td>고기</td>
            <td>1</td>
            <td>10,000</td>
            <td>1/2</td>
            <td>10,000</td>
            <td>배송완료</td>
            <td><input type="button" value="취소" onclick="#"></td><!-- 파라미터값?반품:취소 -->
         </tr>
      </tbody>
      </table>
   </div>

   	</section>
   	
    <!-- 본문 끝 -->
 
</div>

<!-- footer -->
<footer class="container-fluid navbar-absolute-bottom2" id="foot-bottom">
	<div class="clear"></div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
<!-- footer 끝 -->

</body>
</html>