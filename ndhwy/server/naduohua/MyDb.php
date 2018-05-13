<?php
include 'config.php';
class MyDb{
    public static function getDb(){
        try{
            //3种PDO的连接数据库方法
            //1. $pdo=new PDO("mysql:host=localhost;dbname=myapp","root","");
            //2. $pdo=new PDO("uri:mysqlPdo.ini","root","");
            //3. $pdo=new PDO("mysqlpdo","root","");
            $pdo=new PDO(CONNECT_HOST,USER_NAME,PASS_WORD);
            
        }catch (PDOException $e){
            die("fail to connect db".$e->getMessage());
        }
        return $pdo;
    }
    
    public static function objectExist($pdo,$sql,$array){
        
    }
}