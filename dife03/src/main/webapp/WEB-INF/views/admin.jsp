<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
    <link rel="stylesheet" href="css/admin/admin.css">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="css/swiper/swiper.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
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
                        <a href="#" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav"></div>
        </div>
        <!-- //header -->
        

       
       <div id="contents">
       
        <!-- contents -->
        <div class="container">
             
               
            <div id="content-top">
                <!-- contents-search 회원검색 -->
                <div id="contents-search">
                     <select style="width: 80px; height: 29.5px"> 
                            <option>ID</option>
                            <option>이름</option>
                            <option>이메일</option>
                        </select>
                        <input type="text" style="width: 200px; height: 25px;">
                        <button type="submit" style="width: 80px; height: 30px; border-radius: 5px; background-color: #231F20; color: white">검색</button>
                </div>
                <!-- //contents-search 회원검색 -->
                
            </div>
            
            <!-- content-center 회원정보 -->
            <div id="content-center">
                <div id="content-center-center">
                      
                       <div id="content-center-center-top">
                           <p style="text-align: right">총 회원수: 5명</p><br>
                           
                            <!-- 탭메뉴 만들기 -->
                            <dl>
                               <dt>회원 관리</dt>
                               <dd>
                                  <table class="table-info">
                                  <colgroup>
                                      <col width="150px">
                                      <col width="150px">
                                      <col width="150px">
                                      <col width="100px">
                                      <col width="200px">
                                  </colgroup>
                              
                                  <thead>
                                      <th scope="col"><input type="checkbox"></th>
                                      <th scope="col">ID</th>
                                      <th scope="col">NAME</th>
                                      <th scope="col">AGE</th>
                                      <th scope="col">E-MAIL</th>
                                   </thead>

                                   <!-- 회원정보 -->
                                   <tbody class="member-info">
                                   <td><input type="checkbox"></td>
                                   <td>admin</td>
                                   <td>administrator</td>
                                   <td>-</td>
                                   <td>-</td>
                                   </tbody>

                                   <!-- 회원정보 -->
                                   <tbody class="member-info">
                                   <td><input type="checkbox"></td>
                                   <td>cslim</td>
                                   <td>임창성</td>
                                   <td>31</td>
                                   <td>cslim@gmail.com</td>
                                   </tbody>

                                   <!-- 회원정보 -->
                                   <tbody class="member-info">
                                   <td><input type="checkbox"></td>
                                   <td>hahaha</td>
                                   <td>하찬준</td>
                                   <td>31</td>
                                   <td>hahaha@gmail.com</td>
                                   </tbody>

                                   <!-- 회원정보 -->
                                   <tbody class="member-info">
                                   <td><input type="checkbox"></td>
                                   <td>jskim</td>
                                   <td>김지선</td>
                                   <td>28</td>
                                   <td>jskim@gmail.com</td>
                                   </tbody>

                                   <!-- 회원정보 -->
                                   <tbody class="member-info">
                                   <td><input type="checkbox"></td>
                                   <td>choi</td>
                                   <td>최민우</td>
                                   <td>27</td>
                                   <td>choi@gmail.com</td>
                                   </tbody>

                                   <!-- 회원정보 -->
                                   <tbody class="member-info">
                                   <td><input type="checkbox"></td>
                                   <td>limje</td>
                                   <td>임정은</td>
                                   <td>31</td>
                                   <td>limje@gmail.com</td>
                                   </tbody>
                                   </table>
                               </dd>

                               <dt>게시판 관리</dt>
                               <dd class="hidden">
                                 <table class="table-board">
                                  <colgroup>
                                      <col width="100px">
                                      <col width="100px">
                                      <col width="200px">
                                      <col width="150px">
                                      <col width="200px">
                                      <col width="100px">
                                      <col width="200px">
                                  </colgroup>
                              
                                  <thead>
                                      <th scope="col"><input type="checkbox"></th>
                                      <th scope="col">번호</th>
                                      <th scope="col">제목</th>
                                      <th scope="col">작성자</th>
                                      <th scope="col">작성일</th>
                                      <th scope="col">조회수</th>
                                      <th scope="col">답변유무</th>
                                   </thead>
                                   
                                       
                                       <!-- 게시판정보 -->
                                       <tbody class="board-info">
                                       <td><input type="checkbox"></td>
                                       <td>1</td>
                                       <td>공지사항</td>
                                       <td>관리자</td>
                                       <td>2019.10.11</td>
                                       <td>1</td>
                                       <td>답변완료</td>
                                       </tbody>
                                       
                                       <!-- 게시판정보 -->
                                       <tbody class="board-info">
                                       <td><input type="checkbox"></td>
                                       <td>2</td>
                                       <td>공지사항</td>
                                       <td>관리자</td>
                                       <td>2019.10.11</td>
                                       <td>2</td>
                                       <td>미답변</td>
                                       </tbody>
                                       
                                       <!-- 게시판정보 -->
                                       <tbody class="board-info">
                                       <td><input type="checkbox"></td>
                                       <td>3</td>
                                       <td>삼겹살에 소주</td>
                                       <td>임창성</td>
                                       <td>2019.10.11</td>
                                       <td>1</td>
                                       <td>답변완료</td>
                                       </tbody>
                                       
                                       <!-- 게시판정보 -->
                                       <tbody class="board-info">
                                       <td><input type="checkbox"></td>
                                       <td>4</td>
                                       <td>피자에 소주</td>
                                       <td>하찬준</td>
                                       <td>2019.10.11</td>
                                       <td>1</td>
                                       <td>답변완료</td>
                                       </tbody>
                                       
                                       <!-- 게시판정보 -->
                                       <tbody class="board-info">
                                       <td><input type="checkbox"></td>
                                       <td>5</td>
                                       <td>갈비에 소주</td>
                                       <td>김지선</td>
                                       <td>2019.10.11</td>
                                       <td>1</td>
                                       <td>미답변</td>
                                       </tbody>

                                   </table>
                               </dd>
                               
                               <dt>기타</dt>
                               <dd class="hidden">
                                  뭐 아무거나
                               </dd>
                            </dl>
                            <!-- //탭메뉴 만들기 -->
                            
                           
                               
                                                                                     

                       </div>
                       
                       <div id="content-center-center-button">
                           <span id="content-bottom-update">
                            <a href="admin_update"><button type="submit" style="margin-right: 10px;">수정</button></a>
                            <button type="submit">삭제</button>
                           </span>
                       
                           <span id="content-bottom-count">
                               1  2  3  4  5  [다음]
                           </span>
                       </div>
                </div>
            </div>
       
        </div>
        </div>
        <!-- //contents -->

        <!-- footer -->
        <div id="footer">
            <div id="footer-nav"></div>
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
       <!-- Swiper JS -->
    <script src="js/swiper/swiper.min.js"></script>
     <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper-container', {
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>
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
    
    <!-- 탭 메뉴 스크립트 -->
    <script>
        var $menuEle = $('dt'); // 탭메뉴를 변수에 지정
        $menuEle.click(function() { // 탭메뉴 클릭 이벤트
        $('dd').addClass('hidden');
        $(this).next().removeClass('hidden');
        })
    </script>
    <!-- //탭 메뉴 스크립트 -->
    
</body>
</html>