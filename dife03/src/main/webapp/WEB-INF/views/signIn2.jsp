<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- 웹폰트 -->
 <!-- 
    <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
     -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 기본 css -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
<link rel="stylesheet" href="css/member/signIn.css">
<link rel="stylesheet" type="text/css" href="css/member/util.css">
<link rel="stylesheet" type="text/css" href="css/member/log.css">

<!-- 
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript">
$(function() {
	//로그인 로그아웃 전환
	var mem_id = "${mem_id}";
	
	if(mem_id != '' && mem_id != null){
		//var login = $("#category-2").find("a:first").html();
		//var logout = $("<a></a>").attr("href","logout").addClass("cl-effect-1").html("LOGOUT");
		//$("#category-2").append(logout);
		$("#sign").attr("href","logout").html("LOGOUT");
	}
	if(mem_id == '' || mem_id == null){
		//var login = $("<a></a>").attr("href","signIn").addClass("cl-effect-1").html("LOGIN");
		//$("#category-2").append(login);
		$("#sign").attr("href","signIn").html("LOGIN");
	}
	
	
	$("#btn").click(function(){
		var mem_id = $("#mem_id").val();
		var mem_pwd = $("#mem_pwd").val();
		if(mem_id == "") {
			alert("아이디를 입력하세요.");
			return false;
		}
		else if(mem_pwd == "") {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		else
			return true;
	});
});
</script>
</head>
<body>
	<div id="wrap" class="animated fadeIn">

		<!-- header -->
		 <jsp:include page="header.jsp"></jsp:include>

		<!-- //header -->

		<!-- contents -->
		
										<!-- 로그인 폼 -->
											<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Welcome DIFE!
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="아이디" style="text-align: left"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass">
						<span class="focus-input100" data-placeholder="비밀번호" style="text-align: left"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								로그인
							</button>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								회원가입
							</button>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn" style="background: #f7e600"></div>
							<button class="login100-form-btn">
							  <a id="kakao-login-btn"></a>
                              <a href="http://developers.kakao.com/logout"></a>
							</button>
						</div>
					</div>
					<div class="container-login100-form-btn" style="border: black">
						<div class="wrap-login100-form-btn" >
						<div class="login100-form-bgbtn" style="background: #ffffff" ></div>
							<button class="login100-form-btn" style="border: black">
							  <div class="g-signin2" data-onsuccess="onSignIn" data-theme="white" ></div>
							</button>
						</div>
					</div>			
					<div class="text-center p-t-115">
						
						<a class="txt2" href="#" style="margin-right: 40px">
							아이디 찾기
						</a>
						<a class="txt2" href="#">
							비밀번호 찾기
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script type='text/javascript'>
        //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('2419a41da13d5ceaf615799022f751d9');
        // 카카오 로그인 버튼을 생성합니다.
        Kakao.Auth.createLoginButton({
            container: '#kakao-login-btn',
            success: function (authObj) {
            	Kakao.API.request({

            	       url: '/v1/user/me',

            	       success: function(res) {

            	             alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력

            	             alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력

            	             console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)

            	             console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)

            	             console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 

            	         // res.properties.nickname으로도 접근 가능 )

            	             console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력

            	           }

            	         });
            },
            fail: function (err) {
                alert(JSON.stringify(err));
            }
        });
      //]]>
    </script>

	<div id="dropDownSelect1"></div>
											<!--//로그인 폼 -->
										
			<!-- //contents -->

			<!-- footer -->
         <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
		</div>
		
</body>
</html>