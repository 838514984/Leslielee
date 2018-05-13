<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/my-login.js"></script>

<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>


	<script >
		$(document).ready(function() {

			$('#btn_submit').click(function(){
				console.log("-----------");
				console.log($('#phone').val());
				$.ajax({
					url: '<?php include '../config.php';echo HOST.'api/login/login.php';?>',
					type: 'POST',
					dataType: 'text',
					data: {phone: $('#phone').val(),passWord:$('#password').val()},
					beforeSend: function () {
                        console.log("beforeSend");
                    },
                    success: function (msg) {
                    	if (msg == "success") {
                    		console.log("login success");
                    		$("#myModal").modal('toggle');
                    	}else{
                    		console.log(msg);
                    		$("#login_error").text(msg);
                    		$("#myModal2").modal('toggle');
                    	};
                    },
                    complete: function (data) {
                        console.log("complete data: "+data);
                    },
                    error: function (XMLHttpRequest, textStatus, thrownError) {
                    	console.log("error textStatus: "+textStatus);
                    }
				})

			});


			$.ajax({
				url: '/path/to/file',
				type: 'default GET (Other values: POST)',
				dataType: 'default: Intelligent Guess (Other values: xml, json, script, or html)',
				data: {param1: 'value1'},
			})
			.done(function() {
				console.log("success");
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
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
							<h4 class="card-title">Login</h4>
							<!--<form method="POST">-->

								<div class="form-group">
									<label for="phone">手机号</label>

									<input id="phone" type="phone" class="form-control" name="phone" value="" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">密码
										<a href="forgot.html" class="float-right">
											忘记密码？
										</a>
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								</div>

								<div class="form-group">
									<label>
										<input type="checkbox" name="remember"> 记住我
									</label>
								</div>

								<div class="form-group no-margin">
									<button id="btn_submit"  class="btn btn-primary btn-block">
										登录
									</button>
								</div>
								<div class="margin-top20 text-center">
									没有账号? <a href="register.php">创建一个</a>
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
						<h3><span class="text-primary">登录成功</span></h3>
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