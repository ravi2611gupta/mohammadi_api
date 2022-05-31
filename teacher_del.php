<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

$data = json_decode(file_get_contents("php://input"), true);

$tech_id = $data;

require_once("connection.php");


$get_file = "select pic from tbl_teacher where tech_id={$tech_id}";
$res_file = mysqli_query($con, $get_file);
$row_file = mysqli_fetch_assoc($res_file);

if(unlink('files/teacher/'.$row_file['pic'])){

    $sql = "delete from tbl_teacher where tech_id = {$tech_id}";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Teacher Data Deleted.', 'status' => true));    
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }

}