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
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
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
		alert(mem_id);
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
		
		
		/*
		var swiper = $(".swiper-container").find("ul");
		//var slide_img = $(".swiper-slide").find("img");
		
		var layerWidth = $(swiper).children().outerWidth();
		var layerHeight = $(swiper).children().outerHeight();
		var layerLength = $(swiper).children().length;

		var interval;
		
		interval = setInterval(function(){
			slide()
			},5000);
		
		function slide(){
			$(swiper).css("width", layerWidth*layerLength + "px");
			$(swiper).css("height", layerHeight+"px");
		
			$(swiper).animate({left:"-"+layerWidth+"px"},1500,function(){
				
				$(this).append("<li class='swiper-slide'>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			 });    
			} 
		
		 */

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
          				    <h1>888명</h1>
          			    </div>
          			    <div class="grid-cell1">
                            <img src="img/main/cap.png">
                            <p>파일럿 수</p>
                            <h1>54명</h1>
          			    </div>
                        <div class="grid-cell1">
                            <img src="img/main/drone%202.png">
                            <p>드론 수</p>
                            <h1>10981대</h1>
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
          			<div class="grid-cell2">
          				<div class="sns-top">
          				<img alt="" src="img/main/photo1.jpg" class="user-photo">
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info">
          				        <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p>
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count"><img src="img/main/instagram-heart-pink.png" alt="" class="user-like-count"><p class="like-count">2019 Likes</p></div>
          			</div>
          			
          			<div class="grid-cell2">
          				<div class="sns-top">
          				<img alt="" src="img/main/photo2.jpg" class="user-photo">
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info">
          				        <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p>
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count"><img src="img/main/instagram-heart-pink.png" alt="" class="user-like-count"><p class="like-count">2019 Likes</p></div>
          			</div>
          			
          			<div class="grid-cell2">
          				<div class="sns-top">
          				<img alt="" src="img/main/photo3.jpg" class="user-photo">
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info">
          				        <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p>
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count"><img src="img/main/instagram-heart-pink.png" alt="" class="user-like-count"><p class="like-count">2019 Likes</p></div>
          			</div>
          			
          			<div class="grid-cell2">
          				<div class="sns-top">
          				<img alt="" src="img/main/photo4.jpg" class="user-photo">
          				</div>
          				<div class="sns-bottom">
          				    <div class="user-info">
          				        <img src="img/pilot/visit_cnt.png" class="user-profile">
          				        <p class="user-name">username</p>
          				      </div>
          				    <div class="user-like">
                                <img alt="" src="img/main/instagram-heart.png" class="user-like-btn">
                                <!-- 
                                <img alt="" src="img/main/instagram-heart-pink.png" class="user-like-btn"> 
                                -->
                                <img alt="" src="img/main/instagram-msg.png" class="user-like-btn"> 
          				    </div>
          				</div>
          				<div class="count"><img src="img/main/instagram-heart-pink.png" alt="" class="user-like-count"><p class="like-count">2019 Likes</p></div>
          			</div>
          			
          		</div>
          	</div>
        </div>
        <!-- //contents -->

        <!-- footer -->
       <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
        
    </div>
       <!-- Swiper JS -->
    <script src="js/swiper/swiper.min.js"></script>
     <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 3000,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>

    
</body>
</html>