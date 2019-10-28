<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- À¥ÆùÆ® -->
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- ±âº» ¸µÅ© -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/droneDetail.css">
<!-- ´Ş·Â -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
$(function() {
    var scale = $('.scale');
    var zoom = scale.data('zoom');
    
    $('.img').on('mousemove',magnify).prepend('<div class="magnifier"></div>').children('.magnifier').css({
        "backgroun":"url('"+scale.attr('src')+"')no-repeat","background-size":scale.width()*zoom+"px "+scale.height()*zoom+"px"
    });
    
    var magnifier = $('.magnifier');
    function magnify(e){
        // ¸¶¿ì½º À§Ä¡¿¡¼­ .magnifyÀÇ À§Ä¡¸¦ Â÷°¨ÇØ ÄÁÅ×ÀÌ³Ê¿¡ ´ëÇÑ ¸¶¿ì½º ÁÂÇ¥¸¦ ¾ò´Â´Ù.
        var mouseX = e.pageX - $(this).offset().left;
        var mouseY = e.pageY - $(this).offset().top;
        // ÄÁÅ×ÀÌ³Ê ¹ÛÀ¸·Î ¸¶¿ì½º°¡ ¹ş¾î³ª¸é µ¸º¸±â¸¦ ¾ø¾Ø´Ù.
        if(mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0){
            magnifier.fadeIn(100);
        }
        else{
            magnifier.fadeOut(100);
        }
        
        // µ¸º¸±â°¡ Á¸ÀçÇÒ ¶§
        if(magnifier.is(":visible")){
            // ¸¶¿ì½º ÁÂÇ¥ È®´ëµÉ ÀÌ¹ÌÁö ÁÂÇ¥¸¦ ÀÏÄ¡½ÃÅ²´Ù.
            var rx = -(mouseX * zoom - magnifier.width() /2 );
            var ry = -(mouseY * zoom - magnifier.height() /2 );

          //µ¸º¸±â¸¦ ¸¶¿ì½º À§Ä¡¿¡ µû¶ó ¿òÁ÷ÀÎ´Ù.
          //µ¸º¸±âÀÇ width, height Àı¹İÀ» ¸¶¿ì½º ÁÂÇ¥¿¡¼­ Â÷°¨ÇØ ¸¶¿ì½º¿Í µ¸º¸±â À§Ä¡¸¦ ÀÏÄ¡½ÃÅ²´Ù.
          var px = mouseX - magnifier.width() / 2;
          var py = mouseY - magnifier.height() / 2;

          //Àû¿ë
          magnifier.css({
            left: px,
            top: py,
            backgroundPosition: rx + "px " + ry + "px"
          });
        }
      }
    };
});
</script>
</head>
<body>
<div id="wrap" class="animated fadeIn">
		<div id="header">
			<div id="header-top" class="header-top">
				<div class="header-right">
					<a href="#">LOGIN</a>
					<a href="#">MYPAGE</a>
					<a href="basket.html">RESERVATION</a>
				</div>
				<div class="header-left">
					<div class="title"><a href="main.html"><img src="img/DIFE_logo2.png" alt=""></a></div>
					<div class="category">
						<a href="listDrone.html">µå·Ğ</a>
						<a href="pilot01.html">ÆÄÀÏ·µ</a>
						<a href="#">Áö¿ª ¹× ³¯¾¾</a>
						<a href="#">°í°´Áö¿ø</a>
						<a href="board.html">Ä¿¹Â´ÏÆ¼</a>
					</div>
				</div>
			</div>
			
			<div id="header-nav">
				<div class="container"></div>
			</div>
		</div>
		
		<!-- µå·Ğ »ó¼¼ »ó´Ü -->
		<div id="contents">
	       <!--»óÇ° »ó¼¼°æ·Î <section class="index-section">
	           <div class="section-container">
	               <ul class="index-ul">
	                   <li class="index-li-item">
	                       <a href="main.html">¸ŞÀÎ</a>
	                   </li>
                        <li class="index-li-item">
                           ::before
	                       <a href="drone.html">µå·Ğ</a>
	                   </li>
	                   <li class="index-li-item">
                           ::before
	                       "¸Åºò2ÇÁ·Î"
	                   </li>
	               </ul>
	           </div>
	       </section>-->
			<div class="content1">
				<div class="grid">
					<div id="block1">
						<ul>
							<li>
								<li id="border" class="img">
									<img class="scale" src="img/drone/D0001.png" width="450" height="490">
								</li>
                            </li>
                        </ul>
					</div>
					
					<div id="block2">
						<ul style="color: white; font-size: 14px;">
							<li><p>µå·Ğ¸í : <strong>¸ÅºòPRO</strong></p></li>
							<hr>	
							<li><p>°¡°İ : <strong>200,000¿ø</strong></p></li>
							<hr>
							<li><p>½Ã¸®Áî¸í : <strong>MAVIC</strong></p></li>
							<li><p>Á¦Á¶»ç¸í : <strong>DJI</strong></p></li>
							<hr>
							<li><p>´ë¿©Á¡ : 
								<span id="opr">
									<select id="operR" name="operR" style="width: 150px; height: 30px;">
										<option value="R0001">ÆÄÁÖÁ¡</option>
										<option value="R0002">Àá½ÇÁ¡</option>
										<option value="R0003">¼­±ÍÆ÷Á¡</option>
										<option value="R0004">ÇØ¿î´ëÁ¡</option>
										<option value="R0005">µĞ»êÁ¡</option>
										<option value="R0006">°­¸ªÁ¡</option>
										<option value="R0007">ºÎ»êÁ¡</option>
										<option value="R0008">´ë±¸Á¡</option>
										<option value="R0009">¿ï»êÁ¡</option>
										<option value="R0010">¿©¼öÁ¡</option>
										<option value="R0011">¸ñÆ÷Á¡</option>
										<option value="R0012">¿À»êÁ¡</option>
										<option value="R0013">¼ÓÃÊÁ¡</option>
										<option value="R0014">Æ÷Ç×Á¡</option>
										<option value="R0015">±èÆ÷Á¡</option>
									</select>
								</span>
							</p></li>
							<li><p>¼ö    ·® :							 
								<span id="opa">
									<select id="operA" name="operA" style="width: 150px; height: 30px;">
										<option value="amt1">1</option>
										<option value="amt2">2</option>
										<option value="amt3">3</option>
										<option value="amt4">4</option>
										<option value="amt5">5</option>
										<option value="amt0">6°³ ÀÌ»ó(º°µµ ¹®ÀÇ)</option>
										<!-- 5°³ ÀÌ»ó ¿É¼Ç¼±ÅÃ ½Ã ´ë¿©¼ö·® µû·Î ±âÀç or ¹®ÀÇ±Û ³²±âµµ·Ï À¯µµ? -->
									</select>
								</span>
							</p></li>
							<hr>
							
							<!-- Ä¶¸°´õ -->						
							<!--<div id="form-group1">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">´ë¿©ÀÏ : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> -->
                                     <!-- <input id="datepicker1" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> -->
                                 
							<!--<div id="form-group2">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">¹İ³³ÀÏ : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                    <!-- <input id="datepicker2" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> 
							
                            <!--  
                            <li>							
							<div>
								<span id="calendar" class="search1"><strong>´ë¿©ÀÏ : </strong></span>
								<input type="text" id="datepicker1" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>	
                       		</li>
							<li>       							
							<div>
								<span id="calendar" class="search1"><strong>¹İ³³ÀÏ : </strong></span>
								<input type="text" id="datepicker2" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>
                       		</li>
                       		-->
                       		 
							<li>						
							<a href="payment.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>ÁÖ¹®ÇÏ±â</strong></button>
							</a>
							</li>
							<li>
							<!-- Àå¹Ù±¸´Ï ´ã±â Å¬¸¯½Ã ¸ğ´Ş -->	                                             
	                            <!-- Trigger/Open The Modal -->
	                            
							    <button id="myBtn" type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>Àå¹Ù±¸´Ï ´ã±â</strong></button>						 
							                                                                  
	                        </li>
							<li>
							<a href="drone.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>¼îÇÎ °è¼ÓÇÏ±â</strong></button>
							</a>
							</li>
						</ul>
					</div>		
				</div>
			<hr>
			
			<!-- µå·Ğ »ó¼¼ Á¤º¸ -->
			<div class="content2">
				<div class="block">
					<img src="img/drone/dro_dt.png">
				</div>
			</div>
		
			<div id="footer">
		        <div id="footer-nav">
		            <div class="container"></div>
		        </div>
		        <div id="footer-info">
		            <div class="container">
		            <ul class="info">
		                <li>
		                    <dl>
		                        <dd class="txt" style="font-size: 14px; color: #a4a4a4">È¸»ç¼Ò°³</dd>
		                        <dd class="txt">(ÁÖ)ºñÆ®Ä·ÇÁ:DIFE</dd>
		                        <dd class="txt">¼­¿ïÆ¯º°½Ã ¸¶Æ÷±¸ ¹é¹ü·Î 23 ±¸ÇÁ¶óÀÚ 3Ãş</dd>
		                        <dd class="txt">02-707-1480</dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">°í°´¼¾ÅÍ</a></dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">ÀÌ¿ë¾È³»</a></dd>
		                    </dl>
		                </li>
		            </ul>
		            </div>
		        </div>
		    </div>
	    </div>
    </div>
    </body>
=======
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
<!-- ì›¹í°íŠ¸ -->
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- ê¸°ë³¸ css ë§í¬ -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/droneDetail.css">
<!-- ë‹¬ë ¥ -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script type="text/javascript">
$(function() {
	/* ë§ˆìš°ìŠ¤ hover ì‹œ í™•ëŒ€ íš¨ê³¼ */
    var scale = $('.scale');
    var zoom = scale.data('zoom');
    
    $('.img').on('mousemove',magnify).prepend('<div class="magnifier"></div>').children('.magnifier').css({
        "backgroun":"url('"+scale.attr('src')+"')no-repeat","background-size":scale.width()*zoom+"px "+scale.height()*zoom+"px"
    });
    
    var magnifier = $('.magnifier');
    function magnify(e){
        // ë§ˆìš°ìŠ¤ ìœ„ì¹˜ì—ì„œ .magnifyì˜ ìœ„ì¹˜ë¥¼ ì°¨ê°í•´ ì»¨í…Œì´ë„ˆì— ëŒ€í•œ ë§ˆìš°ìŠ¤ ì¢Œí‘œë¥¼ ì–»ëŠ”ë‹¤.
        var mouseX = e.pageX - $(this).offset().left;
        var mouseY = e.pageY - $(this).offset().top;
        // ì»¨í…Œì´ë„ˆ ë°–ìœ¼ë¡œ ë§ˆìš°ìŠ¤ê°€ ë²—ì–´ë‚˜ë©´ ë‹ë³´ê¸°ë¥¼ ì—†ì•¤ë‹¤.
        if(mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0){
            magnifier.fadeIn(100);
        }
        else{
            magnifier.fadeOut(100);
        }
        
        // ë‹ë³´ê¸°ê°€ ì¡´ì¬í•  ë•Œ
        if(magnifier.is(":visible")){
            // ë§ˆìš°ìŠ¤ ì¢Œí‘œ í™•ëŒ€ë  ì´ë¯¸ì§€ ì¢Œí‘œë¥¼ ì¼ì¹˜ì‹œí‚¨ë‹¤.
            var rx = -(mouseX * zoom - magnifier.width() /2 );
            var ry = -(mouseY * zoom - magnifier.height() /2 );

          //ë‹ë³´ê¸°ë¥¼ ë§ˆìš°ìŠ¤ ìœ„ì¹˜ì— ë”°ë¼ ì›€ì§ì¸ë‹¤.
          //ë‹ë³´ê¸°ì˜ width, height ì ˆë°˜ì„ ë§ˆìš°ìŠ¤ ì¢Œí‘œì—ì„œ ì°¨ê°í•´ ë§ˆìš°ìŠ¤ì™€ ë‹ë³´ê¸° ìœ„ì¹˜ë¥¼ ì¼ì¹˜ì‹œí‚¨ë‹¤.
          var px = mouseX - magnifier.width() / 2;
          var py = mouseY - magnifier.height() / 2;

          //ì ìš©
          magnifier.css({
            left: px,
            top: py,
            backgroundPosition: rx + "px " + ry + "px"
          });
        }
      }
    
    const body = document.querySelector("body");
const modal = document.querySelector(".modal");
const modalButton = document.querySelector(".modal-button");
const closeButton = document.querySelector(".close-button");
const scrollDown = document.querySelector(".scroll-down");
let isOpened = false;

const openModal = () => {
  modal.classList.add("is-open");
  body.style.overflow = "hidden";
};

const closeModal = () => {
  modal.classList.remove("is-open");
  body.style.overflow = "initial";
};

window.addEventListener("scroll", () => {
  if (window.scrollY > window.innerHeight / 3 && !isOpened) {
    isOpened = true;
    scrollDown.style.display = "none";
    openModal();
  }
});

modalButton.addEventListener("click", openModal);
closeButton.addEventListener("click", closeModal);

document.onkeydown = evt => {
  evt = evt || window.event;
  evt.keyCode === 27 ? closeModal() : false;
};


});
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
                        <a href="#" class="cl-effect-1">ë“œë¡ </a>
                        <a href="pilot" class="cl-effect-1">íŒŒì¼ëŸ¿</a>
                        <a href="#" class="cl-effect-1">ì§€ì—­ ë° ë‚ ì”¨</a>
                        <a href="#" class="cl-effect-1">ê³ ê°ì§€ì›</a>
                        <a href="#" class="cl-effect-1">ì»¤ë®¤ë‹ˆí‹°</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="signIn" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="basket" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav"></div>
        </div>
		
		<!-- ë“œë¡  ìƒì„¸ ìƒë‹¨ -->
		<div id="contents">
	       <!--ìƒí’ˆ ìƒì„¸ê²½ë¡œ <section class="index-section">
	           <div class="section-container">
	               <ul class="index-ul">
	                   <li class="index-li-item">
	                       <a href="main.html">ë©”ì¸</a>
	                   </li>
                        <li class="index-li-item">
                           ::before
	                       <a href="drone.html">ë“œë¡ </a>
	                   </li>
	                   <li class="index-li-item">
                           ::before
	                       "ë§¤ë¹…2í”„ë¡œ"
	                   </li>
	               </ul>
	           </div>
	       </section>-->
			<div class="content1">
				<div class="grid">
					<div id="block1">
						<ul>
							<li>
								<li id="border" class="img">
									<img class="scale" src="img/drone/D0001.png" width="450" height="490">
								</li>
                            </li>
                        </ul>
					</div>
					
					<div id="block2">
						<ul style="color: white; font-size: 20px;">
							<li><p>ë“œë¡ ëª… : <strong>ë§¤ë¹…PRO</strong></p></li>
							<hr>	
							<li><p>ê°€ê²© : <strong>200,000ì›</strong></p></li>
							<hr>
							<li><p>ì‹œë¦¬ì¦ˆëª… : <strong>MAVIC</strong></p></li>
							<li><p>ì œì¡°ì‚¬ëª… : <strong>DJI</strong></p></li>
							<hr>
							<li><p>ëŒ€ì—¬ì  : 
								<span id="opr">
									<select id="operR" name="operR" style="width: 150px; height: 30px;">
										<option value="R0001">íŒŒì£¼ì </option>
										<option value="R0002">ì ì‹¤ì </option>
										<option value="R0003">ì„œê·€í¬ì </option>
										<option value="R0004">í•´ìš´ëŒ€ì </option>
										<option value="R0005">ë‘”ì‚°ì </option>
										<option value="R0006">ê°•ë¦‰ì </option>
										<option value="R0007">ë¶€ì‚°ì </option>
										<option value="R0008">ëŒ€êµ¬ì </option>
										<option value="R0009">ìš¸ì‚°ì </option>
										<option value="R0010">ì—¬ìˆ˜ì </option>
										<option value="R0011">ëª©í¬ì </option>
										<option value="R0012">ì˜¤ì‚°ì </option>
										<option value="R0013">ì†ì´ˆì </option>
										<option value="R0014">í¬í•­ì </option>
										<option value="R0015">ê¹€í¬ì </option>
									</select>
								</span>
							</p></li>
							<li><p>ìˆ˜    ëŸ‰ :							 
								<span id="opa">
									<select id="operA" name="operA" style="width: 150px; height: 30px;">
										<option value="amt1">1</option>
										<option value="amt2">2</option>
										<option value="amt3">3</option>
										<option value="amt4">4</option>
										<option value="amt5">5</option>
										<option value="amt0">6ê°œ ì´ìƒ(ë³„ë„ ë¬¸ì˜)</option>
										<!-- 5ê°œ ì´ìƒ ì˜µì…˜ì„ íƒ ì‹œ ëŒ€ì—¬ìˆ˜ëŸ‰ ë”°ë¡œ ê¸°ì¬ or ë¬¸ì˜ê¸€ ë‚¨ê¸°ë„ë¡ ìœ ë„? -->
									</select>
								</span>
							</p></li>
							<hr>
							
							<!-- ìº˜ë¦°ë” -->						
							<!--<div id="form-group1">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">ëŒ€ì—¬ì¼ : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> -->
                                     <!-- <input id="datepicker1" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> -->
                                 
							<!--<div id="form-group2">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">ë°˜ë‚©ì¼ : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                    <!-- <input id="datepicker2" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> 
							
                            <!--  
                            <li>							
							<div>
								<span id="calendar" class="search1"><strong>ëŒ€ì—¬ì¼ : </strong></span>
								<input type="text" id="datepicker1" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>	
                       		</li>
							<li>       							
							<div>
								<span id="calendar" class="search1"><strong>ë°˜ë‚©ì¼ : </strong></span>
								<input type="text" id="datepicker2" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>
                       		</li>
                       		-->
                       		 
							<li>						
							<a href="payment.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>ì£¼ë¬¸í•˜ê¸°</strong></button>
							</a>
							</li>
							<li>
							<!-- * modal : ë‹¤ë¥¸ ì†ŒìŠ¤ë¡œ ë³€ê²½í•  ì˜ˆì • -->
							<!-- ì¥ë°”êµ¬ë‹ˆ ë‹´ê¸° í´ë¦­ì‹œ ëª¨ë‹¬ -->	                                             
	                       <!--    <div class="scroll-down">SCROLL DOWN
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
  <path d="M16 3C8.832031 3 3 8.832031 3 16s5.832031 13 13 13 13-5.832031 13-13S23.167969 3 16 3zm0 2c6.085938 0 11 4.914063 11 11 0 6.085938-4.914062 11-11 11-6.085937 0-11-4.914062-11-11C5 9.914063 9.914063 5 16 5zm-1 4v10.28125l-4-4-1.40625 1.4375L16 23.125l6.40625-6.40625L21 15.28125l-4 4V9z"/> 
</svg></div>
<div class="container"></div>

<div class="modal">
  <div class="modal-container">
    <div class="modal-left">
      <h1 class="modal-title">ì¥ë°”êµ¬ë‹ˆ ë‹´ê¸° ì™„ë£Œ â—€:D</h1>
      <p class="modal-desc">ì¥ë°”êµ¬ë‹ˆë¡œ ì´ë™í•˜ì‹œê² ìŠµë‹ˆê¹Œ?</p>
      
      <div class="modal-buttons">
        <button class="input-button-1">ì˜ˆ</button>
        <button class="input-button-2">ì•„ë‹ˆì˜¤</button>
      </div>  
    </div>
    <div class="modal-right">
      <img src="https://images.unsplash.com/photo-1512486130939-2c4f79935e4f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=dfd2ec5a01006fd8c4d7592a381d3776&auto=format&fit=crop&w=1000&q=80" alt="ì¥ë°”êµ¬ë‹ˆ ë‹´ê¸° ì„±ê³µ">
    </div>
    <button class="icon-button close-button">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
    <path d="M 25 3 C 12.86158 3 3 12.86158 3 25 C 3 37.13842 12.86158 47 25 47 C 37.13842 47 47 37.13842 47 25 C 47 12.86158 37.13842 3 25 3 z M 25 5 C 36.05754 5 45 13.94246 45 25 C 45 36.05754 36.05754 45 25 45 C 13.94246 45 5 36.05754 5 25 C 5 13.94246 13.94246 5 25 5 z M 16.990234 15.990234 A 1.0001 1.0001 0 0 0 16.292969 17.707031 L 23.585938 25 L 16.292969 32.292969 A 1.0001 1.0001 0 1 0 17.707031 33.707031 L 25 26.414062 L 32.292969 33.707031 A 1.0001 1.0001 0 1 0 33.707031 32.292969 L 26.414062 25 L 33.707031 17.707031 A 1.0001 1.0001 0 0 0 32.980469 15.990234 A 1.0001 1.0001 0 0 0 32.292969 16.292969 L 25 23.585938 L 17.707031 16.292969 A 1.0001 1.0001 0 0 0 16.990234 15.990234 z"></path>
</svg>
      </button>
  </div>
  <button class="modal-button">Click here to login</button>
</div> -->
	                       <button id="btnBasket" type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>ì¥ë°”êµ¬ë‹ˆ ë‹´ê¸°</strong>                               
                            </button>
                            <!-- * modal ì¶”ê°€ ì˜ˆì • -->
                            <script>
                                $("#btnBasket").click(function(){
                                    alert("ì¥ë°”êµ¬ë‹ˆì— ë‹´ì•˜ì–´ìš”!")
                                });   
                            </script>
	                           						 
							                                                                  
	                        </li>
							<li>
							<a href="drone.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>ì‡¼í•‘ ê³„ì†í•˜ê¸°</strong></button>
							</a>
							</li>
						</ul>
					</div>		
				</div>
			<hr>
			
			<!-- ë“œë¡  ìƒì„¸ ì •ë³´ -->
			<div class="content2">
				<div class="block">
					<img src="img/drone/dro_dt.png">
				</div>
			</div>
		
			<div id="footer">
		        <div id="footer-nav">
		            <div class="container"></div>
		        </div>
		        <div id="footer-info">
		            <div class="container">
		            <ul class="info">
		                <li>
		                    <dl>
		                        <dd class="txt" style="font-size: 14px; color: #a4a4a4">íšŒì‚¬ì†Œê°œ</dd>
		                        <dd class="txt">(ì£¼)ë¹„íŠ¸ìº í”„:DIFE</dd>
		                        <dd class="txt">ì„œìš¸íŠ¹ë³„ì‹œ ë§ˆí¬êµ¬ ë°±ë²”ë¡œ 23 êµ¬í”„ë¼ì 3ì¸µ</dd>
		                        <dd class="txt">02-707-1480</dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">ê³ ê°ì„¼í„°</a></dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">ì´ìš©ì•ˆë‚´</a></dd>
		                    </dl>
		                </li>
		            </ul>
		            </div>
		        </div>
		    </div>
	    </div>
    </div>
  </body>
>>>>>>> refs/remotes/origin/master
</html>