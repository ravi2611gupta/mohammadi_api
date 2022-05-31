<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

$data = json_decode(file_get_contents("php://input"), true);

$alu_id = $data;

require_once("connection.php");


$get_file = "select pic, cv from tbl_alumni where id={$alu_id}";
$res_file = mysqli_query($con, $get_file);
$row_file = mysqli_fetch_assoc($res_file);

if(unlink('files/alumni_pic/'.$row_file['pic']) and unlink('files/alumni_cv/'.$row_file['cv'])){

    $sql = "delete from tbl_alumni where id = {$alu_id}";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Alumni Data Deleted.', 'status' => true));    
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }

}