<?php
session_start();
set_time_limit(0);
header('Content-Type: text/plain; charset=utf-8');
include '../../sms/Sms.php';
$phone = $_POST['phone'];
$code = rand(10000,99999);
$_SESSION['sms_code'] = $code;
//echo $code;
$response = Sms::sendSms($phone,$code);
print_r($response);