<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
    <title>layout</title>
    <!-- 웹폰트 -->
    <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
    <!-- fadeIn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <!-- 기본 링크 -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/pilot/pilot.css">
    <!-- 제이쿼리 플러그인 -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script type="text/javascript">
    $(function(){
    	$.ajax({url:"", success:function(data){
    		$.each(data, function(idx, item){
    			var ul = $("<ul></ul>").addClass("pil-list");
    			var li = $("<li></li>");
    			
    			var hr = $("<hr/>");
    			var img = $("<img/>").attr("src", "img/"+item.fname).addClass("pil-list-img");
    			
    			var dd_img = $("<dd></dd>").append(img);
    			var title = $("<a></a>").html(item.title).attr("href","pilotDetail");
    			var dd_title = $("<dd></dd>").addClass("pil-list-title");
    			$(dd_title).append(title);
    			var dd_name = $("<dd></dd>").html(item.name).attr("id", "pil-name").addClass("pil-list-info");
    			var dd_loc = $("<dd></dd>").html(item.loc).attr("id","pil-loc").addClass("pil-list-info");
    			var dd_info = $("<dd></dd>").html(item.info).attr("id", "pil-info").addClass("pil-list-info");
    			var dd_star = $("<dd></dd>").html(item.star).attr("id", "pil-star").addClass("pil-list-info");
    			
    			$(li).append(dd_img, dd_title, dd_name, dd_loc, dd_info, dd_star);
    			$(ul).append(li);
    			$(".container").append(ul);
    		})
    	}})
    })
    </script>
</head>
<body>
    <div id="wrap" class="animated fadeIn">
       <!-- header -->
        <div id="header">
            <div id="header-top">
               <div id="category">
                    <span id="category-1" class="animated fadeInUp">
                        <a href="main"><img src="img/logo/logo_white.png" id="logo"></a>
                        <a href="#" class="cl-effect-1">드론</a>
                        <a href="pilot" class="cl-effect-1">파일럿</a>
                        <a href="#" class="cl-effect-1">지역 및 날씨</a>
                        <a href="#" class="cl-effect-1">고객지원</a>
                        <a href="#" class="cl-effect-1">커뮤니티</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="signIn" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="basket" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav">
               <span id="pil-search">
                    <select>
                        <option value="촬영">촬영</option>
                        <option value="교육">교육</option>
                    </select>
                    <!-- 제이쿼리 사용해야 함 -->
                    <span>지역</span>
                    <select>
                        <option value="서울">서울</option>
                    </select>
                </span>
                <button id="pil-search-btn">검색</button>
            </div>
        </div>
        <!-- //header -->

        <!-- contents -->
        <div id="contents">
            <div class="container">
                <ul class="pil-list">
                    <li>
                            <dd><img class="pil-list-img" src="img/pilot/visit_cnt.png" ></dd>
                            <dd class="pil-list-title"><a href="#">파일럿 교육 강의합니다!</a></dd>
                            <dd class="pil-list-info" id="pil-name">강사명: 홍길동</dd>
                            <dd class="pil-list-info" id="pil-loc">지역: 서울/인천</dd>
                            <dd class="pil-list-info" id="pil-info">강의 정보: 드론 자격증을 위한 기초반 강의</dd>
                            <dd class="pil-list-info" id="pil-star">별점</dd>
                    </li>
                </ul><hr>
            </div>
        </div>
        <!-- //contents -->

        <!-- footer -->
        <div id="footer">
            <div id="footer-nav">footer-nav</div>
            <div id="footer-info">(주)비트캠프:DIFE
                <div id="footer_info1">
                    <p>서울특별시 마포구 백범로 23 구프라자 3층</p>
                    <p>02-707-1480</p>
                    <p><a href="#">고객센터</a></p>
                    <p><a href="#">이용안내</a></p>
                </div>
            </div>
        </div>
        <!-- //footer -->
    </div>
<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("header");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
</body>
</html>