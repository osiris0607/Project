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
   border-bottom: 0px #eee solid;
   margin-top: 60px;
   margin-bottom:80px;
   }
  
  #carttr td{
  display:table-cell;
  vertical-align:middle;
  }
  #carttr1 td{
  display:table-cell;
  vertical-align:middle;
  }
  
  table{
  border: none;
  }
  
  button[name='btn']{
  width: 80px;
  }
  
</style>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>

</head>
<body>
<main>
<jsp:include page="../include/header.jsp" />
<div class="page" style="text-align: center;">
<<div class="clear"></div>
  <div class="line"></div>
  <h4 class="text-primary"><img src="/web/img/process1.png" height="100px" ></h4><br>
  <br>
  <br>
  <hr>
  <br>
<table class="table" style="margin: auto;text-align: center; width: 90%; vertical-align: middle;" >
    
           
           
           
                <td colspan="1">
                   <table class="table" style="width: 100%;" >
                      <thead>
                      <tr style="text-align: center;">
                      <th style="text-align: center;"><input type="checkbox"></th>
                      <th style="text-align: center;">상품이미지</th>
                      <th style="text-align: center;">상품정보</th>
                      <th style="text-align: center;">판매가</th>
                      <th style="text-align: center;">수량</th>
                      <th style="text-align: center;">합계/수량</th>
                      <th style="text-align: center;">배송비</th>
                      <th style="text-align: center;" >선택</th>
                      </tr>
                      </thead>
                      
                      <tr id="carttr" >
                      <td ><input type="checkbox"></td>
                      <td style="width:20%;"> <img src="/web/img/샤인머스캣.jpg" width="100" height="100" ></td>
                      <td>국내산 샤인머스캣 청포도, 1.3kg(2수), 1팩</td>
                      <td>9,900원</td>
                      <td>10개</td>
                      <td>99,000원/10개</td>
                      <td>무료</td>
                      <td  style="text-align: center;">
                      <button type="button" class="btn btn-default" style="background-color: #9e1030; color: white;" name="btn">바로구매</button>
                      <button type="button" class="btn btn-default">취소</button>
                      </td>
                      </tr>
                      
                      <tr id="carttr" >
                      <td><input type="checkbox"></td>
                      <td style="width:20%"> <img src="/web/img/대패.jpg" width="100" height="100"  ></td>
                      <td>돌돌말이 대패 삼겹살(냉동), 900g, 1팩</td>
                      <td>8,900원</td>
                      <td>10개</td>
                      <td>89,000원/10개</td>
                      <td>무료</td>
                      <td  style="text-align: center;">
                      <button type="button" class="btn btn-default" style="background-color: #9e1030; color: white;" name="btn">바로구매</button>
                      <button type="button" class="btn btn-default">취소</button>
                      </td>
                      </tr>
                      
                      
                   </table>
                </td>
            </tr>
            <tr>
                <td colspan="1">
                <br><br><br><hr>
                   <table class="table table-striped " style="margin: auto;text-align: center; width: 100%" >
                      <thead >
                      <tr id="carttr">
                      <th style="margin: auto;text-align: center;">구매 금액</th>
                      <th style="margin: auto;text-align: center;">배송비</th>
                      <th style="margin: auto;text-align: center;">총 결제 예상금액</th>
                      </tr>
                      </thead>
                      
                      <tr>
                      <td>99,000원</td>
                      
                      <td>0원</td>
                      
                      <td>99,000원</td>
                      
                      </tr>
                      
                      
                   </table><br><br>
                      
                       <a href="order.jsp"><button type="button" class="btn btn-default" style="float: right; width: 120px;">선택 상품주문</button></a>
                      <a href="order.jsp"><button type="button" class="btn btn-default" style="float: right; width: 120px;">전체 상품 주문</button></a>
                </td>
            </tr><br>
            
        </table><br>
  
      
</div><!-- .page -->
</main>
<footer>
  <div class="line"></div>   
  <div class="clear"></div>
<jsp:include page="../include/footer.jsp" /> 
</footer>


</body>
</html>