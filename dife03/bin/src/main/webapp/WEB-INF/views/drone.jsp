<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- 웹폰트 -->
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 기본 링크 -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone.css">
<!-- 달력 -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/pikaday/css/pikaday.css">
<script src="https://cdn.jsdelivr.net/npm/pikaday/pikaday.js"></script>

<!-- 카테고리 검색 아이콘 -->
<link rel="stylesheet" href="css/drone/drone.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   
<script type="text/javascript">
$(function() {
	var itemsPerPage = 8;

          
             /* Demo purposes only */
  $(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }
  );

           
/* 
            // 페이징 처리 : 페이지버튼 추가
            $.get("GetTotalDroneCount", function(data) {
                var totalItem = Number(data);
                var totalPage = Math.ceil(totalItem / itemsPerPage);

                for (var i = 1; i <= totalPage; i++) {
                    var addPage = $("<li/>").html(i).attr("dataPage", i);
                    $("#btnPaging").append(addPage);
                    $(addPage).click(function() {
                        var nowPage = $(this).attr("dataPage");
                        getItems(nowPage, itemsPerPage);
                    });
                }
            });

            // 페이징 처리 : 드론 초기화면 전체 목록 select
            function getItems(nowPage, itemsPerPage) {
                $("#content2").empty();

                $.getJSON("GetDroneList", {
                    nowPage: nowPage,
                    perPage: itemsPerPage
                }, function(data) {
                    $.each(data, function(idx, item) {
                        var div = $("<div></div>").addClass("item");
                        var fname = $("<img/>").attr({
                            "src": "img/drone/" + item.dro_photo,
                            width: "100",
                            height: "250"
                        });
                        var name = $("<p></p>").html(item.dro_name);
                        var sName = $("<p></p>").html(item.dro_series);
                        var price = $("<p></p>").html(item.pos_price);

                        $(div).append(fname, name, sName, price);
                        $("#content2").append(div);
                    });
                });
                $("#content2").show();
            }
            getItems(1, itemsPerPage);

            // selectRentalDate 메서드 만들기
            // 대여일 캘린더
            $("#datepicker").dialog({
            	buttons:{
            		submit:function(){
            			var data = $("#header-nav").serialize();
            			$.ajax({url:"selectRentalDate",type:"POST",data:data,success:function(r){
            				alert(r);
            			}});
            		},
            		reset:function(){
            			alert("모두 지움");
            		},
            		cancle:function(){
            			alert("취소");
            		},
            	},
            	modal:false
        });
        $("#calendar").datepicker();*/
        
        })
    </script>
</head>

<body>
<<<<<<< HEAD
    <div id="wrap" class="animated fadeIn">
       <!-- header -->
        <div id="header">
            <div id="header-top">
               <div id="category">
                    <span id="category-1" class="animated fadeInUp">
                        <a href="layout.html"><img src="img/logo/logo_white.png" id="logo"></a>
                        <a href="#" class="cl-effect-1">드론</a>
                        <a href="#" class="cl-effect-1">파일럿</a>
                        <a href="#" class="cl-effect-1">지역 및 날씨</a>
                        <a href="#" class="cl-effect-1">고객지원</a>
                        <a href="#" class="cl-effect-1">커뮤니티</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="#" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="#" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
        </div>
        <!-- //header -->
        
        <!-- 상세검색 -->
        <div id="header-nav">
            <div class="container">            
                <ul id="search">
                    <!-- 대여일 -->
                    <span id="calendar" class="search1">대여일<i class="fa fa-calendar-check-o" aria-hidden="true"></i></span>
						<input type="text" id="datepicker" style="width: 150px; height: 27px; border-radius: 5px; margin-top: auto; margin-bottom: auto;" placeholder="대여일을 선택하세요 :D">
               				<script src="pikaday.js"></script>
                   			<script>
                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
                       	</script>
                   
                    <li class="search1">시리즈명<i class="fa fa-plane" aria-hidden="true"></i>
                        <div class="sub-menu-1">
                            <ul>
                                <li class="hover-dro">매빅<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>MAVIC 2 PRO</li>
                                            <li>MAVIC PRO</li>
                                            <li>MAVIC 2 ENTERPRISE UNIVERSAL</li>
                                            <li>MAVIC 2 ENTERPRISE DUAL</li>
                                            <li>MAVIC AIR</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">비밥<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>BEBOP 2 SINGLE</li>
                                            <li>BEBOP 2+SKY CONTROLLER</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">스파크<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>MINI SPARK</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">인스파이어<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>INSPIRE 1V2 1인</li>
                                            <li>INSPIRE 1V2 2인</li>
                                            <li>INSPIRE 1 PRO 1인</li>
                                            <li>INSPIRE 1 PRO 2인</li>
                                            <li>INSPIRE 2 ZENMUSE X5S 1인</li>
                                            <li>INSPIRE 2 ZENMUSE X5S 2인</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">팬텀<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>PHANTOM 4</li>
                                            <li>PHANTOM 4 PRO</li>
                                            <li>PHANTOM 3 ADVANCED</li>
                                            <li>PHANTOM 3 PROFESSIONAL</li>
                                        </ul>
                                    </div>
                                </li>                       
                            </ul>
                        </div>
                    </li>
                    <li class="search1">가격<i class="fa fa-tags" aria-hidden="true"></i>
                        <div class="sub-menu-1">
                            <ul>
                                <li class="hover-dro">~ 10만원</li>
                                <li class="hover-dro">10 ~ 20만원</li>
                                <li class="hover-dro">20만원 ~</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                    <button id="btnSch">검색<i class="fa fa-search" aria-hidden="true"></i></button>             
                    </li>
                </ul>
            </div>
        </div>
        
        <!-- 상세검색결과 목록 -->
        <div id="contents">
		<div id="content2">
		    <div class="container">
			<div class="content2">
				<div id="drone-grid">
					<!-- 1번째 단락 -->
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0001.png" alt="매빅2프로"/>
                              <figcaption>
                              <p>1인치 센서 탑재 / 전 방향 장애물 회피 센서 탑재 / APAS 2.0 탑재<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                              <!-- <p>DJI</p><br>
                              <p>270,000원</p> -->
                                <div class="heading">
                                  <h2><span>MAVIC</span> 2 PRO</h2>
                                </div>
                              </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>		              
	                </div>
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0002.png" alt="매빅프로" />
                                <figcaption>
                                  <p>가격대비 최고의 성능을 자랑하는 입문용 or 중급자용 드론<span> / 200,000<i class="fas fa-won-sign"></i></span></p>
                                  <!-- <p>DJI</p><br>
                                  <p>270,000원</p> -->
                                    <div class="heading">
                                      <h2><span>MAVIC</span> PRO</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>       
	                </div>
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0003.png" alt="팬텀4" />
                                <figcaption>
                                    <p>4K촬영 / 장애물 자동 회피 기능 / 인텔리전트한 비행 기능 탑재<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 4</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0004.png" alt="팬텀4프로" />
                                <figcaption>
                                    <p>1인치 20 메가픽셀 Exmor R CMOS 센서를 탑재한 새로운 DJI 팬텀 카메라 / 길어진 비행시간 / 더욱 스마트한 기능들<span> / 150,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 4 PRO</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>              
	                </div>
	          
	                <!-- 2번째 단락 -->
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0005.png" alt="팬텀3어드밴스드" />
                                <figcaption>
                                    <p>FULL-HD 촬영이 가능하며 비전 프로비저닝 센서로 실내에서도 쉽게 조종가능한 DJI 팬텀3 어드밴스드<span> / 250,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 3 ADVANCED</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div>                
	                <div class="block">	                
	                   <figure class="block">
                            <img src="img/drone/D0006.png" alt="팬텀3프로페셔널" />
                                <figcaption>
                                    <p>4K 카메라, 실시간 HD영상, 완벽한 비행 제어, 초보자들의 안전 비행을 위한 비기너 모드, 비젼 포지셔닝 시스템<span> / 300,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 3 PROFESSIONAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>               
	                </div>	                
	                <div class="block">.
	                    <figure class="block">
                            <img src="img/drone/D0007.png" alt="미니스파크" />
                                <figcaption>
                                    <p>셀피 or 미니 레이싱 드론, 2축 짐벌 탑재! 2KM 조종 가능, DJI 고글 호환 가능(배터리와 가방이 추가된 FLY MORE COMBO 세트)<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>SPARK</span> MINI</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>             
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0008.png" alt="매빅2엔터프라이즈 유니버셜" />
                                <figcaption>
                                    <p>추가 기기를 연결시켜주는 확장 포트와 함께 다양한 중요 업무의 효율성을 높여보세요!<span> / 150,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> 2 ENTERPRISE UNIVERSAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>
	                
	                <!-- 3번째 단락 -->
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0009.png" alt="매빅2엔터프라이즈 듀얼" />
                                <figcaption>
                                    <p>FLIR 열화상 카메라가 장식된 기업용 매빅2 엔터프라이즈<span> / 200,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> 2 ENTERPRISE DUAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>          
	                </div>                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0010.png" alt="매빅AIR"/>
                                <figcaption>
                                    <p>접이식 디자인으로 휴대성 UP! 보다 가볍고 세련된 디자인으로 새롭게 출시된 DJI의 최신 드론<span> / 250,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> AIR</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0011.png" alt="인스파이어1V2 1인"/>
                                <figcaption>
                                    <p>4K(UHD) 화질의 영상, 1200만 화소, 흔들림을 잡아주는 더욱 안정된 전문 항공촬영 드론<span> / 130,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>INSPIRE</span> 1V2 1인</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>	                
	                <div class="block">
	                   <figure class="block">
                            <img src="img/drone/D0012.png" alt="인스파이어1V2 2인"/>
                                <figcaption>
                                    <p>4K(UHD) 화질의 영상, 1200만 화소, 흔들림을 잡아주는 더욱 안정된 전문 항공촬영 2인 조종 패키지, 비행과 영상촬영은 1명씩 가능<span> / 160,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                    <div class="heading">
                                        <h2><span>INSPIRE</span> 1V2 2인</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div>
	                
	                <!-- 4번째 단락 -->
	                <!--<div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0013.png" alt="인스파이어1PRO 1인"/>
                                <figcaption>
                                    <p>인스파이어 1 프로 블랙에디션. PIX4D 15일 무료이용권 증정!<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000원</p> -->
                                   <!-- <div class="heading">
                                        <h2><span>INSPIRE</span> 1PRO 1인</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div> -->
	               
	            </div>
			</div>
		</div>
		
		<!-- 페이징 처리 -->
		<div class="btnPaging">
                        <ul class="pagination" style="font-size: 15px;">
                            <li><a href="#">이전</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">다음</a></li>
                        </ul>
                    </div>

        <div id="footer">
             <!-- 드래그 비교 생성하기 -->
            <div id="compareChatDrone"></div>

            <div id="footer-nav">
                <div class="container"></div>
            </div>
            <div id="footer-info">
                <div class="container">
                    <ul class="info">
                        <li>
                            <dl>
                                <dd class="txt" style="font-size: 14px; color: #a4a4a4;">회사소개</dd>
                                <dd class="txt">(주)비트캠프:DIFE</dd>
                                <dd class="txt">서울특별시 마포구 백범로 23 구프라자 3층</dd>
                                <dd class="txt">02-707-1480</dd>
                                <dd class="txt"><a href="#" style="color: #a4a4a4;">고객센터</a></dd>
                                <dd class="txt"><a href="#" style="color: #a4a4a4;">이용안내</a></dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
</body></html>