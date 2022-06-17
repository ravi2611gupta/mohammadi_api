<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');

    require_once("connection.php");

    $query = "select * from tbl_commitee_member as tcm join tbl_commitee as tc on tcm.committee_id=tc.cc_id order by tcm.mem_id desc";
    $res = mysqli_query($con, $query) or die("SQL Query Failed.");

    if(mysqli_num_rows($res) > 0){
        $output = mysqli_fetch_all($res, MYSQLI_ASSOC);
        echo json_encode($output);
    }
    // else{
    //     echo json_encode(array('message' => 'No Record Found.', 'status' => false));
    // }