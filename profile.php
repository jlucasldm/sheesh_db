<?php
$IPATH = $_SERVER['DOCUMENT_ROOT'] . "/layout/";
require_once($IPATH . "header.php")
?>

<section class="section">
    <div class="profile-container">
        <div class="profile-card">
            <p class="profile-title">Perfil</p>
            <p class="profile-subtitle"> Modifique aqui os seus dados. Mantenha-os sempre atualizados.</p>
            <div class="columns profile-form-container">
                <div class="column is-half">
                    <div class="profile-form">
                        <p class="profile-form-title">Alterar dados</p>
                        <div class="field">
                            <div class="control has-icons-left">
                                <input id="tradeName" name="tradeName" class="input is-medium profile-input" type="text" placeholder="Nome fantasia">
                                <div class="icon profile-icon is-left">
                                    <i class="fa-solid fa-user"></i>
                                </div>
                            </div>
                        </div>

                        <div class="field">
                            <div class="control has-icons-left">
                                <input id="razao-social" name="razao-social" class="input is-medium profile-input" type="text" placeholder="Razão social">
                                <div class="icon profile-icon is-left">
                                    <i class="fa-solid fa-building"></i>
                                </div>
                            </div>
                        </div>

                        <div class="field">
                            <div class="control has-icons-left">
                                <input id="cnpj" name="cnpj" class="input is-medium profile-input" type="text" placeholder="CNPJ">
                                <div class="icon profile-icon is-left">
                                    <i class="fa-solid fa-id-card"></i>
                                </div>
                            </div>
                        </div>

                        <div class="field">
                            <div class="control has-icons-left">
                                <input id="email" name="email" class="input is-medium profile-input" type="email" placeholder="Email">
                                <div class="icon profile-icon is-left">
                                    <i class="fa-solid fa-envelope"></i>
                                </div>
                            </div>
                        </div>

                        <div class="field">
                            <div class="control has-icons-left">
                                <input id="password" name="password" class="input is-medium profile-input" type="password" placeholder="Senha">
                                <div class="icon profile-icon is-left">
                                    <i class="fa-solid fa-lock"></i>
                                </div>
                            </div>
                        </div>

                        <button class="button is-primary is-fullwidth is-medium profile-button">Alterar</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</html>