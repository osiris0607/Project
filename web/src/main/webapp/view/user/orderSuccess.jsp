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
body {
   padding-top: 20px;

}

.page {
   margin-top: 40px;
   margin-left: auto;
   width: 60%;
   margin: 0 auto;
   text-align: center;
   /* background: pink; */
}

.clear {
   clear: both;
}

.line {
   border-bottom: 0px #eee solid;
   margin-top: 60px;
   margin-bottom: 80px;
}
div .a{
width: 100%;
height: 300px;
background-color: #eee;
}
div .b{
padding-top: 4%;
}

.b h4, .b a{
vertical-align: middle;
}
.b div{
width: 100%;
position: relative;
right: 20px;
}

button{
width: 120px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
</head>
<body>
   <main> 
   <jsp:include page="../include/header.jsp" />
   <div class="page">
      <div class="clear"></div>
      <div class="line"></div>
	 <h4 class="text-primary" style="text-align: center;"><img src="/web/img/process3.png" height="100px"></h4>
		<br><br><br>
		
      <div class="a">
         <div class="b">
            <h1 class="text-primary">주문이 <font color="red"><strong>완료</strong></font> 되었습니다</h1>
            <br>
           
            <h4 style="color: black;">
            자세한 구매목록은
            <a href="../user/myPage.jsp" class="btn btn-link" style="font-size: 16px;"><b>마이페이지</b></a>>
			   <a href="../user/orderList.jsp" class="btn btn-link"  style="font-size: 16px;"><b>구매목록</b></a>
            에서 확인하실 수 있습니다.
            </h4>
            <br><br>
            <div>
          	  	<a href="../user/main.jsp"><button type="button" class="btn btn-default">메인으로</button></a>&nbsp;&nbsp;&nbsp;
           		<a href="../user/myPage.jsp"><button type="button" class="btn btn-default">마이페이지</button></a>
            </div>
         </div>
      </div>


   </div>
   <!-- .page --> </main>
   <footer>
      <div class="line"></div>
      <div class="clear"></div>
      <jsp:include page="../include/footer.jsp" />
   </footer>
</body>
</html>