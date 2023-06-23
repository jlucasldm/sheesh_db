<?php
// If is not accessing from our page, then don't load the file
define('__CONFIG__', true);
require_once('../config.php');


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $user = Filter::String($_POST['user']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $adduser = $con->prepare('INSERT INTO users (user, password, cnpj, email, nickname)
                            VALUES(:user,:password, :cnpj, :email,:nickname)');
    $adduser->execute(array(
        ':user' => $user,
        ':password' => $password,
        ':cnpj' => $_POST['cnpj'],
        ':email' => filter::Email($_POST['email']),
        ':nickname' => filter::String($_POST['nickname'])
    ));
    $return['error'] = 'Conta criada com sucesso';
    echo json_encode($return, JSON_PRETTY_PRINT);
    die;
};
