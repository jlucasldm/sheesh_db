<?php
// If is not accessing from our page, then don't load the file
define('__CONFIG__', true);
require_once('../config.php');


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // TODO: add variables to missing fields

    $addVaga = $con->prepare('INSERT INTO vagaestagio (idVaga, titulo, requisitos, descricaoAtividades, beneficios, remuneracao, cargaHoraria, localizacao, modalidade, prazo,finalizado , cnpj)
    VALUES (:idVaga, :titulo, :requisitos, :descricaoAtividades, :beneficios, :remuneracao, :cargaHoraria, :localizacao, :modalidade, :prazo,:finalizado , :cnpj)');
    $addVaga->execute(array(
        ':idVaga' => uniqid(),
        ':titulo' => filter::String($_POST['titulo']),
        ':requisitos' => filter::String($_POST['requisitos']),
        ':descricaoAtividades' => filter::String($_POST['descricaoAtividades']),
        ':beneficios' => filter::String($_POST['beneficios']),
        ':remuneracao' => filter::Int($_POST['remuneracao']),
        ':cargaHoraria' => filter::Int($_POST['cargaHoraria']),
        ':localizacao' => filter::String($_POST['localizacao']),
        ':modalidade' => '1',
        ':prazo' => null,
        ':finalizado' => null,
        ':cnpj' => "22222",
    ));
    // $return['error'] = 'Vaga criada com sucesso';
    // echo json_encode($return, JSON_PRETTY_PRINT);
    var_dump($_POST);
    die;
};
