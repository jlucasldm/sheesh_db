    <?php
        $IPATH = getcwd() . "/layout/";
        require_once($IPATH . "header.php")
    ?>
    <main>
    
        <div class='container'><div id="previews" class="row">
        </div></div>
        <script src="assets/js/pagination.js"></script>
        <script src="assets/js/preview.js"></script>
        <ul class='pagination' id="pagination"> <!--pages or li are comes from javascript --> </ul>
        
    </main>
    
    <?php
        require_once($IPATH . 'footer.php')
    ?>