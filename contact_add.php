<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

    $data = json_decode(file_get_contents("php://input"), true);

    if(isset($data['fname']) and isset($data['lname']) and isset($data['email']) and isset($data['mobile']) and isset($data['message'])){

    $fname = $data['fname'];
    $lname = $data['lname'];
    $email = $data['email'];
    $mobile = $data['mobile'];
    $message = $data['message'];
    

    require_once("connection.php");

    if(isset($data['fname']) && isset($data['lname']) && isset($data['email']) && isset($data['mobile']) && isset($data['message'])){
        
    $sql = "insert into tbl_contact(fname, lname, email, mobile, message, date) values('{$fname}', '{$lname}', '{$email}', '{$mobile}', '{$message}', now())";

    if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
        echo json_encode(array('message' => 'Message sent successfully.', 'status' => true)); 
    }else{
        echo json_encode(array('message' => 'Sorry, something went wrong.', 'status' => false));
    }

    }
        
    // use this in "postman" or in "thunder client" for inserting the data.

    // step 1 :- select POST methon.
    // step 2 :- go to the header section and select "Content-type" value => "application/json"
    // step 3 :- select body section and than select "raw"
    // step 4 :- write the json data something like bellow. 

    // {
    // 	"fname" : "Ravi",
    // 	"lname" : "Gupta",
    // 	"email" : "ravi@gmail.com",
    // 	"mobile" : "9898989879",
    // 	"message" : "Message from ravi",
    // 	"date" : "2022-04-14 15:36:20"
    // }

    }
