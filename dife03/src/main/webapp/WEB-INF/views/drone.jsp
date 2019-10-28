<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

>>>>>>> refs/remotes/origin/master
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<<<<<<< HEAD
<!-- ¿•∆˘∆Æ -->
=======
<!-- ÏõπÌè∞Ìä∏ -->
<!-- 
>>>>>>> refs/remotes/origin/master
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
 -->
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<<<<<<< HEAD
<!-- ±‚∫ª ∏µ≈© -->
=======
    <!-- Í∏∞Î≥∏ ÎßÅÌÅ¨ -->
>>>>>>> refs/remotes/origin/master
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/drone.css">
<<<<<<< HEAD
<!-- ¥ﬁ∑¬ -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="css/datepicker/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="js/datepicker/datepicker.js"></script>
<!-- Include language -->
<script src="js/datepicker/i18n/datepicker-ko.js"></script>
<!-- ƒ´≈◊∞Ì∏Æ ∞Àªˆ æ∆¿Ãƒ‹ -->
<link rel="stylesheet" href="css/drone/drone.css">
=======
    <!-- Ï†úÏù¥ÏøºÎ¶¨ ÌîåÎü¨Í∑∏Ïù∏ -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <!-- datepicker -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="css/datepicker/datepicker.min.css" rel="stylesheet" type="text/css">
    <script src="js/datepicker/datepicker.js"></script>
<!-- Include language -->
<script src="js/datepicker/i18n/datepicker-ko.js"></script>
<!-- ƒ´ÔøΩ◊∞ÔøΩ ÔøΩÀªÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ -->
>>>>>>> refs/remotes/origin/master
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
<script type="text/javascript">
$(function() {
	var itemsPerPage = 8;
          
<<<<<<< HEAD
             /* Demo purposes only */
  $(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }
  );
=======
    /* ƒ´ÔøΩ◊∞ÔøΩ(ÔøΩ√∏ÔøΩÔøΩÔøΩÔøΩ) ÔøΩÔøΩÔøΩÏΩ∫ hover */
    $(".hover").mouseleave(function () {
        $(this).removeClass("hover");
    });
    
    /* ƒ´ÔøΩ◊∞ÔøΩ(ÔøΩ√∏ÔøΩÔøΩÔøΩÔøΩ,ÔøΩÔøΩÔøΩÔøΩ) ≈¨ÔøΩÔøΩ ÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ */
    var searchSp = document.getElementById("search1");
    var listSp = document.getElementById("sub-menu");
    
    listSp.style.display = "none";
    searchSp.addEventListener("click",(event){
        if(listSp.style.display == "none"){
            listSp.style.display = "block";
        }
        else{
            listSp.style.display = "none";
        }
    });
>>>>>>> refs/remotes/origin/master
           
/* 
<<<<<<< HEAD
            // ∆‰¿Ã¬° √≥∏Æ : ∆‰¿Ã¡ˆπˆ∆∞ √ﬂ∞°
=======
            // ÔøΩÔøΩÔøΩÔøΩ¬° √≥ÔøΩÔøΩ : ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ∆∞ ÔøΩﬂ∞ÔøΩ
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
            // ∆‰¿Ã¬° √≥∏Æ : µÂ∑– √ ±‚»≠∏È ¿¸√º ∏Ò∑œ select
=======
            // ÔøΩÔøΩÔøΩÔøΩ¬° √≥ÔøΩÔøΩ : ÔøΩÔøΩÔøΩ ÔøΩ ±ÔøΩ»≠ÔøΩÔøΩ ÔøΩÔøΩ√º ÔøΩÔøΩÔøΩ select
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
            // selectRentalDate ∏ﬁº≠µÂ ∏∏µÈ±‚
            // ¥Îø©¿œ ƒ∂∏∞¥ı
=======
            // selectRentalDate ÔøΩﬁºÔøΩÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩ
            // ÔøΩÎø©ÔøΩÔøΩ ƒ∂ÔøΩÔøΩÔøΩÔøΩ
>>>>>>> refs/remotes/origin/master
            $("#datepicker").dialog({
            	buttons:{
            		submit:function(){
            			var data = $("#header-nav").serialize();
            			$.ajax({url:"selectRentalDate",type:"POST",data:data,success:function(r){
            				alert(r);
            			}});
            		},
            		reset:function(){
<<<<<<< HEAD
            			alert("∏µŒ ¡ˆøÚ");
=======
            			alert("ÔøΩÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩ");
>>>>>>> refs/remotes/origin/master
            		},
            		cancle:function(){
<<<<<<< HEAD
            			alert("√Îº“");
=======
            			alert("ÔøΩÔøΩÔøΩ");
>>>>>>> refs/remotes/origin/master
            		},
            	},
            	modal:false
        });
        $("#calendar").datepicker();*/
        
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
<<<<<<< HEAD
                        <a href="layout.html"><img src="img/logo/logo_white.png" id="logo"></a>
                        <a href="#" class="cl-effect-1">µÂ∑–</a>
                        <a href="#" class="cl-effect-1">∆ƒ¿œ∑µ</a>
                        <a href="#" class="cl-effect-1">¡ˆø™ π◊ ≥Øææ</a>
                        <a href="#" class="cl-effect-1">∞Ì∞¥¡ˆø¯</a>
                        <a href="#" class="cl-effect-1">ƒøπ¬¥œ∆º</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="#" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="#" class="cl-effect-1">RESERVATION</a>
=======
                        <a href="main"><img src="img/logo/logo_white.png" id="logo"></a>
                        <a href="#" class="cl-effect-1">ÎìúÎ°†</a>
                        <a href="pilot" class="cl-effect-1">ÌååÏùºÎüø</a>
                        <a href="#" class="cl-effect-1">ÏßÄÏó≠ Î∞è ÎÇ†Ïî®</a>
                        <a href="#" class="cl-effect-1">Í≥†Í∞ùÏßÄÏõê</a>
                        <a href="#" class="cl-effect-1">Ïª§ÎÆ§ÎãàÌã∞</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="signIn" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="basket" class="cl-effect-1">RESERVATION</a>
>>>>>>> refs/remotes/origin/master
                   </span>
                </div>
            </div>
<<<<<<< HEAD
        </div>
        <!-- //header -->
        
        <!-- ªÛºº∞Àªˆ -->
=======
        
>>>>>>> refs/remotes/origin/master
        <div id="header-nav">
<<<<<<< HEAD
            <div class="container" style="color: #242424; width: 1100px;">
                <ul class="search">
                    <div class="block">
                        <div id="calendar">
                            ¥Îø©¿œ π◊ π›≥≥¿œ&nbsp;&nbsp;
                                <input type="text" data-range="true"
                                            data-multiple-dates-separator=" - " data-language="ko"
                                            class="datepicker-here" style="width:180px; height: 25px;"/>
                        </div>
                    </div>
             
						<!-- <input type="text" id="datepicker" style="width: 150px; height: 27px; border-radius: 5px; margin-top: auto; margin-bottom: auto;" placeholder="¥Îø©¿œ¿ª º±≈√«œººø‰ :D">
=======
                <ul class="search">
                    <div class="block">
                        <div id="calendar">
                           ÎåÄÏó¨Ïùº<i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp;&nbsp;
                                <input type="text" data-range="true"
                                            data-multiple-dates-separator=" - " data-language="ko"
                                            class="datepicker-here" style="width:180px; height: 25px;"/>
                        </div>
                    </div>
             
						<!-- <input type="text" id="datepicker" style="width: 150px; height: 27px; border-radius: 5px; margin-top: auto; margin-bottom: auto;" placeholder="ÔøΩÎø©ÔøΩÔøΩÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩœºÔøΩÔøΩÔøΩ :D">
>>>>>>> refs/remotes/origin/master
               				<script src="pikaday.js"></script>
                   			<script>
                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
                       	</script> -->
                       	
<<<<<<< HEAD
                    <li class="search1">Ω√∏Æ¡Ó∏Ì<i class="fa fa-plane" aria-hidden="true"></i>
=======
                    <li class="search1">ÏãúÎ¶¨Ï¶àÎ™Ö<i class="fa fa-plane" aria-hidden="true"></i>
>>>>>>> refs/remotes/origin/master
                        <div class="sub-menu-1">
<<<<<<< HEAD
                            <ul>
                                <li class="hover-dro">∏≈∫Ú<i class="fa fa-angle-right" aria-hidden="true"></i>
=======
                            <ul id="sub-menu">
                                <li class="hover-dro">Îß§ÎπÖ<i class="fa fa-angle-right" aria-hidden="true"></i>
>>>>>>> refs/remotes/origin/master
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
                                <li class="hover-dro">∫Òπ‰<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>BEBOP 2 SINGLE</li>
                                            <li>BEBOP 2+SKY CONTROLLER</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">Ω∫∆ƒ≈©<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>MINI SPARK</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">¿ŒΩ∫∆ƒ¿ÃæÓ<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>INSPIRE 1V2 1¿Œ</li>
                                            <li>INSPIRE 1V2 2¿Œ</li>
                                            <li>INSPIRE 1 PRO 1¿Œ</li>
                                            <li>INSPIRE 1 PRO 2¿Œ</li>
                                            <li>INSPIRE 2 ZENMUSE X5S 1¿Œ</li>
                                            <li>INSPIRE 2 ZENMUSE X5S 2¿Œ</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">∆“≈“<i class="fa fa-angle-right" aria-hidden="true"></i>
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
                    <li class="search1">∞°∞›<i class="fa fa-tags" aria-hidden="true"></i>
                        <div class="sub-menu-1">
                            <ul id="sub-menu">
<<<<<<< HEAD
                                <li class="hover-dro">~ 10∏∏ø¯</li>
                                <li class="hover-dro">10 ~ 20∏∏ø¯</li>
                                <li class="hover-dro">20∏∏ø¯ ~</li>
=======
                                <li class="hover-dro">~ 10ÎßåÏõê</li>
                                <li class="hover-dro">10 ~ 20ÎßåÏõê</li>
                                <li class="hover-dro">20ÎßåÏõê ~</li>
>>>>>>> refs/remotes/origin/master
                            </ul>
                        </div>
                    </li>                  
<<<<<<< HEAD
                    <button id="btnSch">∞Àªˆ<i class="fa fa-search" aria-hidden="true"></i></button>             
=======
                    <button id="btnSch">Í≤ÄÏÉâ<i class="fa fa-search" aria-hidden="true"></i></button>             
>>>>>>> refs/remotes/origin/master
                </ul>
        </div>
<<<<<<< HEAD
        
        <!-- ªÛºº∞Àªˆ∞·∞˙ ∏Ò∑œ -->
        <div id="contents" class="container">
		    
				<div id="drone-grid">
					<!-- 1π¯¬∞ ¥‹∂Ù -->
=======
        </div>
          <!-- //header -->
        <!-- contents -->
        <div id="contents">
        	<div class="container">
				<div id="drone-grid">
					<!-- 1Î≤àÏß∏ Îã®ÎùΩ -->
>>>>>>> refs/remotes/origin/master
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0001.png" alt="∏≈∫Ú2«¡∑Œ"/>
                              <figcaption>
                              <p>1¿Œƒ° ºæº≠ ≈æ¿Á / ¿¸ πÊ«‚ ¿Âæ÷π∞ »∏«« ºæº≠ ≈æ¿Á / APAS 2.0 ≈æ¿Á<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                              <!-- <p>DJI</p><br>
                              <p>270,000ø¯</p> -->
                                <div class="heading">
                                  <h2><span>MAVIC</span> 2 PRO</h2>
                                </div>
                              </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>		              
	                </div>
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0002.png" alt="∏≈∫Ú«¡∑Œ" />
                                <figcaption>
                                  <p>∞°∞›¥Î∫Ò √÷∞Ì¿« º∫¥…¿ª ¿⁄∂˚«œ¥¬ ¿‘πÆøÎ or ¡ﬂ±ﬁ¿⁄øÎ µÂ∑–<span> / 200,000<i class="fas fa-won-sign"></i></span></p>
                                  <!-- <p>DJI</p><br>
                                  <p>270,000ø¯</p> -->
                                    <div class="heading">
                                      <h2><span>MAVIC</span> PRO</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>       
	                </div>
	              <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0003.png" alt="∆“≈“4" />
                                <figcaption>
                                    <p>4K√‘øµ / ¿Âæ÷π∞ ¿⁄µø »∏«« ±‚¥… / ¿Œ≈⁄∏Æ¿¸∆Æ«— ∫Ò«‡ ±‚¥… ≈æ¿Á<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 4</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0004.png" alt="∆“≈“4«¡∑Œ" />
                                <figcaption>
                                    <p>1¿Œƒ° 20 ∏ﬁ∞°«»ºø Exmor R CMOS ºæº≠∏¶ ≈æ¿Á«— ªı∑ŒøÓ DJI ∆“≈“ ƒ´∏ﬁ∂Û / ±ÊæÓ¡¯ ∫Ò«‡Ω√∞£ / ¥ıøÌ Ω∫∏∂∆Æ«— ±‚¥…µÈ<span> / 150,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 4 PRO</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>              
	                </div>
	          
	                <!-- 2π¯¬∞ ¥‹∂Ù -->
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0005.png" alt="∆“≈“3æÓµÂπÍΩ∫µÂ" />
                                <figcaption>
                                    <p>FULL-HD √‘øµ¿Ã ∞°¥…«œ∏Á ∫Ò¿¸ «¡∑Œ∫Ò¿˙¥◊ ºæº≠∑Œ Ω«≥ªø°º≠µµ Ω±∞‘ ¡∂¡æ∞°¥…«— DJI ∆“≈“3 æÓµÂπÍΩ∫µÂ<span> / 250,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 3 ADVANCED</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div>                
	                <div class="block">	                
	                   <figure class="block">
                            <img src="img/drone/D0006.png" alt="∆“≈“3«¡∑Œ∆‰º≈≥Œ" />
                                <figcaption>
                                    <p>4K ƒ´∏ﬁ∂Û, Ω«Ω√∞£ HDøµªÛ, øœ∫Æ«— ∫Ò«‡ ¡¶æÓ, √ ∫∏¿⁄µÈ¿« æ»¿¸ ∫Ò«‡¿ª ¿ß«— ∫Ò±‚≥  ∏µÂ, ∫Ò¡Ø ∆˜¡ˆº≈¥◊ Ω√Ω∫≈€<span> / 300,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 3 PROFESSIONAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>               
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0007.png" alt="πÃ¥œΩ∫∆ƒ≈©" />
                                <figcaption>
                                    <p>ºø«« or πÃ¥œ ∑π¿ÃΩÃ µÂ∑–, 2√‡ ¡¸π˙ ≈æ¿Á! 2KM ¡∂¡æ ∞°¥…, DJI ∞Ì±€ »£»Ø ∞°¥…(πË≈Õ∏ÆøÕ ∞°πÊ¿Ã √ﬂ∞°µ» FLY MORE COMBO ºº∆Æ)<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>SPARK</span> MINI</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>             
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0008.png" alt="∏≈∫Ú2ø£≈Õ«¡∂Û¿Ã¡Ó ¿Ø¥œπˆº»" />
                                <figcaption>
                                    <p>√ﬂ∞° ±‚±‚∏¶ ø¨∞·Ω√ƒ—¡÷¥¬ »Æ¿Â ∆˜∆ÆøÕ «‘≤≤ ¥ŸæÁ«— ¡ﬂø‰ æ˜π´¿« »ø¿≤º∫¿ª ≥Ùø©∫∏ººø‰!<span> / 150,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> 2 ENTERPRISE UNIVERSAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>
	                
	                <!-- 3π¯¬∞ ¥‹∂Ù -->
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0009.png" alt="∏≈∫Ú2ø£≈Õ«¡∂Û¿Ã¡Ó µ‡æÛ" />
                                <figcaption>
                                    <p>FLIR ø≠»≠ªÛ ƒ´∏ﬁ∂Û∞° ¿ÂΩƒµ» ±‚æ˜øÎ ∏≈∫Ú2 ø£≈Õ«¡∂Û¿Ã¡Ó<span> / 200,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> 2 ENTERPRISE DUAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>          
	                </div>                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0010.png" alt="∏≈∫ÚAIR"/>
                                <figcaption>
                                    <p>¡¢¿ÃΩƒ µ¿⁄¿Œ¿∏∑Œ »ﬁ¥Îº∫ UP! ∫∏¥Ÿ ∞°∫±∞Ì ºº∑√µ» µ¿⁄¿Œ¿∏∑Œ ªı∑”∞‘ √‚Ω√µ» DJI¿« √÷Ω≈ µÂ∑–<span> / 250,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> AIR</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0011.png" alt="¿ŒΩ∫∆ƒ¿ÃæÓ1V2 1¿Œ"/>
                                <figcaption>
                                    <p>4K(UHD) »≠¡˙¿« øµªÛ, 1200∏∏ »≠º“, »ÁµÈ∏≤¿ª ¿‚æ∆¡÷¥¬ ¥ıøÌ æ»¡§µ» ¿¸πÆ «◊∞¯√‘øµ µÂ∑–<span> / 130,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>INSPIRE</span> 1V2 1¿Œ</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>	                
	                <div class="block">
	                   <figure class="block">
                            <img src="img/drone/D0012.png" alt="¿ŒΩ∫∆ƒ¿ÃæÓ1V2 2¿Œ"/>
                                <figcaption>
                                    <p>4K(UHD) »≠¡˙¿« øµªÛ, 1200∏∏ »≠º“, »ÁµÈ∏≤¿ª ¿‚æ∆¡÷¥¬ ¥ıøÌ æ»¡§µ» ¿¸πÆ «◊∞¯√‘øµ 2¿Œ ¡∂¡æ ∆–≈∞¡ˆ, ∫Ò«‡∞˙ øµªÛ√‘øµ¿∫ 1∏Ìæø ∞°¥…<span> / 160,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000ø¯</p> -->
                                    <div class="heading">
                                        <h2><span>INSPIRE</span> 1V2 2¿Œ</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div>
	                
<<<<<<< HEAD
	                <!-- 4π¯¬∞ ¥‹∂Ù -->
=======
	                <!-- 4ÔøΩÔøΩ¬∞ ÔøΩ‹∂ÔøΩ -->
>>>>>>> refs/remotes/origin/master
	                <!--<div class="block">
	                    <figure class="block">
<<<<<<< HEAD
                            <img src="img/drone/D0013.png" alt="¿ŒΩ∫∆ƒ¿ÃæÓ1PRO 1¿Œ"/>
=======
                            <img src="img/drone/D0013.png" alt="ÔøΩŒΩÔøΩÔøΩÔøΩÔøΩÃæÔøΩ1PRO 1ÔøΩÔøΩ"/>
>>>>>>> refs/remotes/origin/master
                                <figcaption>
<<<<<<< HEAD
                                    <p>¿ŒΩ∫∆ƒ¿ÃæÓ 1 «¡∑Œ ∫Ì∑¢ø°µº«. PIX4D 15¿œ π´∑·¿ÃøÎ±« ¡ı¡§!<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
=======
                                    <p>ÔøΩŒΩÔøΩÔøΩÔøΩÔøΩÃæÔøΩ 1 ÔøΩÔøΩÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ. PIX4D 15ÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩÃøÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩ!<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
>>>>>>> refs/remotes/origin/master
                                      <!-- <p>DJI</p><br>
<<<<<<< HEAD
                                      <p>270,000ø¯</p> -->
=======
                                      <p>270,000ÔøΩÔøΩ</p> -->
>>>>>>> refs/remotes/origin/master
                                   <!-- <div class="heading">
<<<<<<< HEAD
                                        <h2><span>INSPIRE</span> 1PRO 1¿Œ</h2>
=======
                                        <h2><span>INSPIRE</span> 1PRO 1ÔøΩÔøΩ</h2>
>>>>>>> refs/remotes/origin/master
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div> -->
<<<<<<< HEAD
	               
	            
			</div>
		</div>
=======
				</div>
>>>>>>> refs/remotes/origin/master
		
<<<<<<< HEAD
		<!-- ∆‰¿Ã¬° √≥∏Æ -->
		<div class="btnPaging">
=======
		
				<!-- ÌéòÏù¥Ïßï -->
					<div class="btnPaging">
>>>>>>> refs/remotes/origin/master
                        <ul class="pagination" style="font-size: 17px;">
                            <li>
                                <a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </div>
<<<<<<< HEAD

        <div id="footer">
             <!-- µÂ∑°±◊ ∫Ò±≥ ª˝º∫«œ±‚ -->
            <div id="compareChatDrone"></div>

            <div id="footer-nav">
                <div class="container"></div>
=======
>>>>>>> refs/remotes/origin/master
            </div>
<<<<<<< HEAD
            <div id="footer-info">
                <div class="container">
                    <ul class="info">
                        <li>
                            <dl>
                                <dd class="txt" style="font-size: 14px; color: #a4a4a4;">»∏ªÁº“∞≥</dd>
                                <dd class="txt">(¡÷)∫Ò∆Æƒ∑«¡:DIFE</dd>
                                <dd class="txt">º≠øÔ∆Ø∫∞Ω√ ∏∂∆˜±∏ πÈπ¸∑Œ 23 ±∏«¡∂Û¿⁄ 3√˛</dd>
                                <dd class="txt">02-707-1480</dd>
                                <dd class="txt"><a href="#" style="color: #a4a4a4;">∞Ì∞¥ºæ≈Õ</a></dd>
                                <dd class="txt"><a href="#" style="color: #a4a4a4;">¿ÃøÎæ»≥ª</a></dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</body></html>
=======
            <!-- //container -->
		</div>
		<!-- //contents -->
		<!-- footer -->
		<div id="footer">
			<div id="footer-nav">
				<!-- ÎìúÎ°† ÎπÑÍµêÌïòÎäî Í±¥ footer-navÏóêÏÑú ÎßåÎì§Î©¥ Îê†Í±∞ Í∞ôÏäµÎãàÎã§!! cssÎèÑ footer-nav ÎÜíÏù¥ ÏÑ§Ï†ïÌïòÏÖîÏÑú ÌïòÏãúÎ©¥ Îê†Í±∞ Í∞ôÏïÑÏöî. -->
				<div id="compareChatDrone"></div>
			</div>
			<div id="footer-info">
				(Ï£º)ÎπÑÌä∏Ï∫†ÌîÑ:DIFE
				<div id="footer_info1">
					<p>ÏÑúÏö∏ÌäπÎ≥ÑÏãú ÎßàÌè¨Íµ¨ Î∞±Î≤îÎ°ú 23 Íµ¨ÌîÑÎùºÏûê 3Ï∏µ</p>
					<p>02-707-1480</p>
					<p>
						<a href="#">Í≥†Í∞ùÏÑºÌÑ∞</a>
					</p>
					<p>
						<a href="#">Ïù¥Ïö©ÏïàÎÇ¥</a>
					</p>
				</div>
			</div>
		</div>
		<!-- //footer -->
	</div>
</body>
</html>
>>>>>>> refs/remotes/origin/master
