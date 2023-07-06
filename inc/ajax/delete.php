<?php
    // If is not accessing from our page, then don't load the file
    define('__CONFIG__', true);
    require_once('../config.php');

    $obj = json_decode(file_get_contents('php://input'), true);
    $id = Filter::String(strval($obj['id']));
    $db = Filter::String(strval($obj['db']));

    DB::getConnection();
    if($_SERVER['REQUEST_METHOD']=='POST'){
        if($id==1 && $db=='users'){
            die('You can not delete the administrator!');
        };

        // extra layer of security 
        if($db=='users'){
            $query= "DELETE FROM users WHERE id LIKE :id";
        }elseif($db=='vaga'){
            $query= "DELETE FROM vaga WHERE id LIKE :id";
        }else{
            die('Invalid database');
        };

        $sql = $con->prepare($query);
        $sql->bindParam(":id", $id, PDO::PARAM_INT);
        $sql->execute();
    }
?>