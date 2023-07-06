<?php
    // If is not accessing from our page, then don't load the file
    define('__CONFIG__', true);
    require_once('../config.php');

    
    if($_SERVER['REQUEST_METHOD']=='POST'){

        $return = [];

        $email = $_POST['email'];
        $phone = $_POST['phone'];
        
        $user_data = new User($_SESSION['user']);
        $update = $con->prepare("UPDATE users SET email=:email , phone=:phone WHERE user=:user");
        // LIMIT 1 stops it after it found it
        $update->execute(array(
            ':user'=>$user_data->user,
            ':email'=>$email,
            ':phone'=>$phone
        ));
        $return['error']='Modificado com sucesso';
        echo json_encode($return, JSON_PRETTY_PRINT); die;
    };
?>