<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>layout</title>
<!-- ����Ʈ -->
<!-- 
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
-->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- �⺻ css -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/droneDetail.css">
<!-- �޷� -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
$(function() {
	/* �̹��� Ȯ�� */
    var scale = $('.scale');
    var zoom = scale.data('zoom');
    
    $('.img').on('mousemove',magnify).prepend('<div class="magnifier"></div>').children('.magnifier').css({
        "backgroun":"url('"+scale.attr('src')+"')no-repeat","background-size":scale.width()*zoom+"px "+scale.height()*zoom+"px"
    });
    
    var magnifier = $('.magnifier');
    function magnify(e){
        // ���콺 ��ġ���� .magnify�� ��ġ�� ������ �����̳ʿ� ���� ���콺 ��ǥ�� ��´�.
        var mouseX = e.pageX - $(this).offset().left;
        var mouseY = e.pageY - $(this).offset().top;
        // �����̳� ������ ���콺�� ����� �����⸦ ���ش�.
        if(mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0){
            magnifier.fadeIn(100);
        }
        else{
            magnifier.fadeOut(100);
        }
        
        // �����Ⱑ ������ ��
        if(magnifier.is(":visible")){
            // ���콺 ��ǥ Ȯ��� �̹��� ��ǥ�� ��ġ��Ų��.
            var rx = -(mouseX * zoom - magnifier.width() /2 );
            var ry = -(mouseY * zoom - magnifier.height() /2 );

          //�����⸦ ���콺 ��ġ�� ���� �����δ�.
          //�������� width, height ������ ���콺 ��ǥ���� ������ ���콺�� ������ ��ġ�� ��ġ��Ų��.
          var px = mouseX - magnifier.width() / 2;
          var py = mouseY - magnifier.height() / 2;

          //����
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
						<a href="listDrone.html">���</a>
						<a href="pilot01.html">���Ϸ�</a>
						<a href="#">���� �� ����</a>
						<a href="#">������</a>
						<a href="board.html">Ŀ�´�Ƽ</a>
					</div>
				</div>
			</div>
			
			<div id="header-nav">
				<div class="container"></div>
			</div>
		</div>
		
		<!-- ��� �� ��� -->
		<div id="contents">
	       <!--��ǰ �󼼰�� <section class="index-section">
	           <div class="section-container">
	               <ul class="index-ul">
	                   <li class="index-li-item">
	                       <a href="main.html">����</a>
	                   </li>
                        <li class="index-li-item">
                           ::before
	                       <a href="drone.html">���</a>
	                   </li>
	                   <li class="index-li-item">
                           ::before
	                       "�ź�2����"
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
							<li><p>��и� : <strong>�ź�PRO</strong></p></li>
							<hr>	
							<li><p>���� : <strong>200,000��</strong></p></li>
							<hr>
							<li><p>�ø���� : <strong>MAVIC</strong></p></li>
							<li><p>������� : <strong>DJI</strong></p></li>
							<hr>
							<li><p>�뿩�� : 
								<span id="opr">
									<select id="operR" name="operR" style="width: 150px; height: 30px;">
										<option value="R0001">������</option>
										<option value="R0002">�����</option>
										<option value="R0003">��������</option>
										<option value="R0004">�ؿ����</option>
										<option value="R0005">�л���</option>
										<option value="R0006">������</option>
										<option value="R0007">�λ���</option>
										<option value="R0008">�뱸��</option>
										<option value="R0009">�����</option>
										<option value="R0010">������</option>
										<option value="R0011">������</option>
										<option value="R0012">������</option>
										<option value="R0013">������</option>
										<option value="R0014">������</option>
										<option value="R0015">������</option>
									</select>
								</span>
							</p></li>
							<li><p>��    �� :							 
								<span id="opa">
									<select id="operA" name="operA" style="width: 150px; height: 30px;">
										<option value="amt1">1</option>
										<option value="amt2">2</option>
										<option value="amt3">3</option>
										<option value="amt4">4</option>
										<option value="amt5">5</option>
										<option value="amt0">6�� �̻�(���� ����)</option>
										<!-- 5�� �̻� �ɼǼ��� �� �뿩���� ���� ���� or ���Ǳ� ���⵵�� ����? -->
									</select>
								</span>
							</p></li>
							<hr>
							
							<!-- Ķ���� -->						
							<!--<div id="form-group1">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">�뿩�� : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> -->
                                     <!-- <input id="datepicker1" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> -->
                                 
							<!--<div id="form-group2">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">�ݳ��� : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                    <!-- <input id="datepicker2" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> 
							
                            <!--  
                            <li>							
							<div>
								<span id="calendar" class="search1"><strong>�뿩�� : </strong></span>
								<input type="text" id="datepicker1" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>	
                       		</li>
							<li>       							
							<div>
								<span id="calendar" class="search1"><strong>�ݳ��� : </strong></span>
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
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>�ֹ��ϱ�</strong></button>
							</a>
							</li>
							<li>
							<!-- ��ٱ��� ��� Ŭ���� ��� -->	                                             
	                            <!-- Trigger/Open The Modal -->
	                            
							    <button id="myBtn" type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>��ٱ��� ���</strong></button>						 
							                                                                  
	                        </li>
							<li>
							<a href="drone.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>���� ����ϱ�</strong></button>
							</a>
							</li>
						</ul>
					</div>		
				</div>
			<hr>
			
			<!-- ��� �� ���� -->
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
		                        <dd class="txt" style="font-size: 14px; color: #a4a4a4">ȸ��Ұ�</dd>
		                        <dd class="txt">(��)��Ʈķ��:DIFE</dd>
		                        <dd class="txt">����Ư���� ������ ����� 23 �������� 3��</dd>
		                        <dd class="txt">02-707-1480</dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">������</a></dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">�̿�ȳ�</a></dd>
		                    </dl>
		                </li>
		            </ul>
		            </div>
		        </div>
		    </div>
	    </div>
    </div>
    </body>
</html>