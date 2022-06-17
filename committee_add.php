<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);
    
    if(isset($data['committee'])){
    
     $b_name = $data['committee'];

    require_once("connection.php");

        $sql = "insert into tbl_commitee(committee_name, created_at) values('{$b_name}', now())";
        
        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Committee added successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
    
  
        
