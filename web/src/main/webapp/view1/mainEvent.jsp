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
   body{
      padding-top: 20px;
   }
   .page{
   margin-top: 40px;
   margin-left: auto;
   width:60%;
   margin:0 auto;
   /* background: pink; */
   }
   .clear{
   clear: both;
   }
   .line{
   border-bottom: 1px #eee solid;
   margin-top: 60px;
   margin-bottom:80px;
   }
   .carousel-caption { top: 2%; left: 5%; text-align: left;}
    .red { color: #FF0000}
    .black { color: #000}
   .control { position: inherit; top: 50%; z-index: 5; display: inline-block; right: 50%;} 
   
   .thumbnail { border-radius: 0; position: relative; z-index: 1; border: 0px solid #fff; outline: 0px solid #ccc;
      display:inline;; 
       }
   .red { color: #FF0000}
   .black { color: #000}
   ul.block { height: 60px;}
   /*상품 줌 아이콘 */
   .zoom {
      position:absolute;
      left:50%;
      top:30%;
      width:60px;
      height:60px;
      margin:-30px 0 0 -30px;
     /*  background:url(./imgs/zoom.png) no-repeat center center; */
      z-index:5;
      display:block;
      text-indent:-9999px;
      opacity: 0; 
      filter:progid:DXImageTransform.Microsoft.Alpha(opacity=0);    
    }   
  .thumbnail:hover { border: 1px solid red; outline: 0}
  .thumbnail a:hover { text-decoration: none}
  .thumbnail:hover img{
    opacity: 0.3; 
    filter:progid:DXImageTransform.Microsoft.Alpha(opacity=50);
  }
  .thumbnail:hover .zoom {
    opacity: 1; 
    filter:progid:DXImageTransform.Microsoft.Alpha(opacity=100);
  }
  .thumbnail{
  margin: 14% 14% 14% 14%;
   float: left;     
  }
  #box{
  width: 100%;
  height: 180px;
  background: #eee;
  }
  
</style>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
</head>
<body>
<main>
<jsp:include page="header.jsp" />
<div class="page">
<!--   <div class="clear"></div> -->
   <h3>이벤트</h3>
  <div class="line"></div>
  
   <!-- 캐러셀 부분 시작 -->
  
      
</div><!-- .page -->
</main>
<footer>
  <div class="line"></div>   
  <div class="clear"></div>
<jsp:include page="footer.jsp" /> 
</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/web/js/bootstrap.min.js"></script>
    <script>
          $('.carousel').carousel()
    </script>

</body>
</html>