<?php


    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Method: POST');
    header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Method, Authorization');
 

    if(isset($_FILES['pic']) and isset($_FILES['cv'])){
        
        // $data = json_decode(file_get_contents("php://input"), true); // collect input parameters and convert into readable format
    
        // $name = $data['name'];
        // $enroll = $data['enroll'];
        // $mob = $data['mob'];
        // $email = $data['email'];
        // $fname = $data['fname'];
        // $branch = $data['branch'];
        // $marks = $data['marks'];
        // $py = $data['py'];
        // $wp = $data['wp'];
        // $dg = $data['dg'];
       
        $name = $_POST['name'];
        $enroll = $_POST['enroll'];
        $mob = $_POST['mob'];
        $email = $_POST['email'];
        $fname = $_POST['fname'];
        $branch = $_POST['branch'];
        $marks = $_POST['marks'];
        $py = $_POST['py'];
        $wp = $_POST['wp'];
        $dg = $_POST['dg'];
        
    
        $pic = $_FILES['pic'];
        $cv = $_FILES['cv'];
        
    
        $pic_on = $_FILES['pic']['name'];
        $cv_on = $_FILES['cv']['name'];
        
        $pic_name = $name.rand(111,999).$pic_on;
        $cv_name = $name.rand(111,999).$cv_on;
    
        $pic_type=$_FILES['pic']['type'];
        $cv_type=$_FILES['cv']['type'];
    
        $pic_tmp=$_FILES['pic']['tmp_name'];
        $cv_tmp=$_FILES['cv']['tmp_name'];
    
    
        //  $au = $data['au'];
        //  $fb = $data['fb'];
        
         $au = $_POST['au'];
         $fb = $_POST['fb'];
        
        
    
        require_once("connection.php");
    
    if(isset($_FILES['pic']) && isset($_FILES['cv']) && isset($_POST['name']) && isset($_POST['enroll']) && isset($_POST['mob']) && isset($_POST['email']) && isset($_POST['fname']) && isset($_POST['branch']) && isset($_POST['marks']) && isset($_POST['py']) && isset($_POST['wp']) && isset($_POST['dg']) && isset($_POST['au']) && isset($_POST['fb'])){
            
     $sql = "insert into tbl_alumni(name, enrollment, mob, email, fname, branch, marks, year, company, designation, feedback, about, pic, cv, date, status) values('{$name}', '{$enroll}', '{$mob}', '{$email}', '{$fname}' , '{$branch}', '{$marks}', '{$py}', '{$wp}', '{$dg}', '{$fb}', '{$au}', '{$pic_name}', '{$cv_name}', now(), 'N')";
    

     if(($pic_type=='image/png' or $pic_type=='image/jpg' or $pic_type=='image/jpeg') and ($cv_type=='application/pdf')){
 
         if(move_uploaded_file($pic_tmp, 'files/alumni_pic/'.$pic_name) and move_uploaded_file($cv_tmp, 'files/alumni_cv/'.$cv_name)){
 
             if(mysqli_query($con, $sql) or die("SQL Query Failed.")){
 
                 echo json_encode(array('message' => 'Request sent successfully.', 'status' => true)); 
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

   

    }
