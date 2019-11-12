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
<link rel="stylesheet" href="css/board/board_detail.css">
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
               <div id="drone-detail"><i class="fas fa-angle-right" id="icon"></i> 후기 게시판</div>
                <div id="board-detail-href">
                   <a href="#">수정</a>
                   <a href="#">삭제</a>
                    <a href="#">목록</a>
                </div>
			    <div id="board-wrapper">
			        <div id="board-img" class="board-input">
			            <img src="img/drone/D0001.png" id="board-detail-img">
			        </div>
			        <div id="board-text" class="board-input">
			            <div id="board-detail-title">
			                <span>드론사용 후기 남겨요!</span>
			            </div>
			            <div id="board-detail-info">
			                 <span>작성자: 홍길동&nbsp;&nbsp;&nbsp;&nbsp;</span>
			                 <span>등록일: 2019/10/11&nbsp;&nbsp;&nbsp;&nbsp;</span>
			                 <span>별점: 4.0</span>
			            </div>
			            <div>
			                <textarea name="board-teaxtarea" id="board-textarea" cols="50" rows="10">좋아용~</textarea>
			            </div>
			            <div id="board-detail-re">
			                 <p><span>강감찬님&nbsp;&nbsp;&nbsp;</span><span>오~~</span></p>
			                <p><span>임수정님&nbsp;&nbsp;&nbsp;</span><span>잘찍었네요!</span></p>
			            </div>
			            <div style="text-align: center;">
                            <input type="text" id="board-re" placeholder="댓글을 입력해주세요.">
                            <button type="submit" id="board-re-btn">댓글 쓰기</button>
			            </div>
			        </div>
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