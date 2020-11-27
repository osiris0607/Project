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
		
	.container{
		width:100%;
		height: 140px;
		margin:0 auto;
		border-bottom: 1px #e3e3e3 solid;
		}
	/* 헤더 전체 부분 */
	.container #header{
		top: 0%;
		height: 100px;
		/* background: gray; */
		
	}
	#header, #nav{
		display: block;
	}
	div header div{
	/* #left, #center, #right{ */
		float: left;
		
	}
	/* 좌상단 div */
	#left{
		position: relative;
		margin-left: 6%;
		width: 19%;
		height: 100px;
	}
	/* 상단중간, 우상단 div */
	#center{
		width: 20%;
		height: 100px;

	}
	#right{
		width: 40%;
		display: inline;
		float: right;
		margin-right: auto;
	}
	/* 우상단 메뉴 텍스트 */
	#right ul li a{
		text-align: center;
		font-size: 10px;
		color: gray;
		
	}
	/* 우상단 메뉴 버튼, 검색창 */
	#right ul, #search{
		float: right;
		clear: both;
	}
	
	/* 검색 입력 부분 */
	#search form div input{
		width: 300px;
		clear: both;
	}
	
		
	#nav{
		position: relative;
		height: 120px;
		left: 10%;
		/* background: pink; */
	}
	#mainmenu{
		padding-left: 40px;
		
	}
	#mainmenu ul li{
		margin-right: 10px;
		background: white;
		border-radius: 10px;
		width: 140px;
	}
	#mainmenu ul li li{
		background: white;
	}
	#mainmenu ul li a{
		color: black;
		font-size: medium;
		text-align: center;
		
	}
	
	#category{
		width: 140px;
		height: 45px;
		background: #9e1030;
		
	}
	#category > img{
		position: relative;
		top: 15%;
		left: 10%;
	}
	#category > b{
		color: white;
		position: relative;
		top: 20%;
		left: 13%;
	}

	#admin{
	text-align: left;
	margin-left: 14%;
	font-size: 20px;
	color: #9e1030;
	}
	
/* 	

	#headerDiv{
	margin-top: 2%;
	width: 100%; 
	height: 190px;
	background-color: #eee;
	padding-top: 4%;
	padding-left: 34%;
	} */
	


</style>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container"> 
<!-- 상단 영역 -->

<header id="header">
	<!-- 좌상단 부분 -->
	<div id="left">
	<br>
        <a id="logo" class="navbar-brand" href="../user/main.jsp" style="text-align: center;"><img src="/web/img/logo-b.png" width="120px"> </a>
        <br><br><br>
        <p id="admin"><strong>ADMIN</strong></p>
    </div>
     
    <!-- 상단중간 부분 --> 
    <div id="center" style="text-align: right;">
    </div>
    
    <!-- 우상단 부분 -->
    <div class="collapse navbar-collapse  navbar-right navbar-ex1-collapse" id="right">
        <ul class="nav navbar-nav" id="top-right-menubar">
          <li><a href="../admin/adminLogin.jsp">로그인</a></li>
          <li><a href="../admin/adminNoticeMain.jsp">관리자페이지</a></li>
        </ul>
        <br><br><br><br>
   	 <div id=search>
        <form class="navbar-form navbar-right" name="frm" action="../user/productSearch.jsp">
          <div class="form-group" id="searchbar">
            <input type="search" class="form-control" placeholder="검색">
            <button type="submit" class="btn btn-default" style="width: 52px; text-align: center; background-color: #9e1030;" ><img src="/web/img/search.png" width="22px"></button>
          </div>
        </form>
       </div>
	
    </div>
  </header>
<!-- 
<div class="clear"></div>
<section id="headerDiv">
<table id="myInfoHeader">
  <thead>
   <tr>
     <th style="text-align: center;" rowspan="2"><img src="/web/bootEx1/02/rose.jpg" alt="장미" class="img-circle" width="100px" height="100px"></th>
  	 <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <th style="text-align: right "> <h3><strong>관리자</strong> 페이지입니다.</h3>
   </th>
   </tr>
</thead>
</table>
</section> -->
  
</div> <!-- container 끝 -->
</body>
</html>