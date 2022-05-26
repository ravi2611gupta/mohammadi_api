<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    $session = $data['session'];
    $file = $_FILES['file']['name'];
    $file_name = rand(111,999).$file;

    $file_type=$_FILES['file']['type'];

    $file_tmp=$_FILES['file']['tmp_name'];


  

    require_once("connection.php");

    $sql = "insert into tbl_acal(session, acal_file, added_on) values('{$session}', '{$file_name}', now())";

  
    if($file_type=='application/pdf'){

        if(move_uploaded_file($file_tmp, 'files/acal/'.$file_name)){

            if(mysqli_query($con, $sql) or die("SQL Query Failed.")){

                echo json_encode(array('message' => 'Academic Calendar uploaded successfully.', 'status' => true)); 
            }else{
                echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
            }
    
        }else{
            echo json_encode(array('message' => 'Sorry, your file is too large.', 'status' => false));
        }

    }else{
        echo json_encode(array('message' => 'Sorry, Please select correct file type.', 'status' => false));
    }
