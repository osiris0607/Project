<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>주소 검색</title>
<link href="/web/css/common.css" rel="stylesheet" type="text/css" />
<link href="/web/css/user.css" rel="stylesheet" type="text/css" />
<!-- <script src="/web/script/member.js"></script> -->

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript">

 
$(function(){
	
	$("input[name='dong']").keydown(function(key){
		if(key.keyCode==13){
			$("input#search").click();
		}
	}); //엔터키 눌렀을때 검색 버튼 누른 효과
	
	$("input#search").click(function(){
		var dong=$("input[name='dong']");		
		if(dong.val().length==0){
			alert('동을 입력하세요.');
			return false;
		} //검색어를 입력하지 않으면 false
		$.ajax({
			url:'/web/zipcodeSearch.do',
			dateType:'json',
			type:'GET',
			data:{dong:dong.val()},
			/* contentType: "application/json; charset=utf-8", */
			success:function(v){
				$("table#searchResult").html(" ");
				$(v).each(function(index,dom) {
					post=dom.zipcode;
					address=dom.sido.trim()+" "+dom.gugun.trim()+" "+dom.dong.trim();
					$("table#searchResult").append("<tr><td height=8><a href=#></a> </td></tr><tr><td height=20 style=padding-left: 25; width: 200px;><a class=send id=no"+index+">["+post+"]"+address+"<a/></td>");
					//검색결과 출력
					$(document).on('click','#no'+index,function(){
						console.log($(this));
						$(opener.document).find("#post1").val(dom.zipcode.split("-")[0]);
						$(opener.document).find("#post2").val(dom.zipcode.split("-")[1]);
						$(opener.document).find("#address").val(dom.sido.trim()+" "+dom.gugun.trim()+" "+dom.dong.trim());
						self.close();
					}); //결과 클릭시 기존 페이지에 데이터 전송 후 창닫기
	            });
			},error:function(){
				alert('error');
			}
		});
		
	});
	
});
</script>
 </head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
		<table width="400" height="380" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top" background="/web/img2/join_pop_bg1.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="45" colspan="3"><img
								src="/web/img2/join_pop_title4.gif" width="115" height="20"></td>
						</tr>
						<tr>
							<td width="50" height="30">&nbsp;</td>
							<td>&nbsp;</td>
							<td width="50">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td align="center" style="padding: 10">찾고자 하는 지역의
								&quot;읍,면,동&quot; 이름을 입력하세요.<br> 예: 구의동일 경우, '구의' 로 검색하세요.
							
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td height="7"></td>
							<td></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="40" align="center" bgcolor="F5F5F5">주소검색 <input
								name="dong" type="text" size="25" class="input"> <input
									type="image" id="search" src="/web/img2/btn_search.gif" width="36"
									height="18" border="0" align="absmiddle"></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="7">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="padding: 1" bgcolor="#DDDDDD">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr height="1" bgcolor="f4f4f4">
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr bgcolor="ddddddd">
										<td width="1" bgcolor="f4f4f4"></td>
										<td height="25" align="center" bgcolor="EEEEEE">해당 주소를
											선택하세요.</td>
										<td width="1" bgcolor="f4f4f4"></td>
									</tr>
								</table>
								<form action="" name="searchFrm" method="post">
								<div style="height: 120px; width: 300; overflow: auto;">
									<table id="searchResult" width="100%" height="120" border="0" cellpadding="0"
										cellspacing="0" bgcolor="#FFFFFF" class="gray_blue">
										
									</table>
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
