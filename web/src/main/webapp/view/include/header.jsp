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
		width:80%;
		height: 180px;
		margin:0 auto;
		border-bottom: 1px #e3e3e3 solid;
		}
	/* 헤더 전체 부분 */
	.container #header{
		top: 0%;
		height: 120px;
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



	/* dropdown */
	
	.nav1,
	.nav1 a,
	.nav1 ul,
	.nav1 li,
	.nav1 div {
 	  margin: 0;
  	 padding: 0;
  	 border: none;
   	outline: none;
}

.nav1 a { text-decoration: none; }

.nav1 li { list-style: none; }

/* Menu Container */
.nav1 {
   display: inline-block;
   position: relative;
   cursor: pointer;
   z-index: 500;
}

/* Menu List */
.nav1 > li {
   display: block;
   float: left;
}




/* Menu Dropdown */
.nav1 > li > div {
   position: absolute;
   display: block;
   width: 700px;
   top: 50px;
   left: 0;
   border: 1px #e3e3e3 solid;

   opacity: 0;
   visibility: hidden;
   overflow: hidden;

   background: #ffffff;
   border-radius: 0 0 3px 3px;

   -webkit-transition: all .3s ease .15s;
   -moz-transition: all .3s ease .15s;
   -o-transition: all .3s ease .15s;
   -ms-transition: all .3s ease .15s;
   transition: all .3s ease .15s;
}

.nav1 > li:hover > div {
   opacity: 1;
   visibility: visible;
   overflow: visible;
}

/* Menu Content Styles */
.nav1 .nav-column {
   float: left;
   width: 20%;
   padding: 2.5%;
}

.nav1 .nav-column h3 {
   margin: 20px 0 10px 0;
   line-height: 18px;
   
   font-family: Helvetica, Arial, sans-serif;
   font-weight: bold;
   font-size: 14px;
   color: #372f2b;
   text-transform: uppercase;
}

.nav1 .nav-column h3.orange { color: #ff722b; }

.nav1 .nav-column li a {
   display: block;
   line-height: 26px;
   
   font-family: Helvetica, Arial, sans-serif;
   font-weight: bold;
   font-size: 13px;
   color: #888888;
}

.nav1 .nav-column li a:hover { color: green; text-decoration: none; font-weight: bold;  }

	#menu-wrapper, #mainmenu{
		float: left;
	
	}
	
	.nav-column h3{
		border-bottom: #e3e3e3 0.5px solid;
	}
	#recent_pro{
	background-color: #eee;
	z-index: 10;
		opacity: 0.9;
	
	}
	.thumbnail1{ 
	border-radius: 2%; 
	position: relative; 
	background-color: #fff;
	z-index: 10; 
	border: 0px solid #fff; 
	outline: 0px solid #fff;
	display:inline; 
	height: 120px;
	width: 120px;
	margin: 14% 14% 14% 14%;
	float: left;  	
	}
	.thumbnail1 img{ 
	padding: 8% 8% 8% 8%;
	width: 120px;
	opacity: 0.5;
	}
	.thumbnail1 img:hover{ 
	border: 2px solid #9e1030; 
	padding: 1% 1% 1% 1%;
	width: 120px;
	z-index: 20;
	opacity: 1;
	}

</style>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
</head>
<body>
${userInfo }
<div class="container"> 
<!-- 상단 영역 -->

<header id="header">
	<!-- 좌상단 부분 -->
	<div id="left">
	<br>
        <a class="navbar-brand" href="main.jsp" style="text-align: center;"><img src="/web/img/logo.png" width="140px"> </a>
    </div>
     
    <!-- 상단중간 부분 --> 
    <div id="center" style="text-align: right;">
    </div>
    
    <!-- 우상단 부분 -->
    <div class="collapse navbar-collapse  navbar-right navbar-ex1-collapse" id="right">
        <ul class="nav navbar-nav" id="top-right-menubar">
<%String id = (String)session.getAttribute("userid"); 
	System.out.println("user id = " + id);
	
	
	if(id == null){
%>
          <li><a href="/web/view/user/login_toggleTap.jsp">로그인</a></li>
          <li><a href="/web/view/user/joinSelect.jsp">회원가입</a></li>
		<%}else{ %>
          <li><a href="/web/logout.do">로그아웃</a></li>
         <%} %>
          <li><a href="/web/view/user/myPage.jsp">마이페이지</a></li>	<!-- 로그인 session 유지시 이동하게끔 추후 -->
          <li><a href="/web/view/user/cart.jsp">장바구니</a></li>
          <li><a href="/web/view/admin/adminLogin.jsp">관리자페이지</a></li>
        </ul>
        <br><br>
   	 <div id=search>
        <form class="navbar-form navbar-right" name="frm" action="productSearch.jsp">
          <div class="form-group" id="searchbar">
            <input type="search" class="form-control" placeholder="검색">
            <button type="submit" class="btn btn-default" style="width: 52px; text-align: center; background-color: #9e1030;" ><img src="/web/img/search.png" width="22px"></button>
          </div>
        </form>
       </div>
	
    </div>
  </header>
<!-- 하단 영역 -->
<nav id="nav">

<div id="menu-wrapper">
   <ul class="nav1">
      <li id="category"><img src="/web/img/menu.png" width="30px">
        <b style="font-size: 12px; text-align: center;" >카테고리</b>
         <div>
            <div class="nav-column">
               <h3>축산물</h3>
               <ul>
                  <li><a href="../user/productCategory.jsp?code_num=">소고기</a></li>		<!-- 코드분류에 따라 param값으로 이동하게끔 -->
                  <li><a href="../user/productCategory.jsp?">돼지고기</a></li>
                  <li><a href="../user/productCategory.jsp?">닭고기</a></li>
                  <li><a href="../user/productCategory.jsp?">기타</a></li>
               </ul>
            </div>

            <div class="nav-column">
               <h3>수산물</h3>
               <ul>
                  <li><a href="#">생선</a></li>
                  <li><a href="#">연체류</a></li>
                  <li><a href="#">갑각류</a></li>
                  <li><a href="#">조개류</a></li>
                  <li><a href="#">기타</a></li>
               </ul>
            </div>

            <div class="nav-column">
               <h3>농산물</h3>
               <ul>
                  <li><a href="#">곡류</a></li>
                  <li><a href="#">과일</a></li>
                  <li><a href="#">채소</a></li>
                  <li><a href="#">기타</a></li>
               </ul>
            </div>
            <div class="nav-column">
               <h3>음료</h3>
               <ul>
                  <li><a href="#">생수</a></li>
                  <li><a href="#">음료수</a></li>
                  <li><a href="#">우유</a></li>
                  <li><a href="#">커피</a></li>
                  <li><a href="#">기타</a></li>
               </ul>
            </div>
            <div class="nav-column">
               <h3>과자</h3>
               <ul>
                  <li><a href="#">쿠키</a></li>
                  <li><a href="#">초콜릿</a></li>
                  <li><a href="#">사탕</a></li>
                  <li><a href="#">시리얼</a></li>
                  <li><a href="#">기타</a></li>
               </ul>
            </div>
            <div class="nav-column">
               <h3>조미료</h3>
               <ul>
                  <li><a href="#">가루</a></li>
                  <li><a href="#">액체</a></li>
                  <li><a href="#">오일</a></li>
                  <li><a href="#">소스</a></li>
               </ul>
            </div>
            <div class="nav-column">
               <h3>간편음식</h3>
               <ul>
                  <li><a href="#">라면</a></li>
                  <li><a href="#">즉석음식</a></li>
                  <li><a href="#">냉동식품</a></li>
                  <li><a href="#">기타</a></li>
               </ul>
            </div>
         </div>
      </li>
   
   </ul>

</div>
     <div id="mainmenu">
        <ul class="nav navbar-nav">
            <li><a href="../user/mainBest.jsp">베스트</a></li>
            <li><a href="../user/mainHotdeal.jsp">핫딜</a></li>
            <li><a href="../user/mainEvent.jsp">이벤트</a></li>
            <li><a href="../user/mainCoupon.jsp">쿠폰</a></li>
            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">최근본상품<b class="caret"></b></a>
            	<ul class="dropdown-menu"  id="recent_pro" >
              		<li >	<!-- 첫번째 썸네일 칸  -->
              			<div class="thumbnail1"><a href="../user/productInfo.jsp">
                			<img src="/web/img/대패.jpg"></a>    
       					</div>
       			 	</li><hr>
       			
              		<li >	<!-- 두번째 썸네일 칸  -->
              			<div class="thumbnail1"  style="width:auto;"><a href="../user/productInfo.jsp">
                			<img src="/web/img/샤인머스캣.jpg"></a>    
       					</div>
       			 	</li><hr>
       			 	
              		<li >	<!-- 세번째 썸네일 칸  -->
              			<div class="thumbnail1" style="width:auto;"><a href="../user/productInfo.jsp">
                			<img src="/web/img/타트체리.jpg"></a>    
       					</div>
       			 	</li>
           		</ul>
          </li>
         </ul>
      </div>
  </nav>
  
  
</div> <!-- container 끝 -->
</body>
</html>