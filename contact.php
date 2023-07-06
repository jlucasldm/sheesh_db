
<?php
    $IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
    require_once($IPATH . "header.php")
?>
<main>
    <div class="title">FALE CONOSCO</div>
    <form action="" class='contact-form'>
        <input type="text" name="" placeholder="Nome" required>
        <input type="email" name="" placeholder="Email" required>
        <input type="text" name="" placeholder="Assunto" required>
        <textarea name="" cols="30" rows="10" required></textarea>
    </form>
</main>
<?php
    require_once($IPATH . 'footer.php')
?>
</html>