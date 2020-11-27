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
	.control { position: relative; top: 40%; z-index: 5; display: inline-block; margin-left: auto;} 
	
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
  height:350px;
  background:
  
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<script>
          $('.carousel').carousel()
</script>
<script type="text/javascript">
$(function(){
	
	
	
	
});
</script>
</head>
<body>
<main>
<jsp:include page="header.jsp" />
<div class="page">
<!--   <div class="clear"></div> -->
   <!-- 캐러셀 부분 시작 -->
   <h3>베스트 20</h3><br>
    <div id="carousel-generic" class="carousel slide">
      <!-- Indicators -->
       <ol class="carousel-indicators">
         <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
         <li data-target="#carousel-generic" data-slide-to="1"></li>
         <li data-target="#carousel-generic" data-slide-to="2"></li>
       </ol>
     <!-- Carousel items -->
       <div class="carousel-inner">
          <div class="item active">
             <img src="/web/img/sub_banner.png" alt="First slide">
               <div class="carousel-caption"> 
               </div>
          </div>
          <div class="item">
             <img src="/web/img/sub_banner2.png" alt="Second slide">  
               <div class="carousel-caption"> 
               </div>
          </div>
          <div class="item">
             <img src="/web/img/sub_banner.png" alt="Third slide"> 
               <div class="carousel-caption">
                </div>                 
          </div>
                            
       </div>
      <!-- Controls -->
        <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
          <img src="/web/img/pre.png" class="control">   <!-- 이전 아이콘 -->
        </a>
        <a class="right carousel-control" href="#carousel-generic" data-slide="next">
          <img src="/web/img/next.png" class="control">   <!--  다음 아이콘 -->
        </a>
      </div>
    <!--// 캐러셀 부분 끝  -->
<hr>
  
  <!-- 추천 상품 시작 -->
  
     <div class="row">
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/대패.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>돌돌말이 대패 삼겹살(냉동), 900g, 1팩</b></li>
                   <small>17%   </small><small style="text-decoration:line-through; color: #ccc">10,900</small>
                    <dd class="red">8,990 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/샤인머스캣.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 샤인머스캣 청포도, 1.3kg(2수), 1팩</b></li>
                   <small>34%   </small><small style="text-decoration:line-through; color: #ccc">37,600</small>
                    <dd class="red">24,600 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/소꽃갈비살.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>미국산 소꽃갈비살구이(냉장), 400g, 1개</b></li>
                   <small>13%   </small><small style="text-decoration:line-through; color: #ccc">26,500</small>
                    <dd class="red">22,900 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/수입 블루베리.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>수입 블루베리, 310g, 2팩</b></li>
                   <small>23%   </small><small style="text-decoration:line-through; color: #ccc">14,900</small>
                    <dd class="red">11,400 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
  <div class="row">
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/대패.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>돌돌말이 대패 삼겹살(냉동), 900g, 1팩</b></li>
                   <small>17%   </small><small style="text-decoration:line-through; color: #ccc">10,900</small>
                    <dd class="red">8,990 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/샤인머스캣.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>국내산 샤인머스캣 청포도, 1.3kg(2수), 1팩</b></li>
                   <small>34%   </small><small style="text-decoration:line-through; color: #ccc">37,600</small>
                    <dd class="red">24,600 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/소꽃갈비살.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>미국산 소꽃갈비살구이(냉장), 400g, 1개</b></li>
                   <small>13%   </small><small style="text-decoration:line-through; color: #ccc">26,500</small>
                    <dd class="red">22,900 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
      <div class="col-sm-3 col-xs-6"> 
        <div class="thumbnail">
           <a href="#">
                <img src="/web/img/수입 블루베리.jpg" alt="">
                <div class="caption">
                  <ul class="list-unstyled block">
                    <li><b>수입 블루베리, 310g, 2팩</b></li>
                   <small>23%   </small><small style="text-decoration:line-through; color: #ccc">14,900</small>
                    <dd class="red">11,400 원</dd>
                  </ul>
                  <br>
                  
               </div> 
            </a>    
         </div>  
        </div>
  </div> 
  
  <div class="line"></div>
    
  
      
</div><!-- .page -->
</main>
<footer>
<jsp:include page="footer.jsp" /> 
</footer>

</body>
</html>