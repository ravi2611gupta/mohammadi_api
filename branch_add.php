<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    $b_name = $data['bname'];


    require_once("connection.php");

    $sql = "insert into tbl_department(dept_name, date) values('{$b_name}', now())";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Branch added succefully.', 'status' => true)); 
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }

        
