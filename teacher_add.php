<?php


    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');


    $data = json_decode(file_get_contents("php://input"), true); // collect input parameters and convert into readable format
	
    echo json_encode($data);
    die();

    $name = $data['name'];
    $dob = $data['dob'];
    $gen = $data['gen'];
    $fname = $data['fname'];
    $mob = $data['mob'];
    $email = $data['email'];
    $branch = $data['branch'];
    $deg = $data['deg'];
    $quali = $data['quali'];
    $address = $data['address'];

    $pic = $_FILES['pic']['name'];
    
    $pic_name = $name.rand(111,999).$pic;
    $pic_type=$_FILES['pic']['type'];
    $pic_tmp=$_FILES['pic']['tmp_name'];

    

    require_once("connection.php");

     $sql = "insert into tbl_teacher(name, dob, fname, gender, mobile, email, dept_id, designation, qualification, address, pic, dor) values('{$name}', '{$dob}', '{$fname}','{$gen}', '{$mob}', '{$email}' , '{$branch}', '{$deg}', '{$quali}', '{$address}', '{$pic_name}', now())";
    

    if($pic_type=='image/png' or $pic_type=='image/jpg' or $pic_type=='image/jpeg'){

        if(move_uploaded_file($pic_tmp, 'files/teacher/'.$pic_name)){

            if(mysqli_query($con, $sql) or die("SQL Query Failed.")){

                echo json_encode(array('message' => 'Teacher added successfully.', 'status' => true)); 
            }else{
                echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
            }
    
        }else{
            echo json_encode(array('message' => 'Sorry, your file is too large.', 'status' => false));
        }

    }else{
        echo json_encode(array('message' => 'Sorry, Please select correct file type.', 'status' => false));
    }

    

   

