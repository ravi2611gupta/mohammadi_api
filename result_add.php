<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    if(isset($_POST['link'])){
        $link = $_POST['link'];

        require_once("connection.php");
    
        $sql = "insert into tbl_result(link, date) values('{$link}', now())";
    
        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Result added succefully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    
    }
        
