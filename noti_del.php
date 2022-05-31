<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

$data = json_decode(file_get_contents("php://input"), true);

$noti_id = $data;

require_once("connection.php");


$get_file = "select file_name from tbl_notice where file_id={$noti_id}";
$res_file = mysqli_query($con, $get_file);
$row_file = mysqli_fetch_assoc($res_file);

if(unlink('files/notice/'.$row_file['file_name'])){

    $sql = "delete from tbl_notice where file_id = {$noti_id}";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Notice Deleted.', 'status' => true));    
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }

}