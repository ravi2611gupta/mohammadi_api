<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: DELETE');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

$data = json_decode(file_get_contents("php://input"), true);

$aicte_id = $data['aicte_id'];

require_once("connection.php");


$get_file = "select file from tbl_aicte where doc_id={$aicte_id}";
$res_file = mysqli_query($con, $get_file);
$row_file = mysqli_fetch_assoc($res_file);

if(unlink('files/aicte/'.$row_file['file'])){

    $sql = "delete from tbl_aicte where doc_id = {$aicte_id}";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Document Deleted.', 'status' => true));    
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }

}