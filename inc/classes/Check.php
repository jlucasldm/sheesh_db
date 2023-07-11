<?php

// If there is no constant defined called __CONFIG__, do not load this file 
if(!defined('__CONFIG__')) {
	die('You do not have a config file');
}

    class Check{
        public static function level_check($page_level){
            if($_SESSION['level'] < $page_level){
                header('location: index.php');
            }
        }
        public static function login_check(){
            if(isset($_SESSION['level'])){
                die('You do not have access to this page');
            }
        }
    };
?>