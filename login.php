    <?php
        $IPATH = getcwd() . "/layout/";
        require_once($IPATH . "header.php")
    ?>
    <main>
        <form method="post" action='inc/ajax/login.php' class='login-form'>
            <div class="title"></div>
            <div class='form-block'>
                <label for="user">Usuário</label>
                <input type="text" name="user" placeholder="Insira seu nome" required maxlength="255" value="adm">
            </div>
            <div class='form-block'>
                <label for="password">Senha</label>
                <input type="password" name="password" placeholder="Insira sua senha" required maxlength="255" value="adm">
            </div>
            <input type="submit" value="Login" class='submit-btn'>
            <div id="response" class="response"></div>
        </form>
    </main>
    <script src="assets/js/ajax.js"></script>
    <?php
        require_once($IPATH . 'footer.php')
    ?>