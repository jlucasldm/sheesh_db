<?php
// If is not accessing from our page, then don't load the file
define('__CONFIG__', true);
require_once('../config.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $add_vaga = $con->prepare('INSERT INTO vaga (title, requisitos, text, beneficios, remuneracao, carga_horaria, prazo, final, cnpj ) VALUES(:title,:requisitos, :text, :beneficios, :remuneracao, :carga_horaria, :prazo, :final, :cnpj)');
    $add_vaga->execute(array(
        ':title' => Filter::String($_POST['title']),
        ':requisitos' => Filter::String($_POST['requisitos']),
        ':text' => Filter::String($_POST['text']),
        ':beneficios' => Filter::String($_POST['beneficios']),
        ':remuneracao' => Filter::Int($_POST['remuneracao']),
        ':carga_horaria' => Filter::Int($_POST['carga_horaria']),
        ':prazo' => Filter::String($_POST['prazo']),
        ':final' => Filter::Int($_POST['final']),
        ':cnpj' => Filter::String($_POST['cnpj'])
    ));


    $return['error'] = 'Criado com sucesso';
    echo json_encode($return, JSON_PRETTY_PRINT);
    die;
} else {
    die('you do not have access to this page');
};
