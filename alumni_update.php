<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

$data = json_decode(file_get_contents("php://input"), true);

$alu_id = $data;

require_once("connection.php");

    $chk = "select status from tbl_alumni where id={$alu_id}";
    $res_chk = mysqli_query($con, $chk);
    $row_chk = mysqli_fetch_assoc($res_chk);

    $status = $row_chk['status'];

    if($status=='N'){
        $sql = "update tbl_alumni set status='Y' where id = {$alu_id}";

        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Alumni Updated.', 'status' => true));    
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }else{
        $sql = "update tbl_alumni set status='N' where id = {$alu_id}";
        
        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Alumni Updated.', 'status' => true));    
    }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }

