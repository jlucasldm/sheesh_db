<?php
$IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
require_once($IPATH . "header.php")
?>
<section class="section">
    <div class="processes-list">
        <div class="top-container">
            <div class="title-container">
                <div class="title">
                    <h3>Processos Seletivos</h3>
                </div>
                <div class="subtitle">
                    Aqui ficam todos os seus processos seletivos, gerencie-os como
                    desejar.
                </div>
            </div>
            <a>
                <button type="button" class="header-button">
                    Criar Processo Seletivo
                </button>
            </a>
        </div>

        <div style="overflow: auto;">
            <table class="sp-table">
                <thead>
                    <tr>
                        <th>TÍTULO</th>
                        <th>PRAZO</th>
                        <th>CONTATO</th>
                        <th>AÇÕES</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="sp-table-row">
                        <td class="selective-process-card">Processo Seletivo 1</td>
                        <td class="selective-process-card">10/10/2021</td>
                        <td class="selective-process-card">contato@contato.com</td>
                        <td class="selective-process-card" style="display: flex;">
                            <a>
                                <div class="edit-icon">
                                    <i class="fa-solid fa-pen"></i>
                                </div>
                            </a>
                            <a>
                                <div class="trash-icon">
                                    <i class="fa-solid fa-trash"></i>
                                </div>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>

</html>