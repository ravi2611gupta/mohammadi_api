<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    $title = $_POST['title'];
    $branch = $_POST['branch'];
    $year = $_POST['year'];
    $sub = $_POST['sub'];
    $url = $_POST['url'];


    require_once("connection.php");

    $sql = "insert into tbl_video(title, branch, year, subject, url, date) values('{$title}','{$branch}','{$year}','{$sub}','{$url}', now())";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Video added succefully.', 'status' => true)); 
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }

        
