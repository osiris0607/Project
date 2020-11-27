<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<link href="/web/css/doc.css" rel="stylesheet">
<link href="/web/css/custom2.css" rel="stylesheet">
<style>

#th3{
text-align: center;
width: 60px;
font-size: 10px;
}

td{
text-align: center;
}

#myInfoHeader{
width: 100%;
border: none;
}

#headerDiv{
width: 70%; 
height: 10%;
}

#headerDiv, #myInfoHeader{

vertical-align: middle;
}



#th3 button{
margin-top: 25px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
   
});
</script>
</head>
<body>

<section id="headerDiv">
<table id="myInfoHeader">

  <thead>
   <tr>
     <th style="text-align: center;" rowspan="2"><img src="/web/bootEx1/02/rose.jpg" alt="장미" class="img-circle" width="100px" height="100px"></th>
     <th rowspan="2"> <h3><strong>김 선 규</strong> 님 환영합니다</h3><br>
        회원님의 등급은 <span style="background-color:#e3e3e3">VVIP</span> 입니다 
        
             <button type="button" title="팝오버 제목" data-container="body" data-toggle="popover" data-placement="right" 
             data-content="여기는 팝오버 부분에 대한 내용이 들어갑니다." style="border: none;">
     </button>
        <span class="glyphicon glyphicon-question-sign"></span>
     </th>
     <th id="th3">
     <button type="button" class="btn btn-default" aria-label="Left Align" >
      <span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
    </button> <br>  
     입금 확인중
     </th>
     <th id="th3">
     <button type="button" class="btn btn-default" aria-label="Left Align">
      <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>
    </button> <br>    
           입금 확인</th>
     <th id="th3">
     <button type="button" class="btn btn-default" aria-label="Left Align">
      <span class="glyphicon glyphicon-plane" aria-hidden="true"></span>
    </button>   <br>     
          배송중</th>
     <th id="th3">
     <button type="button" class="btn btn-default" aria-label="Left Align">
      <span class="glyphicon glyphicon-gift" aria-hidden="true"></span>
    </button>     <br>   
          배송완료</th>
     <th id="th3">
     <button type="button" class="btn btn-default" aria-label="Left Align">
      <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
    </button>     <br>   
         취소/반품</th>
   </tr>
   <tr>
      <td><a><h2>1</h2></a></td>
      <td><a><h2>1</h2></a></td>
      <td><a><h2>1</h2></a></td>
      <td><a><h2>1</h2></a></td>
      <td><a><h2>1</h2></a></td>
 </tr>
   </thead>
   
</table>
</section>

</body>
</html>