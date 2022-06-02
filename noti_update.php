<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');


    // $data = json_decode(file_get_contents("php://input"), true);

    require_once("connection.php");

    if(isset($_FILES['file']) && isset($_POST['title']) && isset($_POST['file_id'])){

        $file_id = $_POST['file_id'];
        $title = $_POST['title'];
        $file = $_FILES['file']['name'];
        
        $file_name = rand(111,999).$file;
        $file_type=$_FILES['file']['type'];
        $file_tmp=$_FILES['file']['tmp_name'];

    
      
        if($file_type=='application/pdf'){
    
            if(move_uploaded_file($file_tmp, 'files/notice/'.$file_name)){

                $qc="select file_name from tbl_notice where file_id='$file_id'";
                // echo $qc;
                $resc=mysqli_query($con,$qc);
                $rowc=mysqli_fetch_array($resc);
                unlink('files/notice/'.$rowc['file_name']);


                $sql = "update tbl_notice set notice = '{$title}', file_name='{$file_name}' where file_id = '{$file_id}'";
    
                if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
                    echo json_encode(array('message' => 'Notice Updated successfully.', 'status' => true)); 
                }else{
                    echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
                }
        
            }else{
                echo json_encode(array('message' => 'Sorry, your file is too large.', 'status' => false));
            }
    
        }else{
            echo json_encode(array('message' => 'Sorry, Please select correct file type.', 'status' => false));
        }
    
    }elseif(isset($_POST['title']) && isset($_POST['file_id'])){
        
        $file_id = $_POST['file_id'];
        $title = $_POST['title'];

        $sql = "update tbl_notice set notice = '{$title}' where file_id = '{$file_id}'";

        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Notice Updated successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
