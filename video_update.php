<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    $v_id = $data['v_id'];
    $title = $data['title'];
    $branch = $data['branch'];
    $year = $data['year'];
    $sub = $data['sub'];
    $url = $data['url'];

    require_once("connection.php");

    $sql = "update tbl_video set title='{$title}', branch='{$branch}', year='{$year}', subject='{$sub}', url='{$url}' where v_id='{$v_id}'";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Video updated successfully.', 'status' => true)); 
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }
