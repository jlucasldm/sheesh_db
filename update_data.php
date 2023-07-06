    <?php
    $IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
    require_once($IPATH . "header.php")
    ?>
    <?php
    $user_data = new User($_SESSION['user'])
    ?>
    <main>
        <form action="inc/ajax/update_data.php" method='POST' class='update-form'>
            <div class="form-block">
                <label for="email">Email: </label>
                <input type="email" name="email" value=<?php echo "$user_data->email" ?> required maxlength="255">
            </div>
            <div class="form-block">
                <label for="tel">Telefone: </label>
                ­<input type="tel" name="tel" value=<?php echo "$user_data->tel" ?> required maxlength="255">
            </div>
            <input type="submit" value="Enviar" class="submit-btn">
        </form>
        <div id="response" class="response"></div>

    </main>
    <script src="../assets/js/ajax.js"></script>
    <?php
    require_once($IPATH . 'footer.php')
    ?>