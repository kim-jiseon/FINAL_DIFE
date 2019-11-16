<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- 웹폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 기본 링크 -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main/main.css">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="css/swiper/swiper.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
	$(function() {
		//로그인 로그아웃 전환
		var mem_id = "${mem_id}";
		if(mem_id != '' && mem_id != null){
			$("#sign").attr("href","logout").html("LOGOUT");
		}
		if(mem_id == '' || mem_id == null){
			$("#sign").attr("href","signIn").html("LOGIN");
		}
		
		//마이페이지 이동
		$("#mypage").click(function(){
			if(mem_id == null || mem_id == ''){
				alert("로그인을 해주세요.");
				location.href="signIn";
			}else{
				$("#mypage").attr("href","mypage_orders");
			}
		})
		
		//메인화면 카운트
		$.ajax({url:"/main_cnt",success:function(data){
			$("#mem_cnt").html(data.mem_cnt+"명");
			$("#pil_cnt").html(data.pil_cnt+"명");
			$("#dro_cnt").html(data.dro_cnt+"대");
		}})

		//게시판 조회수 순으로 4개 띄우기: 사진은 추후 DB업데이트 예정
		$.ajax({url:"/main_board",success:function(data){
			 var list = eval(data);
				$.each(list, function(idx, item){
					console.log(item.boa_fname+","+item.mem_fname+","+item.mem_name+","+item.boa_view)
					var user_photo = $("<img/>").addClass("user-photo").attr("src","img/board/"+item.boa_fname);
					var user_profile = $("<img/>").addClass("user-profile").attr("src","img/member/"+item.mem_fname);
					var user_name = $("<p></p>").addClass("user-name").html(item.mem_name);
					var like_count = $("<p></p>").addClass("like-count").html(item.boa_view+" Likes");
					var like_count_img = $("<img/>").addClass("user-like-count").attr("src","img/main/instagram-heart-pink.png");
					
					$("#sns-top-"+(idx+1)).append(user_photo);
					$("#user-info-"+(idx+1)).append(user_profile,user_name);
					$("#count-"+(idx+1)).append(like_count_img,like_count);
				})
		}})
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
             <!-- Swiper -->
              <div class="swiper-container">
                <div class="swiper-wrapper">
                  <div class="swiper-slide"><a href="drone"><img src="img/main/drone_main06.png"></a></div>
                  <div class="swiper-slide"><a href="drone"><img src="img/main/drone_main7.jpg"></a></div>
                  <div class="swiper-slide"><a href="drone"><img src="img/main/drone_main8.JPG"></a></div>
                  <div class="swiper-slide"><a href="drone"><img src="img/main/drone_main5.JPG"></a></div>
                </div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
				<!-- Add Arrows
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                 -->
              </div>

          	<!-- wiget 화면 -->
          	<div id="contents-wiget">
          		<div class="grid-wiget">
          			    <div class="grid-cell1">
                            <img src="img/main/group.png">
          		            <p>방문자 수</p>
          				    <h1 id="mem_cnt"></h1>
          			    </div>
          			    <div class="grid-cell1">
                            <img src="img/main/cap.png">
                            <p>파일럿 수</p>
                            <h1 id="pil_cnt"></h1>
          			    </div>
                        <div class="grid-cell1">
                            <img src="img/main/drone%202.png">
                            <p>드론 수</p>
                            <h1 id="dro_cnt"></h1>
                        </div>
                        <div class="grid-cell1">
                        	<img src="img/main/wheather.png">
                            <p>날씨</p>
                            <h1>21℃</h1>
                            <h4>화요일(맑음)</h4>
                        </div>
          	     </div>
            </div>
          	<!-- sns 화면 -->
          	<div id="contents-sns">
          		<div class="grid-sns">
          		<!-- ajax 구현 -->
          			<div class="grid-cell2">
          				<div class="sns-top" id="sns-top-1">
          				<!-- <img alt="" src="img/main/photo1.jpg" class="user-photo"> -->
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info" id="user-info-1">
          				        <!-- <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p> -->
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count" id="count-1"><!-- <img src="img/main/instagram-heart-pink.png" class="user-like-count"><p class="like-count">2019 Likes</p> --></div>
          			</div>
          			
          			<div class="grid-cell2">
          				<div class="sns-top" id="sns-top-2">
          				<!-- <img alt="" src="img/main/photo1.jpg" class="user-photo"> -->
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info" id="user-info-2">
          				        <!-- <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p> -->
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count" id="count-2"><!-- <img src="img/main/instagram-heart-pink.png" class="user-like-count"><p class="like-count">2019 Likes</p> --></div>
          			</div>
          			
          			<div class="grid-cell2">
          				<div class="sns-top" id="sns-top-3">
          				<!-- <img alt="" src="img/main/photo1.jpg" class="user-photo"> -->
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info" id="user-info-3">
          				        <!-- <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p> -->
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count" id="count-3"><!-- <img src="img/main/instagram-heart-pink.png" class="user-like-count"><p class="like-count">2019 Likes</p> --></div>
          			</div>
          			
          			<div class="grid-cell2">
          				<div class="sns-top" id="sns-top-4">
          				<!-- <img alt="" src="img/main/photo1.jpg" class="user-photo"> -->
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info" id="user-info-4">
          				        <!-- <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p> -->
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count" id="count-4"><!-- <img src="img/main/instagram-heart-pink.png" class="user-like-count"><p class="like-count">2019 Likes</p> --></div>
          			</div>
          			
          		</div>
          	</div>
        </div>
        <!-- //contents -->

        		<!-- footer -->
		<div id="footer">
			<!-- footer-nav -->
			<div id="footer-nav">
				<!-- compareChatDrone -->
				<div id="compareChatDrone">
					<!-- center-text -->
					<div id="center-text">
	    				<h2>ChatBox UI</h2>
	    				<p>Message send and scroll to bottom enabled </p>
	  				</div>
	  				<!-- center-text end --> 
	  				<!-- body -->
					<div id="body"> 
						<!-- chat-circle -->
						<!-- <div id="chat-circle" class="btn btn-raised"> -->
						<img id="chat-circle" class="btn btn-raised alt="챗봇아이콘" src="img/chatbot.png">
	        				<div id="chat-overlay"></div>
			    			<!-- <i class="fas fa-hat-wizard">speaker_phone</i> -->
						<!-- chat-circle end -->
						
						<!-- chat-box -->
	  					<div class="chat-box">
	  						<!-- chat-box-header -->
		    				<div class="chat-box-header">
		      					ChatBot
		      					<span class="chat-box-toggle">
		      						<i class="material-icons">close</i>
		      					</span>
		    				</div>
		    				<!-- chat-box-header end -->
		    				
		    				<!-- chat-box-body -->
		    				<div class="chat-box-body">
		      					<div class="chat-box-overlay"></div>
	      						<div class="chat-logs"></div>
	      						<!-- chat-log -->
		    				</div>
		    				<!-- chat-box-body end -->
		    				
		    				<!-- chat-input -->
		    				<div class="chat-input">      
		      					<form>
		        					<input type="text" id="chat-input" placeholder="Send a message..."/>
		      						<button type="submit" class="chat-submit" id="chat-submit"><i class="material-icons">send</i></button>
		      					</form>      
		    				</div>
		    				<!-- chat-input end -->
	  					</div>
	  					<!-- chat-box end -->
					</div>
					<!-- body end -->
				</div>
				<!-- compareChatDrone end -->
			</div>
			<!-- footer-nav end -->
			
			<!-- footer-info -->
			<div id="footer-info">
				(주)비트캠프:DIFE
				<div id="footer_info1">
					<p>서울특별시 마포구 백범로 23 구프라자 3층</p>
					<p>02-707-1480</p>
					<p><a href="#">고객센터</a></p>
					<p><a href="#">이용안내</a></p>
				</div>
			</div>
			<!-- footer-info end -->
		</div>
		<!-- //footer -->
        
    </div>
   
	<!-- Swiper JS -->
    <script src="js/swiper/swiper.min.js"></script>
     <!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			spaceBetween : 30,
			centeredSlides : true,
			autoplay : {
				delay : 3000,
				disableOnInteraction : false,
			},
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
		});
	</script>
</body>
</html>