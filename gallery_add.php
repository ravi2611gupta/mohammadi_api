<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);
    
    // echo json_encode(array('testing' => 'testing.', 'status' => true));
    // die();

    if(isset($_FILES['file'])){

        $text1 = $_POST['texta'];
        $text2 = $_POST['textb'];
        $type = $_POST['type'];
        $file = $_FILES['file']['name'];
    
        $file_name = $type.rand(111,999).$file;
        $file_type=$_FILES['file']['type'];
        $file_tmp=$_FILES['file']['tmp_name'];
    
        
        require_once("connection.php");
    
        $sql = "insert into tbl_gallery(text1, text2, type, pic, date) values('{$text1}','{$text2}','{$type}', '{$file_name}', now())";
     
      
        if($file_type=='image/png' or $file_type=='image/jpg' or $file_type=='image/jpeg'){
    
            if(move_uploaded_file($file_tmp, 'files/gallery/'.$file_name)){
    
                if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
    
                    echo json_encode(array('message' => 'Gallery image uploaded successfully.', 'status' => true)); 
                }else{
                    echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
                }
        
            }else{
                echo json_encode(array('message' => 'Sorry, your file is too large.', 'status' => false));
            }
    
        }else{
            echo json_encode(array('message' => 'Sorry, Please select correct file type.', 'status' => false));
        }
    
    }
