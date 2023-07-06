    <?php
        $IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
        require_once($IPATH . "header.php")
    ?>
    <main>
        <form action="inc/ajax/update_password.php" method='POST' class='update-form';>
            <div class='form-block'>
                <label for="old_password">Senha: </label>
                <input type="password" name="old_password" minlength="3" required maxlength="255">
            </div>
            <div class='form-block'>
                <label for="old_password">Senha novamente: </label>
                <input type='password' name="old_password_again" minlength="3" required maxlength="255">
                <span id='message'></span>
            </div>
            <div class='form-block'>
                <label for="new_password">Nova senha: </label>
                ­<input type="password" name="new_password" required maxlength="255">
            </div>
            <div id="response" class="response"></div>
                <input type="submit" value="Enviar" class="submit-btn">
           
        </form>
        
    </main>
    <script src="../assets/js/ajax.js"></script>
    <?php
        require_once($IPATH . 'footer.php')
    ?>
    