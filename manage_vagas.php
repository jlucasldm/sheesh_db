<?php
        $IPATH = getcwd() . "/layout/";
        require_once($IPATH . "header.php")
    ?>
    <main>
        <div id="manage_vagas" class='manage-vagas'></div>
        <script src="assets/js/manage_vagas.js"></script>
        <script src="assets/js/delete.js"></script>
        <script src="assets/js/pagination.js"></script>
        <ul class='pagination' id="pagination"> <!--pages or li are comes from javascript --> </ul>
    </main>
    
    <?php
        require_once($IPATH . 'footer.php')
    ?>