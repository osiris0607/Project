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
	/* 하단  */
	#headerDiv{
	width: 70%; 
	height: 10px;
	padding-top: 2%;
	padding-left: 34%;
	}
	#headerDiv, #myInfoHeader{
	vertical-align: middle;
	}	
	
	#myInfoHeader{
	width: 100%;
	border: none;
	}
	

</style>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		
	});

</script>

</head>

<body>
<div class="clear"></div>
<section id="headerDiv">
<table id="myInfoHeader">
  <thead>
   <tr>
     <th style="text-align: center;" rowspan="2"><img src="/web/bootEx1/02/rose.jpg" alt="장미" class="img-circle" width="100px" height="100px"></th>
  	 <th>&nbsp;&nbsp;
     <th style="text-align: left "> <h3><strong>판매자 ${sellerInfo.name }님</strong> 페이지입니다.</h3>
   </th>
   </tr>
</thead>
</table>
</section>




</body>
</html>