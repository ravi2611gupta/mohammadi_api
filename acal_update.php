<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');


    // $data = json_decode(file_get_contents("php://input"), true);

    require_once("connection.php");

    if(isset($_FILES['file']) && isset($_POST['session']) && isset($_POST['acal_id'])){

        $acal_id = $_POST['acal_id'];
        $session = $_POST['session'];
        $file = $_FILES['file']['name'];
        
        $file_name = rand(111,999).$file;
        $file_type=$_FILES['file']['type'];
        $file_tmp=$_FILES['file']['tmp_name'];

    
      
        if($file_type=='application/pdf'){
    
            if(move_uploaded_file($file_tmp, 'files/acal/'.$file_name)){

                $qc="select acal_file from tbl_acal where acal_id='$acal_id'";
                // echo $qc;
                $resc=mysqli_query($con,$qc);
                $rowc=mysqli_fetch_array($resc);
                unlink('files/acal/'.$rowc['acal_file']);


                $sql = "update tbl_acal set session = '{$session}', acal_file='{$file_name}' where acal_id = '{$acal_id}'";
    
                if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
                    echo json_encode(array('message' => 'Academic Calendar Updated successfully.', 'status' => true)); 
                }else{
                    echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
                }
        
            }else{
                echo json_encode(array('message' => 'Sorry, your file is too large.', 'status' => false));
            }
    
        }else{
            echo json_encode(array('message' => 'Sorry, Please select correct file type.', 'status' => false));
        }
    
    }elseif(isset($_POST['session']) && isset($_POST['acal_id'])){
        
        $acal_id = $_POST['acal_id'];
        $session = $_POST['session'];

        $sql = "update tbl_acal set session = '{$session}' where acal_id = '{$acal_id}'";

        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Academic Calendar Updated successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
