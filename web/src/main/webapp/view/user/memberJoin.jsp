<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
/* 공통css */
body {
	padding-top: 20px;
}

.page {
	margin-top: 40px;
	margin-left: auto;
	width: 60%;
	margin: 0 auto;
	/* background: pink; */
}

.clear {
	clear: both;
}

.line {
	border-bottom: 1px #eee solid;
	margin-top: 60px;
	margin-bottom: 80px;
}

form {
	margin-top: 40px;
	margin-left: 25%;
}

label {
	width: 120px;
}

label, .form-control {
	display: block;
}

form .form-control {
	width: 87px;
	display: inline;
}

input[name='name'], input[name='password'], input[name='email'] {
	width: 300px;
}

input[name='id'] {
	width: 220px;
}

input[name='post1'], input[name='post2'] {
	width: 104px;
}

input[name='address'] {
	width: 300px;
	margin-left: 126px;
}

input[name='tel1'], input[name='tel2'] {
	width: 115px;
}

input[name='month'], input[name='day'] {
	width: 80px;
}

input[name='hp1'], input[name='hp2'], input[name='hp3'] {
	width: 90px;
}

.text-center {
	width: 20%;
	margin: auto auto;
}

pre {
	width: 90%;
	display: block;
	margin-left: auto;
}
</style>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script type="text/javascript">

	/* 이메일체크 */
		function emailCheck() {
			var obj = document.registerForm
			console.log(obj.email3.value);
	
			if (obj.email3.value == 'direct') { //direct선택 시
				obj.email2.disabled = false; //버튼 활성화(이메일 주소 입력칸 직접 입력할 수 있도록)
				obj.email2.value = ''; //direct가 아닐 때는 입력칸 초기화 하고 있는 주소를 선택
			} else {
				obj.email2.value = obj.email3.value; //메일주소에 선택한 주소가 대입
				obj.email2.disabled = true; //버튼 비활성화(이메일 주소를 직접 입력할 수 없음)
	
			}
			if (!obj.email1.value || !obj.email2.value) {
				alert('이메일을 입력해주세요.');
				//else문 대신에 return false; 가능
				return false;
			} else {
				obj.u_email.value = obj.email1.value + '@' + obj.email2.value;
				console.log(obj.u_email.value);
			}
		}

	/* 핸드폰번호 체크 */
		function hpCheck() {
			var obj = document.registerForm;
			console.log(obj.hp1.value + '-' + obj.hp2.value + '-' + obj.hp3.value);
			//		console.log('hp1 : ' + isNaN(obj.hp1.value)); //전화번호는 숫자만 들어올 수 있게
			//		console.log('hp2 : ' + isNaN(obj.hp2.value)); //앞자리 3자리 or 4자리
			//		console.log('hp3 : ' + isNaN(obj.hp3.value)); //뒷자리 4자리
	
			if (!(isNaN(obj.hp1.value) || isNaN(obj.hp2.value) || isNaN(obj.hp3.value))) {
				if ((obj.hp2.value.length == 3 || obj.hp2.value.length == 4)
						&& (obj.hp3.value.length == 4)) {
					obj.u_cp.value = obj.hp1.value + '-' + obj.hp2.value + '-'
							+ obj.hp3.value;
					console.log('u_cp : ' + obj.u_cp.value);
				} else {
					alert('글자수가 초과됐습니다. 다시 입력해주세요.');
					obj.hp1.value = '';
					obj.hp2.value = '';
					obj.hp3.value = '';
				}
				} else {
					alert('숫자만 입력해주세요.');
					obj.hp1.value = '';
					obj.hp2.value = '';
					obj.hp3.value = '';
				}
			}
	/* 전화번호 체크 */
		function telCheck(){
			var obj = document.registerForm;
			console.log(obj.tel0.value + '-' + obj.tel1.value + '-' + obj.tel2.value);
			if (!(isNaN(obj.tel0.value) || isNaN(obj.tel1.value) || isNaN(obj.tel2.value))) {
				if ((obj.tel1.value.length == 3 || obj.tel1.value.length == 4)
						&& (obj.tel2.value.length == 4)) {
					obj.u_tel.value = obj.tel0.value + '-' + obj.tel1.value + '-'
							+ obj.tel2.value;
					console.log('u_tel : ' + obj.u_tel.value);
				} else {
					alert('글자수가 초과됐습니다. 다시 입력해주세요.');
					$("#tel0 option:eq(0)").prop("selected", true);
					obj.tel1.value = '';
					obj.tel2.value = '';
				}
			} else {
				alert('숫자만 입력해주세요.');
				obj.tel1.value = '';
				obj.tel2.value = '';
			}
		}


	$(function() {
	/* 주소 */
		$("input:button[name='postSend']").click(function(){
			window.open("address.jsp","id","left=100,top=50,width=400,height=350");
		});
		
		$("input[name='address']").on("blur",function(){
			var address = $("input[name='address']").val();
			$("#u_address").val(address);
			
		});
	
	/* 이름 */
		$("input[name='name']").on("blur",function(){
			var name = $("input[name='name']").val();
			$("#u_name").val(name);
			console.log($("#u_name").val());
		});
	
	/* 아이디 중복확인 */
		$("#alert-success_idCheck").hide();
		$("#alert-danger_idCheck").hide();
		$("#idChk").click(function() {
							//alert('아쳌');
							var id = $("#id").val();
							console.log(id); //입력한 아이디
							$("#u_id").val(id);
							$.ajax({
								url : '/web/idCheck.do',
								type : 'POST',
								dataType : 'json', //서버로부터 내가 받는 데이터의 타입
								//contentType : 'text/plain; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
								data: { id : id },
								success : function(data) { //
									console.log("data = " + data);
									if (data == 0) {
										console.log('아이디 없음');
										$("#alert-success_idCheck").show();
										$("#alert-danger_idCheck").hide();

									} else {
										console.log('아이디 있음');
										$("#alert-success_idCheck").hide();
										$("#alert-danger_idCheck").show();											}
									},
								error : function() {
										alert('ERROR!');
								}
							});
						});
	/* 비밀번호 확인 */
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("input#password_check").keyup(function() {
			var password = $("#password").val();
			var password_check = $("#password_check").val();
			if (password != "" || password_check != "") {
				if (password == password_check) {
					$("#u_password").val(password_check);
					$("#alert-success").show();
					$("#alert-danger").hide();
				} else {
					$("#alert-success").hide();
					$("#alert-danger").show();
				}
			}
		});

	/* 성별체크 */
		$("input:radio[name='gender']").click(function() {
			var checked_radio = $('input:radio[name=gender]:checked').val(); // 선택된 radio의 value 가져오기
			$("#u_gender").val(checked_radio);
	

		});

	/* 생일 */
		$("input[name='day']").on("blur",function() {
					//console.log($("input[name=year]").val());
					//console.log($("input[name=year]").val());
					//console.log($("input[name=day]").val());
					var birth = $("input[name=year]").val()+'/'
							+ $("input[name=month]").val()+'/'
							+ $("input[name=day]").val();

					$("#u_birth").val(birth);

				});
		
		
	/* 약관동의 */
		//전체선택 체크박스 클릭 
		$("#cball").click(function(){
		 	if($("#cball").prop("checked")) {
		 		$("input[type=checkbox]").prop("checked",true);
			} else {
				$("input[type=checkbox]").prop("checked",false); 
			}
		});
	
	/* 전송 */
		$("button[id='join']").click(function() {
			console.log('가입하기');
			$("form#registerForm").submit();
		});
		
	});
</script>
</head>
<body>

	<main>
		<jsp:include page="../include/header.jsp" />
		<div class="page">
			<div class="clear"></div>
			<div class="line"></div>

			<h3 style="text-align: center;" id="head">개인 회원가입</h3>

			<form action="/web/memberJoin.do" method="post" id="registerForm" name="registerForm">
				<div class="form-group">
					<label for="name">아이디</label><span id="idCheckSP"></span> 
					<input type="text" class="form-control" id="id" name="id" placeholder="아이디">
					<input type="hidden" class="form-control" id="u_id" name="u_id" value=TestId>
					<button class="idChk" type="button" id="idChk">중복확인</button>
				</div>
				<div class="alert alert-success" id="alert-success_idCheck"
					style="color: blue">사용 가능한 아이디입니다.</div>
				<div class="alert alert-danger" id="alert-danger_idCheck" style="color: red">중복된 아이디가 존재합니다.</div>
					
				<div class="form-group">
					<label for="password">비밀번호</label> 
					<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
				</div>
				<div class="form-group">
					<label for="password">비밀번호 확인</label> 
					<input type="password" class="form-control" id="password_check" name="password" placeholder="비밀번호 확인">
					<input type="hidden" class="form-control" id="u_password" name="u_password" value="TestPw">
				</div>
				
				<div class="alert alert-success" id="alert-success"
					style="color: blue">비밀번호가 일치합니다.</div>
				<div class="alert alert-danger" id="alert-danger" style="color: red">비밀번호가
					일치하지 않습니다.</div>

				<div class="form-group">
					<label for="name">이름</label> 
					<input type="text" class="form-control" id="name" name="name" placeholder="이름">
					<input type="hidden" class="form-control" id="u_name" name="u_name" value="TestName">
				</div>
				<div class="form-group">
					<label for="name">성별</label> 
					<input type="radio" name="gender" value="남자" />남성 
					<input type="radio" name="gender" value="여자" />여성
					<input type="hidden" name="u_gender" id="u_gender" value="TestGender">
				</div>
				<div class="form-group">
					<label for="name">생일</label> <input type="text"
						class="form-control" id="year" name="year" placeholder="년">년
					<input type="text" class="form-control" id="month" name="month"
						placeholder="월">월 <input type="text" class="form-control"
						id="day" name="day" placeholder="일">일 
						<input type="hidden" class="form-control" id="u_birth" name="u_birth" value="TestBirth">
				</div>
				<div class="form-group">
					<label for="email">E-Mail</label> <input type="text"
						class="form-control" id="email1" name="email1"
						placeholder="Email Id" aria-describedby="emailHelp">@ <input
						type="text" class="form-control" id="email2" name="email2"
						placeholder="readOnly" disabled="disabled"> 
					<select id="email3" name="email3" onblur="emailCheck()">
						<option selected="selected">선택하세요</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="google.com">google.com</option>
						<option value="direct">직접 입력하기</option>
					</select> 
					<input type="hidden" name="u_email" id="u_email" value="TestEmail">
					<span id="emailHelp" class="form-text text-muted"
						style="display: none;">올바른 이메일 주소를 입력하세요.</span>
				</div>
				
				<div class="form-group">
					<label for="name">주소</label> 
					<input type="text" class="form-control" id="post1" name="post1"> - 
					<input type="text" class="form-control" id="post2" name="post2">
					<input type="button" id="postSend" name="postSend" value="주소검색">
					<!-- <button id="postSend">주소검색</button> -->
					<br>
					<input type="text" class="form-control" id="address" name="address" placeholder="상세주소">
					<input type="hidden" class="form-control" id="u_address" name="u_address" value="TestAddress">
				
				</div>
				<div class="form-group">
					<label for="name">전화번호</label> 
					<select name="order" id="tel0" name="tel0">
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="044">044</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>
					</select> - 
					<input type="text" class="form-control" id="tel1" name="tel1">- 
					<input type="text" class="form-control" id="tel2" name="tel2" onblur="telCheck()">
					<input type="hidden" class="form-control" id="u_tel" name="u_tel" value="TestTel">
				</div>
				<div class="form-group">
					<label for="name">핸드폰번호</label> <input type="text"
						class="form-control" id="hp1" name="hp1" value="010"> - <input
						type="text" class="form-control" id="hp2" name="hp2"> - <input
						type="text" class="form-control" id="hp3" name="hp3" onblur="hpCheck()">
						<input type="hidden" id="u_cp" name="u_cp" value="TestHp">
				</div>

        <div class="form-group">
           <div style="height: 120px; background-color: #eee; width: 65%;" >
           <ul><pre id="pre"><input type="checkbox" id="cball" value="all_agree"><b>전체 약관 동의하기</b></pre>
 					 <li style="list-style: none;"><input type="checkbox" class="cb" id="cb1">'이용약관'에 동의   <a href="#">이용약관 보기</a></li>
 					 <li style="list-style: none;"><input type="checkbox" class="cb" id="cb2">'개인정보 수집 및 이용안내'에 동의   <a href="#">이용약관 보기</a></li>
				</ul>
				</div>
        </div>
				       
				<!-- 
      <div class="form-group">
         <label for="message">Message</label>
         <textarea rows="10" cols="100" class="form-control" id="message" name="message" placeholder="Message" aria-describedby="messageHelp"></textarea>
         <span id="messageHelp" class="form-text text-muted" style="display: none;">Please enter a message.</span>
      </div>
       -->
			</form>
			<div class="text-center">
				<button type="button" id="join" class="btn btn-primary"
					style="background-color: #eee; color: gray; border: 0px solid red;">가입</button>
				<button type="button" id="cancel" class="btn btn-primary"
					style="background-color: #eee; color: gray; border: 0px solid red;">취소</button>
			</div>
			<div id="clear"></div>


		</div>
		<!-- .page -->
	</main>
	<footer>
		<div class="line"></div>
		<div class="clear"></div>
		<jsp:include page="../include/footer.jsp" />
	</footer>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/web/js/bootstrap.min.js"></script>

</body>
</html>