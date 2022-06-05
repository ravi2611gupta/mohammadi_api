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
    $gname = $data['gname'];
    $gmob = $data['gmob'];
    $branch = $data['branch'];
    $year = $data['year'];
    $gen = $data['gen'];
    $add = $data['add'];
    $msg = $data['msg'];
    
    

    require_once("connection.php");

    if(isset($data['name']) && isset($data['enroll']) && isset($data['mob']) && isset($data['email']) && isset($data['gname']) && isset($data['gmob']) && isset($data['branch']) && isset($data['year']) && isset($data['gen']) && isset($data['add']) && isset($data['msg'])){

        $sql = "insert into tbl_rag(stu_name, enroll_no, gen, parent_name, stu_email, stu_mob, parent_mob, course, year, address, complaint, status, date) values('{$name}', '{$enroll}', '{$gen}', '{$gname}', '{$email}' , '{$mob}', '{$gmob}', '{$branch}', '{$year}', '{$add}', '{$msg}', 'N', now())";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Student Record Inserted.', 'status' => true)); 
    }else{
        echo json_encode(array('message' => 'Student Record Not Inserted.', 'status' => false));
    }

}
