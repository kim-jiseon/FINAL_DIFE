<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
    <title>layout</title>
    <!-- 웹폰트 -->
     <!-- 
    <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
     -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- fadeIn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <!-- 기본 css -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/pilot/pilotDetail.css">
    <!-- 제이쿼리 플러그인 -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
        <!-- datepicker -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="css/datepicker/datepicker.min.css" rel="stylesheet" type="text/css">
    <script src="js/datepicker/datepicker.js"></script>
        <!-- Include language -->
        <script src="js/datepicker/i18n/datepicker-ko.js"></script>
<script type="text/javascript">
$(function(){

});
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
               <div id="grid2">
                <div id="block1">
                    <ul class="top">
                        <li>
                            <dl>
                               <img src="img/pilot/${info.pil_photo}">
                                <dd class="pil-name">${info.mem_name} 강사</dd>
                                <dd id="pil-title">${info.pil_title}</dd>
                                <dd>경력:&nbsp; ${info.pil_career}년</dd>
                                <dd>지역:&nbsp; ${info.pil_locInfo}</dd>
                                <dd>한줄 소개:&nbsp; ${info.pil_info}</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
                  <div id="block5">
                       <div id="calendar">
                        교육 및 촬영일&nbsp;&nbsp;
                            <input type="text" data-range="true"
								data-multiple-dates-separator=" - " data-language="ko"
								class="datepicker-here" style="width:180px; height: 25px;"/>
                        </div>
                    <a href="#"><button id="pil_btn">파일럿과 상담하기</button></a>
                  </div>
                  </div><hr>
                   <div id="grid">
                   <div id="block2">
                       <ul class="mid1">
                           <li>
                               <dl>
                                   <dd class="info_det"><i class="far fa-file-alt"></i> 기본 정보</dd>
                                   <dd class="pil-information">경력:&nbsp; ${info.pil_career }년</dd>
                                   <dd class="pil-information">지역:&nbsp; ${info.pil_locInfo}</dd>
                                   <dd class="pil-information">연락 가능 시간:&nbsp; ${info.pil_contact }</dd>
                                   <dd></dd>
                               </dl>
                           </li>
                       </ul>
                   </div>
                   <div id="block3">
                       <ul class="mid1">
                           <li>
                               <dl>
                                   <dd class="info_det"><i class="far fa-file-alt"></i> 상세 정보</dd>
                                   <dd class="pil-information">자격증:&nbsp; ${info.pil_qualification }</dd>
                                   <dd class="pil-information">보유드론:&nbsp; ${info.pil_drone }</dd>
                                   <dd></dd>
                               </dl>
                           </li>
                       </ul>
                   </div>
               </div>
                   <div id="block4">
                       <ul>
                           <li>
                               <dl>
                                   <dd class="info_det">포트폴리오</dd>
                                   <dd><img src="img/pilot/${info.pil_portfolio }" class="pil-portfolio"></dd>
                                   <dd class="info_det" id="pil-intro">강사 소개</dd>
                                   <dd class="pil-information">${info.pil_intro }</dd>
                                   <dd class="info_det" id="pil-intro">강의 정보</dd>
                                   <dd class="pil-information">${info.pil_intro }</dd>
                               </dl>
                           </li>
                       </ul>
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