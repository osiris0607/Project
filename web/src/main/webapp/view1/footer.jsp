<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
body {

   padding-top: 20px;
}


#container{
margin-top: 200px;
width:80%;
margin-left: 10%;
margin-right: 10%;
height: 160px;
list-style-type: none;
}
   
#container div{
float:left;
display: inline-block;
margin-top: 3%;
}
/* #div1,#div2,#div3,#div4 {
   float: left; 

} */

#img1 {
   width: 15%;
   margin-left: 5%;
}

#div2 {
   width: 35%;
   
}

#div3 {
    width: 20%;
 
}

#div4 {
   width: 20%;
   
}

</style>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
   $(function() {

   });
</script>
</head>
<body>
<footer>
      <div class="container" style="background: #eee;" id="container">
         <div id="img1">
            <img alt="" src="#" width="100" height="100">
         </div>



         
         <div id="div2">
            <li>사업자 등록번호: 754-25-21545 </li>
            <li>통신판매업 신고 : 제 01-1234호</li>
            <li>대표이사: 이효은 / 서울시 강남구 테헤란로 132 8층</li>
            <li>개인정보보호책임자 : 김선규</li>
            <li>소비자피해보상보험 : SGI 서울보증</li>
            
            <br>
         </div>

         <div id="div3" class="">
         
            <li>호스팅서비스: ㈜효은식품</li>
            <small>Copyright &copy; 2020 Sist.co,.</small>
         </div>

         <div id="div4">   
            <li><b>고객센터</b>
            <h2>1644-6030</h2></li>
            <li>평일 10:00~17:00 / 점심시간 12:00~13:00</li>
         </div>
      </div>
      </footer>
</body>
</html>