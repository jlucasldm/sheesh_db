<?php
define('__CONFIG__', true);
require_once('inc/config.php');
?>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vagas UFBA</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/css/main.css?v=1.3" as="style">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;700;800&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
    <header class='l-header'>
        <div class="logo">
            Vagas UFBA
        </div>
        <div class='nav'>
            <a class='nav__item' class='nav__item' href="index.php">Home</a>

            <!-- <a class='nav__item' href='../login.php'>Login</a> -->

            <div class='dropdown-btn nav__item is-desktop' id="dropdown-btn-adm">
                ADM
                <div class='dropdown is-hidden' id="dropdown-adm"> <!-- this one is for desktop -->
                    <a class=' dropdown__item' href='register_aluno.php'>Cadastrar aluno</a>
                    <a class=' dropdown__item' href='register_company.php'>Cadastrar empresa</a>
                    <a class=' dropdown__item' href='upload_vaga.php'>Publicar vaga</a>
                    <a class=' dropdown__item' href='manage_vagas.php'>Manutenção dos vaga</a>
                </div>
            </div>

            <!--those ones are for mobile -->
            <a class='nav__item is-mobile' href='register.php'>Registrar novo usuário</a>
            <a class='nav__item is-mobile' href='manage_users.php'>Todos usuários</a>

            <a class='nav__item is-mobile' href='manage_vagas.php'>Manutenção dos vagas</a>
            <a class='nav__item is-mobile' href='upload_vaga.php'>Publicar vaga</a>
            <script>
                perfil = document.getElementById('dropdown-btn-adm')
                perfil.addEventListener('click', () => {
                    document.getElementById('dropdown-adm').classList.toggle('is-hidden')
                })
            </script>

            <?php if (isset($_SESSION['user'])) { ?>
                <a class='nav__item' href="inc/logout.php?token='.md5(session_id()).'">Sair</a>
                <a class="nav__item username"><?php echo $_SESSION['user'] ?></a>
            <?php }; ?>
        </div>
        <i class="burger fas fa-bars"></i>
    </header>
    <script>
        burger = document.querySelector('.burger')
        burger.addEventListener('click', () => {
            document.querySelector('.nav').classList.toggle('is-onscreen')
        })
    </script>