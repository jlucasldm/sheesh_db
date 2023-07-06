<?php
    // If is not accessing from our page, then don't load the file
    define('__CONFIG__', true);
    require_once('../config.php');

    DB::getConnection();


    $obj = json_decode(file_get_contents('php://input'), true);
    $db = Filter::String(strval($obj['db']));
    $page = Filter::Int(strval($obj['page']));

    $page_count = 6;

    // extra layer of security
    if($db=='users'){
        $query= "SELECT * FROM users LIMIT 6 OFFSET :start";
        $query_count = 'SELECT * FROM users';
    }elseif($db=='sheesh_db'){
        $query= "SELECT * FROM vaga LIMIT 6 OFFSET :start";
        $query_count = 'SELECT * FROM vaga';
    }else{
        die('Invalid database');
    };
    $start = ($page-1) * $page_count;
    $results = $con->prepare($query);
    $results->bindParam(':start', $start, PDO::PARAM_INT);
    $results->execute();
    
    $row_count = $con->query($query_count)->rowCount();
    $number_of_pages = ceil($row_count / $page_count);

    $results = $results->fetchAll(PDO::FETCH_OBJ);
    echo json_encode(['results' => $results, 'page' => $page, 'number_of_pages' => $number_of_pages]);
    die();
?>