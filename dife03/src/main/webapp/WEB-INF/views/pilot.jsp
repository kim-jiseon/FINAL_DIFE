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
    	//지역 검색
    	var arr = ['선택','서울','인천','경기','세종','강원','대구','대전','광주','울산','부산','제주'];
    	$.each(arr, function(idx, loc){
    		//alert(arr[idx]);
    		var search_loc = $("<option></option>").attr("value",arr[idx]).html(arr[idx]);
    		$("#pil-location").append(search_loc);
    	})
    	
    	//검색버튼 클릭시
    	$("#pil-search-btn").click(function(){
    		var category = $("select[name=pil-category]").val();
    		var location = $("select[name=pil-location]").val();
    		$.getJSON("sel_pilOne",
    			{"category": category, "location": location},
    			function(data){
    				//이부분을 메소드로 만들어서 할 수 있을까?
					$.each(data, function(idx, item){
						var li = $("<li></li>");
		    			var ul = $("<ul></ul>").addClass("pil-list");
		    			var hr = $("<hr/>");
		    			
		    			var img = $("<img/>").addClass("pil-list-img").attr("src",item.pil_profile);
		    			var title = $("<a></a>").html(item.pil_title).attr("href","pil_detail");
		    			
		    			var name = $("<dd></dd>").html("강사명: "+item.mem_name).attr("id","pil-name").addClass("pil-list-info");
		    			var loc = $("<dd></dd>").html("지역: "+item.pil_locInfo).attr("id","pil-loc").addClass("pil-list-info");
		    			var info = $("<dd></dd>").html("한줄소개: "+item.pil_info).attr("id","pil-info").addClass("pil-list-info");
		    			var star = $("<dd></dd>").html("평점: "+item.pil_star+".0").attr("id","pil-star").addClass("pil-list-info");
		    			var dd_img = $("<dd></dd>").append(img);
		    			var dd_title = $("<dd></dd>").addClass("pil-list-title").append(title);
		    			
		    			$(li).append(dd_img, dd_title, name, loc, info, star);
		    			$(ul).append(li);
		    			$(".container").append(ul);
		    			$(".container").append(hr);
					})    			
    		})
    	})
    	
    	//전체 페이지 출력
    	$.ajax({url:"selectPil_info", success:function(data){
    		var list = eval(data);
    		$.each(list, function(idx, item){
    			//var arr = [item.mem_name, item.pil_title, item.pil_profile, item.pil_locInfo, item.pil_info, item.pil_star];
    			//alert(arr);
    			//alert(item.pil_cateInfo);
    			
    			var li = $("<li></li>");
    			var ul = $("<ul></ul>").addClass("pil-list");
    			var hr = $("<hr/>");
    			
    			var img = $("<img/>").addClass("pil-list-img").attr("src",item.pil_profile);
    			var title = $("<a></a>").html(item.pil_title).attr("href","pil_detail");
    			
    			var name = $("<dd></dd>").html("강사명: "+item.mem_name).attr("id","pil-name").addClass("pil-list-info");
    			var loc = $("<dd></dd>").html("지역: "+item.pil_locInfo).attr("id","pil-loc").addClass("pil-list-info");
    			var info = $("<dd></dd>").html("한줄소개: "+item.pil_info).attr("id","pil-info").addClass("pil-list-info");
    			var star = $("<dd></dd>").html("평점: "+item.pil_star+".0").attr("id","pil-star").addClass("pil-list-info");
    			var dd_img = $("<dd></dd>").append(img);
    			var dd_title = $("<dd></dd>").addClass("pil-list-title").append(title);
    			
    			$(li).append(dd_img, dd_title, name, loc, info, star);
    			$(ul).append(li);
    			$(".container").append(ul);
    			$(".container").append(hr);
    			
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
                    <select name="pil-category" id="pil-category">
                    	<option value="2">선택</option>
                        <option value="1">촬영</option>
                        <option value="0">교육</option>
                    </select>
                    <!-- 제이쿼리 사용 -->
                    <span>지역</span>
                    <select id="pil-location" name="pil-location">
                    </select>
                </span>
                <button id="pil-search-btn">검색</button>
            </div>
        </div>
        <!-- //header -->

        <!-- contents -->
        <div id="contents">
            <div class="container">
            <!-- 
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
                 -->
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