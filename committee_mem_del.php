<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

$data = json_decode(file_get_contents("php://input"), true);

$mem_id = $data;

require_once("connection.php");


    $sql = "delete from tbl_commitee_member where mem_id = {$mem_id}";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Committee Member Deleted.', 'status' => true));    
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }
