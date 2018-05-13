<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>那朵花午夜-注册</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
        <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/my-login.js"></script>

	<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script >
    var _time = 60;
    var interval ;
    		function sms_count(){
    			_time = _time-1;
    			$("#btn_send_sms").text(_time+"s");
    			if (_time == 0) {
    				_time = 60;
    				clearInterval(interval);
    				$("#btn_send_sms").text("发送");
    			};
    		}
            function show_dialog(msg){
                $('#login_error').attr("class","text-danger");
                $("#login_error").text(msg);
                $("#myModal2").modal('toggle');
            }

            function show_info_dialog(msg){
                $('#login_error').attr("class","text-info");
                $("#login_error").text(msg);
                $("#myModal2").modal('toggle');
            }
    	$(document).ready(function(){
    		$("#btn_send_sms").click(function(){
    			if (_time == 60) {
                    var phone = $("#phone").val();
                    if(phone.length != 11){
                        $("#login_error").text("手机号码格式不正确！");
                        $("#myModal2").modal('toggle');
                        return;
                    };
    				interval = setInterval(sms_count, 1000);
                    $.ajax({
                        url: '<?php include '../config.php';echo HOST.'api/sms/sendsms.php';?>',
                        type: 'POST',
                        dataType: 'text',
                        data: {phone: $('#phone').val()}
                    });
                    show_info_dialog("已发送");
    			}else if (_time == 0){
    				_time = 60;
    			};
    		});

            $("#regist").click(function(){
                        var name;
                        var phone;
                        var code;
                        var invite;
                        var password;
                        name = $("#name").val();
                        phone = $("#phone").val();
                        code = $("#sms").val();
                        invite = $("#invite_code").val();
                        password = $("#password").val();
                        console.log(invite);
                        if (name == "" ) {
                            show_dialog("没有填写昵称！");
                        }else if(phone == ""){
                            show_dialog("没有填写手机号！");
                        }else if(code == ""){
                            show_dialog("没有填写验证码！");
                        }else if(password == ""){
                            show_dialog("没有填写密码！");
                        }else if(phone.length != 11){
                            show_dialog("手机号码格式不正确！");
                        }else{
                            $.ajax({
                                url: '<?php include '../config.php';echo HOST.'api/regist/regist.php';?>',
                                type: 'POST',
                                dataType: 'text',
                                data: {phone: phone,name:name,code:code,invite:invite,password:password,invite:invite},
                                beforeSend: function () {
                                    console.log("beforeSend");
                                },
                                success: function (msg) {
                                    if (msg == "success") {
                                        console.log("login success");
                                        $("#myModal").modal('toggle');
                                    }else{
                                        show_dialog(msg);
                                    };
                                },
                                error: function (XMLHttpRequest, textStatus, thrownError) {
                                    show_dialog("哦噢,出现了一点小错误");
                                }
                            });
                        };


            });

        });





</script>
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="img/logo.jpg">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">注册</h4>
							<!--<form method="POST">-->

								<div class="form-group">
									<label for="name">昵称</label>
									<input id="name" oninput="if(value.length>20)value=value.slice(0,20)"  type="text" class="form-control" name="name" required autofocus>
								</div>

								<div class="form-group">
									<label for="phone">手机号码</label>
									<input id="phone" type="number" oninput="if(value.length>11)value=value.slice(0,11)" maxlength="11" class="form-control"  required>
									<button id="btn_send_sms" class="btn btn-primary btn-xs pull-right">发送</button>
								</div>

								<div class="form-group">
									<label for="sms">验证码</label>
									<input id="sms" type="number" class="form-control" name="sms" required data-eye>
								</div>


                                <div class="form-group">
                                    <label for="invate_code">邀请码（选填）</label>
                                    <input id="invite_code" type="number" class="form-control" name="invite_code" required data-eye>
                                </div>


								<div class="form-group">
									<label for="password">密码</label>
									<input id="password" oninput="if(value.length>30)value=value.slice(0,30)" type="password" class="form-control" name="password" required data-eye>
								</div>
<!--
								<div class="form-group">
									<label>
										<input type="checkbox" name="aggree" value="1"> I agree to the Terms and Conditions
									</label>
								</div>
-->
								<div class="form-group no-margin">
									<button id="regist" type="" class="btn btn-primary btn-block">
										注册
									</button>
								</div>
								<div class="margin-top20 text-center">
									已有账号? <a href="index.php">登录</a>
								</div>
							<!--</form>-->
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2017 &mdash; naduohua
					</div>
				</div>
			</div>
		</div>
	</section>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
                <div class="modal-content">
                  <!--<div class="modal-header">

                  </div>-->
                  <div class="modal-body">
                        <h3><span class="text-primary">注册成功</span></h3>
                  </div>

                  <div class="modal-footer">
                        <span class="text-mute">正在跳转...</span>
                  </div>
                </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog">
		        <div class="modal-content">
		          <!--<div class="modal-header">

		          </div>-->
		          <div class="modal-body">
						<h3><span class="text-danger" id = "login_error">登录失败！</span></h3>
		          </div>


		        </div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div>

</body>
</html>