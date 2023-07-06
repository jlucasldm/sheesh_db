<?php
    // If is not accessing from our page, then don't load the file
    define('__CONFIG__', true);
    require_once('../config.php');

    
    if($_SERVER['REQUEST_METHOD']=='POST'){
        $img_folder = '../../assets/images/' . basename($_FILES['image']['name']);

        $add_news = $con->prepare('INSERT INTO news (title, text, img, added_by) VALUES(:title, :text, :img, :added_by)');
        $add_news->execute(array(
            ':title' => Filter::String($_POST['title']),
            ':text' => Filter::String($_POST['text']),
            ':img' => $_FILES['image']['name'],
            ':added_by' => $_SESSION['user']
        ));

        move_uploaded_file($_FILES['image']['tmp_name'], $img_folder);

        $return['error'] = 'Criado com sucesso';
        echo json_encode($return, JSON_PRETTY_PRINT); die;
    }else{
        die('you do not have access to this page');
    };

?>