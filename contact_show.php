<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');

    require_once("connection.php");

    $query = "select * from tbl_contact order by con_id desc";
    $res = mysqli_query($con, $query);

    if(mysqli_num_rows($res)>0){
        $output = mysqli_fetch_all($res, MYSQLI_ASSOC);
        echo json_encode($output);
    }
    
    // else{
    //     echo json_encode(array('message' => 'No Record Found.', 'status' => false));
    // }