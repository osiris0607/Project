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
  height: auto;
  background: #eee;
  }
  #img, #info{
  display: inline;
  }
  #img{
  width:35%;
  }
  #info{
  float: right;
  width: 40%;
  }
  #info table td{
    padding: 2%;
  }
  #info table tr{
     height: 3.5em;
  }

  
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
   var price=$("#productPrice").text().slice(0,-1);
   var option="";
   var qty="";
   var total="("+price+"+"+option+")*"+qty;
   var result="";
   $("#option").click(function(){
      option = $("#option option:selected").val();
      
   })
   
   $("#qty").click(function(){
      qty = $("#qty option:selected").val();
   })
   
   result=eval(total);
      
   $("#totalPrice").val(result)+"원";

   
   
});

</script>
</head>
<body>
<main>
<jsp:include page="../include/header.jsp" />
<div class="page">
<div class="clear"></div>
  <br><br>
 <h3>육류</h3>   <!-- 카테고리명 불러오기  -->
 <br>
 <div id="img">
    <img src="/web/img/소꽃갈비살.jpg" width="400" >
 </div>
 <div id="info">
    <table style="width: 100%; height: 400px; " >
       <tr><td colspan="2">
       <sub>회사상호명</sub><br>      <!-- 회사명 불러오기 -->
       <header id="productTitle"><strong style="font-size: 1.5em;">햇살받은 햇소고기 구이용</strong></header><br>      <!-- 상품명(productTitle) 불러오기 -->
       <sub id="productSubtitle">productSubtitle</sub><br>      <!-- productSubtitle 불러오기 -->
       </td>
        </tr>
       <tr>
          <td colspan="2"><hr></td>   
        </tr>
       <tr>
          <td width="29%"><strong>가격</strong></td>
            <td id="productPrice"><font color="red"><strong>9900원</strong></font></td>   <!-- 상품가격(productPrice) 불러오기 -->
        </tr>
       <tr>
          <td><strong>옵션</strong></td>
            <td>
            <select id="option" style="width: 100%; height: 90%; background-color: #eee;">
               <option value="selected">선택하세요</option>
                <option value="100">100g</option>      <!-- value값으로 옵션에 따른 추가 금액 넣기 -->
                <option value="200">200g</option>
                <option value="300">300g</option>
               <option value="400">400g</option>
            </select></td>   
        </tr>
       <tr>
          <td><strong>수량</strong></td>   <!-- 재고에 맞춰서 foreach로 옵션 수 맞추기  불러오기 -->
            <td>
            <select id="qty" style="width: 100%; height: 90%; background-color: #eee;">
                <option value="1">1개</option>
                <option value="2">2개</option>
                <option value="3">3개</option>
               <option value="4">4개</option>
            </select></td>   
        </tr>
        <tr>
          <td colspan="2"><hr></td>   <!-- 중간 실선-->
        </tr>
       <tr>
          <td><strong>총금액</strong><br>
          <small><small>(무료배송)</small></small>
          </td>
          <td id="totalPrice"><strong>99,000원</strong></td>      <!-- eval함수의 결과값이 들어갈 곳 -->
       </tr>
            <tr>
               <td colspan="2">
             <button type="button" class="btn btn-default" style="float: right; width: 49.9%;">구매하기</button>
             <button type="button" class="btn btn-default" style="float: right; width: 49.9%;">장바구니</button>
               </td>
            </tr>
           
            
        </table>
 </div>
 <br>
 <br>
 <hr>
 <br>
 <br>
 
  
  
  <section id="section1">
    <h4><strong>상품 정보</strong></h4>
   <hr style="float: left; width: 70%;">
   <div class="clear"></div>
      <!-- The offer section displays a banner text for promotions -->
      <div>
         <img src="/web/img/소꽃갈비살.jpg" width="100%" height="900px">
      </div>
      
      </section>
  
  
 <div class="line"></div>
  
 <table class="table">
  <thead>
   <tr>
     <th colspan="4">상품 후기 </th>
     
     <th><button type="button" class="btn btn-default" style="float: right;">후기 작성하기</button></th>
   </tr>
   </thead>
   <tr>
     <td style="width: 10%;">★★★★★</td>
     <td style="width: 70%;">구매옵션:<br>
        너무 맛있습니다! </td>
     <td style="width: 8%;">2020/09/07</td>
     <td style="width: 8%;">****vdsd1245</td>
     <td style="width: 4%;">
      <span class="glyphicon glyphicon-bookmark" style="float: right;"></span>
      <span class="glyphicon glyphicon-heart" style="float: right; margin-right: 10%;"></span>
     </td>
     
   </tr>
   <tr>
     <td style="width: 10%;">★★★★★</td>
     <td style="width: 70%;">구매옵션:<br>
        너무 맛있습니다! </td>
     <td style="width: 8%;">2020/09/07</td>
     <td style="width: 8%;">****vdsd1245</td>
     <td style="width: 4%;">
  <span class="glyphicon glyphicon-bookmark" style="float: right;"></span>
      <span class="glyphicon glyphicon-heart" style="float: right; margin-right: 10%;"></span>
     </td>
     
   </tr>
   <tr>
     <td style="width: 10%;">★★★★★</td>
     <td style="width: 70%;">구매옵션:<br>
        너무 맛있습니다! </td>
     <td style="width: 8%;">2020/09/07</td>
     <td style="width: 8%;">****vdsd1245</td>
     <td style="width: 4%; ">
    <span class="glyphicon glyphicon-bookmark" style="float: right;"></span>
      <span class="glyphicon glyphicon-heart" style="float: right; margin-right: 10%;"></span>
     </td>

   </tr>
   
   
 </table>
 
 <ul class="pager"  >
  <li><a href="#">Previous</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">6</a></li>
  <li><a href="#">7</a></li>
  <li><a href="#">8</a></li>
  <li><a href="#">9</a></li>
  <li><a href="#">10</a></li>
 
  <li><a href="#">Next</a></li>
</ul>

 <br>

 <div class="line"></div>


<hr>
  
 <table class="table">
  <thead>
   <tr>
     <th colspan="3">Q&A </th>
     
     <th><button type="button" class="btn btn-default" style="float: right;">상품 문의하기</button></th>
   </tr>
   </thead>
   <tr>
     <td style="width: 10%;"> <답변완료> </td>
     <td style="width: 70%;"><span class="glyphicon glyphicon-lock"></span>
        비밀글 입니다.</td>
     <td style="width: 8%;">2020/09/07</td>
     <td style="width: 8%;">****vdsd1245</td>
   </tr>
   <tr>
     <td style="width: 10%;"> <답변완료> </td>
     <td style="width: 70%;"><span class="glyphicon glyphicon-lock"></span>
        비밀글 입니다.</td>
     <td style="width: 8%;">2020/09/07</td>
     <td style="width: 8%;">****vdsd1245</td>
   </tr>
   <tr>
     <td style="width: 10%;"> <답변완료> </td>
     <td style="width: 70%;"><span class="glyphicon glyphicon-lock"></span>
        비밀글 입니다.</td>
     <td style="width: 8%;">2020/09/07</td>
     <td style="width: 8%;">****vdsd1245</td>
   </tr>
   
 </table>
  <ul class="pager"  >
  <li><a href="#">Previous</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">6</a></li>
  <li><a href="#">7</a></li>
  <li><a href="#">8</a></li>
  <li><a href="#">9</a></li>
  <li><a href="#">10</a></li>
 
  <li><a href="#">Next</a></li>
</ul>
  <hr>
 <div class="line"></div>
    
  <h3>관련 상품</h3><br>
  <div id="box">
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
  </div> 

      
</div><!-- .page -->
</main>
<footer>
  <div class="line"></div>   
  <div class="clear"></div>
<jsp:include page="../include/footer.jsp" /> 
</footer>

</body>
</html>