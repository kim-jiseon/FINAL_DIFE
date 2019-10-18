<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="css/drone/drone.css">
    <!-- 달력 -->
    <link rel="stylesheet" href="css/calendar/dist/calendar.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="css/calendar/src/calendar.js"></script>
<!-- 카테고리 검색 아이콘 -->
<link rel="stylesheet" href="css/drone/drone.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <script type="text/javascript">
        $(function() {
            var itemsPerPage = 8;
            
           
            $('#container').calendar({
                data: [{
                        date: '2019/12/24',
                        value: 'Christmas Eve'
                    },
                    {
                        date: '2019/12/25',
                        value: 'Merry Christmas ◀:D'
                    },
                    {
                        date: '2020/01/01',
                        value: 'Happy New Year!'
                    }
                ]
            });

            $('#dd').calendar({
                trigger: '#dt',
            });

            // set date
            //$element.calendar(setDate, value)

            // set data
            //$element.calendar(setData, value)

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
            /*$("#datepicker").dialog({
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
    <div id="wrap">
        <div id="header">
            <div id="header-top" class="header-top">
                <div class="header-right">
                    <a href="signIn.html">로그인 <i class="fas fa-user" aria-hidden="true"></i></a>
                    <a href="payment.html">마이페이지 <i class="fas fa-clipboard-list" aria-hidden="true"></i></a>
                    <a href="basket.html">장바구니 <i class="fas fa-shopping-basket" aria-hidden="true"></i></a>
                </div>
                <div class="header-left">
                    <div class="title"><a href="main.html"><img src="img/logo/logo_white.png" alt="디프로고"></a></div>
                    <div class="category">
                        <a href="drone.jsp">드론</a>
                        <a href="pilot.jsp">파일럿</a>
                        <a href="#">지역 및 날씨</a>
                        <a href="#">고객지원</a>
                        <a href="board.html">커뮤니티</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- 상세검색 -->
        <div id="header-nav">
            <div class="container">            
                <ul id="search">
                    <!-- 대여일 -->
                    <span id="calendar" class="search1">대여일<i class="fa fa-calendar-check-o" aria-hidden="true"></i></span>
                    <input type="text" id="dt" placeholder="대여일을 선택하세요.">
                        <div id="dd"></div>
                   
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
                                <li class="hover-dro">50만원 미만</li>
                                <li class="hover-dro">50만원 이상~100만원 미만</li>
                                <li class="hover-dro">100만원 이상</li>
                            </ul>
                        </div>
                    </li>
                    <button id="btnSch" class="search1" style="width: 100px; height: 35px; border-radius: 5px; background-color: #231F20; color: white">검색<i class="fa fa-search" aria-hidden="true"></i></button>             
                </ul>
            </div>
        </div>
 
                
       

        <!-- 상세검색결과 목록 -->
        <div id="content2"></div>
        <!-- 페이징 처리 -->
        <div id="btnPaging"></div>

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
</body></html>