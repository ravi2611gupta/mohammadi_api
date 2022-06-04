<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');


    // $data = json_decode(file_get_contents("php://input"), true);

    require_once("connection.php");

    if(isset($_FILES['file']) && isset($_POST['text1']) && isset($_POST['text2']) && isset($_POST['slider_id'])){

        $slider_id = $_POST['slider_id'];
        $text1 = $_POST['text1'];
        $text2 = $_POST['text2'];

        $file = $_FILES['file']['name'];
        
        $file_name = rand(111,999).$file;
        $file_type=$_FILES['file']['type'];
        $file_tmp=$_FILES['file']['tmp_name'];

    
      
        if($file_type=='image/png' or $file_type=='image/jpg' or $file_type=='image/jpeg'){
    
            if(move_uploaded_file($file_tmp, 'files/slider/'.$file_name)){

                $qc="select pic from tbl_slider where slider_id='$slider_id'";
                // echo $qc;
                $resc=mysqli_query($con,$qc);
                $rowc=mysqli_fetch_array($resc);
                unlink('files/slider/'.$rowc['pic']);


                $sql = "update tbl_slider set text1 = '{$text1}', text2 = '{$text2}', pic='{$file_name}' where slider_id = '{$slider_id}'";
    
                if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
                    echo json_encode(array('message' => 'Slider Updated successfully.', 'status' => true)); 
                }else{
                    echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
                }
        
            }else{
                echo json_encode(array('message' => 'Sorry, your file is too large.', 'status' => false));
            }
    
        }else{
            echo json_encode(array('message' => 'Sorry, Please select correct file type.', 'status' => false));
        }
    
    }elseif(isset($_POST['text1']) && isset($_POST['text2']) && isset($_POST['slider_id'])){
        
        $slider_id = $_POST['slider_id'];
        $text1 = $_POST['text1'];
        $text2 = $_POST['text2'];

        $sql = "update tbl_slider set text1 = '{$text1}', text2 = '{$text2}' where slider_id = '{$slider_id}'";

        if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
            echo json_encode(array('message' => 'Slider Updated successfully.', 'status' => true)); 
        }else{
            echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
        }
    }
