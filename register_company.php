<?php
$IPATH = getcwd() . "/layout/";
require_once($IPATH . "header.php")
?>
<main>
<div class="title">Cadastrar empresa</div>
    <form action="inc/ajax/register_company.php" method='POST' class='update-form'>
        </div>
        <div class="form-block">
            <label for="cnpj">Cnpj: </label>
            ­<input type="text" name="cnpj" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="razaoSocial">Razão social: </label>
            ­<input type="text" name="razaoSocial" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="nomeFantasia">Nome Fantasia: </label>
            ­<input type="text" name="nomeFantasia" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="nomeResponsavel">Nome Responável: </label>
            ­<input type="text" name="nomeResponsavel" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="site">Site: </label>
            ­<input type="text" name="site" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="endereco">Endereço: </label>
            ­<input type="text" name="endereco" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="areaAtuacao">Área de Atuação: </label>
            ­<input type="text" name="areaAtuacao" required maxlength="255" value="">
        </div>
        <div id='response' class="response"></div>
        <input type="submit" value="Enviar" class="submit-btn">

    </form>

</main>
<script src="assets/js/ajax.js"></script>
<?php
require_once($IPATH . 'footer.php')
?>