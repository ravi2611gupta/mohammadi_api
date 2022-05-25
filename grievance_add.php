<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    $name = $data['name'];
    $enroll = $data['enroll'];
    $mob = $data['mob'];
    $email = $data['email'];
    $sub = $data['sub'];
    $msg = $data['msg'];
  
    

    require_once("connection.php");

    $sql = "insert into tbl_grievance
    (stu_name, enroll_no, mobile, email, subject, msg, status, date) values('{$name}', '{$enroll}', '{$mob}', '{$email}', '{$sub}' , '{$msg}', 'N', now())";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Student Record Inserted.', 'status' => true)); 
    }else{
        echo json_encode(array('message' => 'Student Record Not Inserted.', 'status' => false));
    }

