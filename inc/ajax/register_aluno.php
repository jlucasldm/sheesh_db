<?php
// If is not accessing from our page, then don't load the file
define('__CONFIG__', true);
require_once('../config.php');


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $adduser = $con->prepare('INSERT INTO aluno (cpf, nome, rg, credencial)
                            VALUES(:cpf,  :nome, :rg, :credencial)');
    $adduser->execute(array(
        ':cpf' => filter::String($_POST['cpf']),
        ':nome' => filter::String($_POST['nome']),
        ':rg' => filter::String($_POST['rg']),
        ':credencial' => filter::String($_POST['credencial']),

    ));
    $return['error'] = 'Conta criada com sucesso';
}
echo json_encode($return, JSON_PRETTY_PRINT);
die;
