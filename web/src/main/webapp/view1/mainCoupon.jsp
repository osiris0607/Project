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
  div #thumbnail{
  margin-bottom: 5px;   
  }
  #box{
  width: 100%;
  height: 230px;
  background: #eee;
  }
  
  .caption1{
  float:left;
  margin-left: 27%;
  margin-bottom: %;
  }
</style>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   $("#confirm").click(function(){
      alert('쿠폰이 발급되었습니다.');
   });
   
})
;

</script>
</head>
<body>
<main>
<jsp:include page="header.jsp" />
<div class="page">
<!--   <div class="clear"></div> -->
  
    
  <h3>쿠폰</h3><br>
  <div id="box">
     <div class="row">
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
              
               <div class="caption1" style="width: 100px; " >
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
            
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
              
               <div class="caption1" style="width: 100px; " >
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
            
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
              
               <div class="caption1" style="width: 100px; " >
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
            
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
              
               <div class="caption1" style="width: 100px; " >
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
            
        </div>
        </div>
        </div>
      
    <div class="line"></div>
    <h3>이 달의 쿠폰</h3><br>
  <div id="box">
     <div class="row">
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail" id="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
               <div class="caption1" style="width: 100px; " >
               <small style="color: #BLUE">1만원 이상 구매시</small>
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail" id="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
               <div class="caption1" style="width: 100px; " >
               <small style="color: #BLUE">1만원 이상 구매시</small>
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail" id="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
               <div class="caption1" style="width: 100px; " >
               <small style="color: #BLUE">1만원 이상 구매시</small>
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail" id="thumbnail">
           <a href="#">
                <img src="#" alt="" width="150px" height="100px">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 양파, 2kg, 1봉</b></li>
                   <small>5%   </small><small style="text-decoration:line-through; color: #ccc">5,000</small>
                    <dd class="red">4,750 원</dd>
                  </ul>
                  <dl>
                  </dl>
               </div> 
            </a> 
         </div>  
               <div class="caption1" style="width: 100px; " >
               <small style="color: #BLUE">1만원 이상 구매시</small>
               <a href="#"><img alt="" src="/web/img/coupon.png" width="110px" id="confirm"></a>
               </div>
        </div>
        
      
        </div>
        </div>

    
  
      
</div><!-- .page -->
</main>
<footer>
  <div class="line"></div>   
  <div class="clear"></div>
<jsp:include page="footer.jsp" /> 
</footer>

</body>
</html>