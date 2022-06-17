<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    require_once("connection.php");
    
    if(isset($data['committee']) && isset($data['cc_id'])){
        
        $cc_id = $data['cc_id'];
        $committee = $data['committee'];

        $sql = "update tbl_commitee set committee_name = '{$committee}' where cc_id = '{$cc_id}'";

        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Committee Updated successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
