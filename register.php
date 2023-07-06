<?php
$IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
require_once($IPATH . "header.php")
?>
<main>
    <form action="inc/ajax/registration.php" method='POST' class='update-form'>
        <div class="form-block">
            <label for="user">Nome: </label>
            <input type="text" name="user" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="password">Senha: </label>
            ­<input type="password" name="password" required maxlength="255" value="">
        </div>
        <div class="form-block">
            <label for="password">Nível de autoridade: </label>
            ­<select name="level" required class="select">
                <option disabled selected value="">-- Selecione nível --</option>
                <option value="1">Usuário</option>
                <option value='2'>Manutenção</option>
                <option value="3">Adiministrador</option>
            </select>
        </div>
        <div class="form-block">
            <label for="email">Email: </label>
            <input type="email" name="email" required maxlength="255" value="">
        </div>
        <div id='response' class="response"></div>
        <input type="submit" value="Enviar" class="submit-btn">

    </form>

</main>
<script src="../assets/js/ajax.js"></script>
<?php
require_once($IPATH . 'footer.php')
?>