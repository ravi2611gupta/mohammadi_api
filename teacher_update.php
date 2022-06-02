<?php


header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method');


include("connection.php");


if(isset($_FILES['file']))
{
    $data = json_decode(file_get_contents("php://input"), true);
   
    $id=$_POST['t_id'];

    $name=$_POST['name'];
    //echo $name;
    $fname=$_POST['fname'];
    $dob=$_POST['dob'];
    $gender=$_POST['gender'];
    $mobile=$_POST['mobile'];
    $email=$_POST['email'];
    $dept=$_POST['dept'];
    $desig=$_POST['designation'];
    $quali=$_POST['quali'];
    $address=$_POST['address'];
    
    echo json_encode($_FILES['file']);
    die();

            if($_FILES['file']['type']=="image/jpg" || $_FILES['file']['type']=="image/png" || $_FILES['file']['type']=="image/jpeg" )
            {
                $filename=$name.rand(111,999).$_FILES['file']['name'];
                $filetmp=$_FILES['file']['tmp_name'];

                    if(move_uploaded_file($filetmp,'files/teacher/'.$filename))
                    {
                        $qc="select pic from tbl_teacher where tech_id='$id'";
                        // echo $qc;
                        $resc=mysqli_query($con,$qc);
                        $rowc=mysqli_fetch_array($resc);
                        unlink('files/teacher/'.$rowc['pic']);


                           $q="update tbl_teacher set name=' $name', dob='$dob', fname='$fname', gender='$gender', mobile='$mobile', email='$email', dept_id='$dept', designation='$desig', qualification='$quali', address='$address', pic='$filename' where tech_id='$id'";
                            $res=mysqli_query($con,$q);
                            if($res!=null)
                            {
                                echo json_encode(array('message' => 'Data updated successfully.', 'status' => true));
                            }
                            else
                            {
                                echo json_encode(array('message' => 'Data not updated !!!', 'status' => false));
                            }

                    }
                    else
                    {
                        echo json_encode(array('message' => 'Photo upload fail !!! Please select correct file', 'status' => false));
                    }

            }
            else
            {
                echo json_encode(array('message' => 'Photo upload fail !!! Please select correct file', 'status' => false));
            }

       

    }else{

        
        $data = json_decode(file_get_contents("php://input"), true);

        // echo json_encode($data);
        // die();

        $id=$data['t_id'];

        $name=$data['name'];
        //echo $name;
        $fname=$data['fname'];
        $dob=$data['dob'];
        $gender=$data['gender'];
        $mobile=$data['mobile'];
        $email=$data['email'];
        $dept=$data['dept'];
        $desig=$data['designation'];
        $quali=$data['quali'];
        $address=$data['address'];


        $q="update tbl_teacher set name=' $name', dob='$dob', fname='$fname', gender='$gender', mobile='$mobile', email='$email', dept_id='$dept', designation='$desig', qualification='$quali', address='$address' where tech_id='$id'";
        
        $res=mysqli_query($con,$q);
        if($res!=null)
        {
            echo json_encode(array('message' => 'Data updated successfully.', 'status' => true));
        }

    }

