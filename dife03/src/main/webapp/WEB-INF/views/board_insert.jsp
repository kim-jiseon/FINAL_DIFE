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
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 기본 css -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/board/board_insert.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
$(function(){
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
	
	//마이페이지 이동
	$("#mypage").click(function(){
		console.log("클릭");
		//var mem_id = "${mem_id}";
		if(mem_id == null || mem_id == ''){
			alert("로그인을 해주세요.");
			location.href="signIn";
		}else{
			$("#mypage").attr("href","mypage_orders");
		}
	})
})
</script>
</head>
<body>
	<div id="wrap" class="animated fadeIn">

		<!-- header -->
		<jsp:include page="header.jsp"></jsp:include>

		<!-- //header -->

		<!-- contents -->
		<div id="contents">
			<div class="container">
			    <div id="board-title">글 작성</div>
			    <div id="board-input">
			        <form action="" id="input-form">
                       <select name="input-select" id="input-select">
                           <option value="문의게시판">문의게시판</option>
                           <option value="후기게시판">후기게시판</option>
                       </select>
                       <span id="input-span">
                        <input type="text" id="input-title" name="input-title" placeholder="제목을 입력해주세요."><br>
			            <input type="text" id="input-name" name="input-name" placeholder="이름"><input type="password" id="input-pwd" name="input-pwd" placeholder="암호"><input type="text" id="input-star" name="input-star" placeholder="평점">
			            </span><br>
			            <textarea name="input-text" id="input-text" cols="30" rows="10" placeholder="내용을 작성해주세요."></textarea><br>
			            <input type="file" id="input-file" name="input-file" style="background-color: #e0e0e0; margin: 5px 20px; width: 94%">
			            <button type="submit" id="submit" class="input-btn" style="margin-right: 20px;">작성완료</button>
			            <button type="reset" id="reset" class="input-btn">취소</button>
			        </form>
			    </div>
			</div>
		</div>
		<!-- //contents -->

		<!-- footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- //footer -->
	</div>

</body>
</html>