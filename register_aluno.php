<?php
$IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
require_once($IPATH . "header.php")
?>
<main>
<div class="title">Cadastrar aluno</div>
    <form action="inc/ajax/register_aluno.php" method='POST' class='update-form'>
        <div class="form-block">
            <label for="nome">Nome: </label>
            ­<input type="text" name="nome" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="cpf">CPF: </label>
            ­<input type="text" name="cpf" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="tel">Telefone: </label>
            ­<input type="text" name="tel" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="credencial">Credencial: </label>
            ­<input type="text" name="credencial" required maxlength="255" value="">
        </div>
        <div id='response' class="response"></div>
        <input type="submit" value="Enviar" class="submit-btn">

    </form>

</main>
<script src="../assets/js/ajax.js"></script>
<?php
require_once($IPATH . 'footer.php')
?>