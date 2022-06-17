<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);
    

    if(isset($_POST['name']) && isset($_POST['designation']) && isset($_POST['cc_id'])){
    
     $name = $_POST['name'];
     $designation = $_POST['designation'];
     $committee_id = $_POST['cc_id'];

    require_once("connection.php");

        $sql = "insert into tbl_commitee_member(mem_name, mem_deg, committee_id, mem_addedon) values('{$name}', '{$designation}', '{$committee_id}', now())";
        
        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Committee Member added successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
    
  
        
