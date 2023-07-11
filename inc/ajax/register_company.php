<?php
// If is not accessing from our page, then don't load the file
define('__CONFIG__', true);
require_once('../config.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $adduser = $con->prepare('INSERT INTO empresa (cnpj, razaoSocial, nomeFantasia, nomeResponsavel, site, endereco, areaAtuacao)
                            VALUES(:cnpj, :razaoSocial, :nomeFantasia, :nomeResponsavel, :site, :endereco, :areaAtuacao)');

    $adduser->execute(array(
        ':cnpj' => filter::String($_POST['cnpj']),
        ':razaoSocial' => filter::String($_POST['razaoSocial']),
        ':nomeFantasia' => filter::String($_POST['nomeFantasia']),
        ':nomeResponsavel' => filter::String($_POST['nomeResponsavel']),
        ':site' => filter::String($_POST['site']),
        ':endereco' => filter::String($_POST['endereco']),
        ':areaAtuacao' => filter::String($_POST['areaAtuacao']),
    ));
    $return['error'] = 'Conta criada com sucesso';
    
};
echo json_encode($return, JSON_PRETTY_PRINT);
die;