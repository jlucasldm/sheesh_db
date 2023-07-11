<?php
    // If is not accessing from our page, then don't load the file
    define('__CONFIG__', true);
    require_once('../config.php');

    DB::getConnection();
    $search = $_POST['search'] ?? '';
    $page= intval($_GET['page']) ?? 1;
    $page_count = 6;

    


    $start = ($page-1) * $page_count;
    if($search != ''){
        $results = $con->prepare("SELECT vaga.*, e.nomeFantasia FROM vaga 
            LEFT JOIN empresa e on e.cnpj = vaga.cnpj 
            WHERE text LIKE :text OR title LIKE :title 
            LIMIT 6 OFFSET :start");
        $results->bindParam(':start', $start, PDO::PARAM_INT);
        $results->execute(array(
            ':text' => $search,
            ':title' => $search,
            ':start' => $start
        ));

    }else{$results = $con->prepare("SELECT vaga.*, e.nomeFantasia FROM vaga 
        LEFT JOIN empresa e on e.cnpj = vaga.cnpj LIMIT 6 OFFSET :start");
        $results->bindParam(':start', $start, PDO::PARAM_INT);
        $results->execute();
        // $results = $con->query("SELECT * FROM vaga LIMIT 6 OFFSET '$start'");
    };
    
    $row_count = $con->query('SELECT vaga.*, e.nomeFantasia FROM vaga 
    LEFT JOIN empresa e on e.cnpj = vaga.cnpj ')->rowCount();
    $number_of_pages = ceil($row_count / $page_count);

    $results = $results->fetchAll(PDO::FETCH_OBJ);
    echo json_encode(['results' => $results, 'page' => $page, 'number_of_pages' => $number_of_pages]);
    die();
?>