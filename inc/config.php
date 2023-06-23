<?php
// If is not accessing from our page, then don't load the file
if (!defined('__CONFIG__')) {
    die('You do not have the config file');
};

// Sessions are always turned on
if (!isset($_SESSION)) {
    session_start();
}

require_once('classes/Filter.php');
require_once("classes/DB.php");

$con = DB::getConnection();
