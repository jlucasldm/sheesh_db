<?php
$IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
require_once($IPATH . "header.php")
?>
<main>
    <div class="title">Criar vaga</div>
    <div class="container-sm">
  <div class="row col-6 mx-auto">
      <form action="inc/ajax/upload_vaga.php" method="post" class="update-form" enctype="multipart/form-data">
        <div class="form-block">
          <label for="title" class="form-label" >Título</label>
          <input type="text" name="title" id="title"  required maxlength="128">
        </div>
        <div class="form-block">
          <label for="requisitos" class="form-label" >Requisitos</label>
          <input type="text" name="requisitos" id="requisitos"  required>
        </div>
        <div class="form-block">
          <label for="beneficios" class="form-label" >Benefícios</label>
          <input type="text" name="beneficios" id="beneficios"  required>
        </div>
        <div class="form-block">
          <label for="remuneracao" class="form-label" >Remuneração</label>
          <input type="number" name="remuneracao" id="remuneracao"  required>
        </div>
        <div class="form-block">
          <label for="carga_horaria" class="form-label" >Carga horária</label>
          <input type="number" name="carga_horaria" id="carga_horaria"  required>
        </div>
        <div class="form-block">
          <label for="prazo" class="form-label" >Prazo</label>
          <input type="date" name="prazo" id="prazo"  required>
        </div>
        <div class="form-block">
          <label for="final" class="form-label" >Final</label>
          <input type="number" name="final" id="final"  required>
        </div>
        <div class="form-block">
          <label for="cnpj" class="form-label" >CNPJ</label>
          <input type="text" name="cnpj" id="cnpj"  required>
        </div>
        <div class="form-block">
          <label for="text" class="form-label" >Conteúdo</label>
          <textarea name="text" id="text" class="form-control" style="border: 1px solid #FE5F00" rows="5" required></textarea>
        </div>
        <input type="submit" value="Publicar" class="submit-btn">
        <div id="response" class="response"></div>
      </form>
    </div>
  </div>
</div>
</main>
<script src="../assets/js/ajax.js"></script>
<?php
require_once($IPATH . 'footer.php')
?>

</html>