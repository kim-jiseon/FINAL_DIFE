<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- ����Ʈ -->
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- �⺻ ��ũ -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/drone_dt.css">
<!-- �޷� -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
$(function() {
    $("#datepicker1").datepicker();
    $("#datepicker2").datepicker();
});

$(function() {
    $("#datepicker1").datepicker();
    $("#datepicker2").datepicker();
});


</script>
</head>
<body>
<div id="wrap">
		<div id="header">
			<div id="header-top" class="header-top">
				<div class="header-right">
					<a href="#">�α���</a>
					<a href="#">����������</a>
					<a href="basket.html">��ٱ���</a>
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
				<div class="container">header-nav</div>
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
								<li id="border">
									<img src="img/drone/D0001.png" width="450" height="490">
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
							<div id="form-group1">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">�뿩�� : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                     <input id="datepicker1" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                </span> 
                            </div>
                                 
							<div id="form-group2">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">�ݳ��� : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                     <input id="datepicker2" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                </span> 
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
							<hr>
							<li>
							<li>						
							<a href="payment.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>�ֹ��ϱ�</strong></button>
							</a>
							</li>
							<li>
							<!-- ��ٱ��� ��� Ŭ���� ��� -->	                                             
	                            <!-- Trigger/Open The Modal -->
	                            
							    <button id="myBtn" type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>��ٱ��� ���</strong></button>						 
							    <!-- The Modal -->
							    <div id="myModal" class="modal">						 
							      <!-- Modal content -->
							      <div class="modal-content">
							        <span class="close">&times;</span>                                                               
							        <p>��ٱ��� ��� ���� :-)</p>
							      </div>						 
							    </div>
							    <script>
								    // Get the modal
							        var modal = document.getElementById('myModal');
							 
							        // Get the button that opens the modal
							        var btn = document.getElementById("myBtn");
							 
							        // Get the <span> element that closes the modal
							        var span = document.getElementsByClassName("close")[0];                                          
							 
							        // When the user clicks on the button, open the modal 
							        btn.onclick = function() {
							            modal.style.display = "block";
							        }
							 
							        // When the user clicks on <span> (x), close the modal
							        span.onclick = function() {
							            modal.style.display = "none";
							        }
							 
							        // When the user clicks anywhere outside of the modal, close it
							        window.onclick = function(event) {
							            if (event.target == modal) {
							                modal.style.display = "none";
							            }
							        }
							    </script>                                                                               
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
		            <div class="container">footer-nav</div>
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