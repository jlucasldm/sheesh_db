<?php
    // If is not accessing from our page, then don't load the file
    define('__CONFIG__', true);
    require_once('../config.php');

    
    if($_SERVER['REQUEST_METHOD']=='POST'){
        $user_data = new User($_SESSION['user']) ;

        $return = [];

        $old_password = $_POST['old_password'];
        $old_password_again = $_POST['old_password_again'];
        $new_password = $_POST['new_password'];

        $same_password = password_verify($old_password, $user_data->password);
        if($old_password!=$old_password_again){
            $return['error'] = 'Senhas estão diferentes';
        }elseif($old_password==$new_password){
            $return['error'] = 'Sua nova senha não pode ser a mesma';
        }elseif(!$same_password){
            $return['error'] = 'Senha incorreta';
        } else {
            $update_password = $con->prepare("UPDATE users SET password=:password WHERE user=:user");
            // LIMIT 1 stops it after it found it
            $update_password->execute(array(
                ':user'=>$user_data->user,
                ':password'=>password_hash($new_password, PASSWORD_DEFAULT)
            ));
            $return['error']='Senha modificada com sucesso';
        }
        echo json_encode($return, JSON_PRETTY_PRINT); die;

    }
?>