<?php
session_start();
include '../../MyDb.php';
date_default_timezone_set('PRC');
$name = $_POST['name'];
$invite = $_POST['invite'];
$code = $_POST['code'];
$passWord = $_POST['password'];
$phone = $_POST['phone'];
$registTime = $loginTime = date("Y-m-d H:i:s");


//先判断验证码是否相等
if(isset($_SESSION['sms_code'])){
    if ($code != $_SESSION['sms_code']){
        echo "验证码错误！";
        exit();
    }
}else{
    echo '没有验证码信息，请尝试重新发送验证码';
}

//邀请码
$invite = isset($invite)?$invite:0;


$db = MyDb::getDb();
//先判断是否有相同名
$sql_check_name = "select * from user where name = ?";
$state = $db->prepare($sql_check_name);
$result = $state->execute(array($name));
if($state->rowCount()>0){
    echo '该用户名已注册，请换一个尝试！';
    exit();
}
//判断手机号是否已经注册过
$sql_check_phone = "select * from user where phone = ?";
$state = $db->prepare($sql_check_phone);
$result = $state->execute(array($phone));
if($state->rowCount()>0){
    echo '该手机号已注册，请登录，如忘记密码请重置密码！';
    exit();
}

//插入数据库
$sql_add_user = "insert into user (name,phone,password,registtime,logintime) values (?,?,?,?,?)";
$state = $db->prepare($sql_add_user);
if ($state->execute(array($name,$phone,$passWord,$registTime,$loginTime))){
    echo 'success';
}else{
    echo '出了一点小问题，稍后再试。';
}






