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
   
   .coupon_list{
      list-style: none;
      width:100%;
   }
   .coupons{
       	float: left;
		margin-right: 20px;  
		     
   }
  
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("div[name='coupon']").click(function(){
				alert('check');
		});
		
	});
</script>
</head>
<body>
<main>
<jsp:include page="../include/header.jsp" />
<div class="page">
<div class="clear"></div>
 
    
  <h3>쿠폰</h3><br>
   <br><br>
  
  <!-- 기획전 해보자 -->
   <div class="coupon_list" >
   	<div class="coupons"  name="coupon"> 
         <a href="#"><img src="/web/img/coupon-1.png" width="250" ></a>
   	</div>
   	<div class="coupons" name="coupon">
         <a href="#"><img src="/web/img/coupon-2.png" width="250" ></a>
   	</div>
   	<div class="coupons" name="coupon">
         <a href="#"><img src="/web/img/coupon-3.png" width="250" ></a>
   	</div>
   	
     
  <!--기획전 끝  -->
  
      </ul></div>
</div><!-- .page -->
</main>
<footer>
  <div class="clear"></div>
<jsp:include page="../include/footer.jsp" /> 
</footer>

</body>
</html>