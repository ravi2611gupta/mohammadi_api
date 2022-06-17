<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    require_once("connection.php");
    
    if(isset($data['mem_id']) && isset($data['name']) && isset($data['designation']) && isset($data['cc_id'])){
        
        $mem_id = $data['mem_id'];
        $name = $data['name'];
        $designation = $data['designation'];
        $com_id = $data['cc_id'];

        $sql = "update tbl_commitee_member set mem_name = '{$name}', mem_deg='{$designation}', committee_id='{$com_id}' where mem_id = '{$mem_id}'";

        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Committee Member Updated successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
