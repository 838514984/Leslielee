<?php 
header('Access-Control-Allow-Origin:*'); 
header("Content-type: text/html; charset=utf-8");
include '../../MyDb.php';
$phone = $_POST['phone'];
$passWord  = $_POST['passWord'];
//echo "phone :".$phone." passWord: ".$passWord;
//echo "success"
$pdo = MyDb::getDb();
$sql = 'select * from user where phone = ?';
$stament = $pdo->prepare($sql);
$stament->execute(array($phone));
$result = $stament->fetch();
if ($stament->rowCount()==0){
    echo '用戶未注册！';
}else{
    if (!($phone == $result['phone']&& $passWord == $result['password'])){
        echo '账号或密码错误';
    }else{
        echo 'success';
    }
}

?>