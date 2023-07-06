<?php
// If is not accessing from our page, then don't load the file
define('__CONFIG__', true);
require_once('../config.php');


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $user_data = new User($_POST['user']);
    $return = [];
    $user = Filter::String($_POST['user']);
    $password = $_POST['password'];

    if (User::user_exist($user)) {
        $user_data = new User($_POST['user']);
        $hash = $user_data->password;
        if (password_verify($password, $hash)) {

            $_SESSION['user'] = $user_data->user;
            $_SESSION['level'] = $user_data->level;
            $return['redirect'] = 'index.php';
        } else {
            $return['error'] = 'Senha incorreta';
        }
    } else {
        $return['error'] = "Você não possui uma conta.";
    };
    echo json_encode($return, JSON_PRETTY_PRINT);
    die;
};
