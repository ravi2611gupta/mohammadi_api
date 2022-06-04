<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');


    // $data = json_decode(file_get_contents("php://input"), true);

    require_once("connection.php");

    if(isset($_FILES['file']) && isset($_POST['session']) && isset($_POST['type']) && isset($_POST['date']) && isset($_POST['t_id'])){

        $t_id = $_POST['t_id'];
        $session = $_POST['session'];
        $date = $_POST['date'];
        $type = $_POST['type'];

        $file = $_FILES['file']['name'];
        
        $file_name = $type.rand(111,999).$file;
        $file_type=$_FILES['file']['type'];
        $file_tmp=$_FILES['file']['tmp_name'];

    
      
        if($file_type=='application/pdf'){
    
            if(move_uploaded_file($file_tmp, 'files/time_table/'.$file_name)){

                $qc="select time_table_file from time_table where t_id='$t_id'";
                // echo $qc;
                $resc=mysqli_query($con,$qc);
                $rowc=mysqli_fetch_array($resc);
                unlink('files/time_table/'.$rowc['time_table_file']);


                $sql = "update time_table set session = '{$session}', date = '{$date}', type='{$type}', time_table_file='{$file_name}' where t_id = '{$t_id}'";

                
                if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
                    echo json_encode(array('message' => 'Document Updated successfully.', 'status' => true)); 
                }else{
                    echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
                }
        
            }else{
                echo json_encode(array('message' => 'Sorry, your file is too large.', 'status' => false));
            }
    
        }else{
            echo json_encode(array('message' => 'Sorry, Please select correct file type.', 'status' => false));
        }
    
    }elseif(isset($_POST['session']) && isset($_POST['date']) && isset($_POST['type']) && isset($_POST['t_id'])){
        
        $t_id = $_POST['t_id'];
        $session = $_POST['session'];
        $date = $_POST['date'];
        $type = $_POST['type'];


        $sql = "update time_table set session='{$session}', date='{$date}', type='{$type}' where t_id = '{$t_id}'";
       

        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Details Updated successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
