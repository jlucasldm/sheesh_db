<?php
$IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
require_once($IPATH . "header.php")
?>
<section class="hero is-fullheight">
    <div class="hero-body">
        <div class="container has-text-centered">
            <h1 class="title is-1">Crie uma vaga</h1>
            <p class="is-size-4">Crie uma oportunidade para encontrar seus próximos talentos.</p>
            <form class="columns is-8 is-variable" action="inc/ajax/criar_vaga.php" method='POST'>
                <!-- COLUNA ESQUERDA -->
                <div class="column is-two-thirds is-medium-rounded has-text-left">
                    <p class="mb-4"></p>
                    <div class="field">
                        <label class="label">Título da vaga:</label>
                        <div class="control">
                            <input class="input is-medium" name="titulo" type="text" value="asd">
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Requisitos:</label>
                        <div class="control">
                            <textarea class="textarea is-medium" name="requisitos" value="asd"></textarea>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Descrição das atividades:</label>
                        <div class="control">
                            <textarea class="textarea is-medium" name="descricaoAtividades" value="asd"></textarea>
                        </div>
                    </div>
                    <label class="label">Benefícios: (opcional)</label>
                    <div class="control">
                        <textarea class="textarea is-medium" name="beneficios" value="asd"></textarea>
                    </div>
                </div>
                <!-- COLUNA DIREITA -->
                <div class="column is-one-third has-text-left mt-4">
                    <label class="label">Remuneração: (opcional)</label>
                    <div class="control">
                        <input class="input is-medium mb-5" name="remuneracao" value="asd" type="text">
                    </div>
                    <label class="label">Carga horária:</label>
                    <div class="control">
                        <input class="input is-medium mb-5" name="cargaHoraria" value="asd" type="text">
                    </div>
                    <label class="label">Local de trabalho:</label>
                    <div class="control">
                        <input class="input is-medium mb-3" name="localizacao" type="text">
                    </div>
                    <label class="label">Modalidade:</label>
                    <div class="control">
                        <label class="radio">
                            <input type="radio" name="modalidade">
                            Presencial
                        </label>
                        <label class="radio">
                            <input type="radio" name="modalidade">
                            Remoto
                        </label>
                        <label class="radio">
                            <input type="radio" name="modalidade">
                            Misto
                        </label>
                    </div>
                    <label class="label">Prazo:</label>
                    <div class="control">
                        <input type="date" name="prazo">
                    </div>
                    <button type="submit" class="button is-link is-fullwidth has-text-weight-medium is-medium">Criar</button>
                </div>
            </form>
            <div class="columns is-8 is-variable is-centered">
                <div class="column is-half">
                    <div class="control">
                        <button type="submit" class="button is-link is-fullwidth has-text-weight-medium is-medium">Criar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="../assets/js/ajax.js"></script>
</body>

</html>