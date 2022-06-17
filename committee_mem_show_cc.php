<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');

$data = json_decode(file_get_contents("php://input"), true);

$cc_id = $data;

require_once("connection.php");

    $sql = "select * from tbl_commitee_member as tcm join tbl_commitee as tc on tcm.committee_id=tc.cc_id where tcm.committee_id={$cc_id} order by tcm.mem_id desc";

    $res = mysqli_query($con, $sql) or die("SQL Query Failed.");

    if(mysqli_num_rows($res) > 0){
        $output = mysqli_fetch_all($res, MYSQLI_ASSOC);
        echo json_encode($output);
    }
