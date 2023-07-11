<?php

// If there is no constant defined called __CONFIG__, do not load this file 
if(!defined('__CONFIG__')) {
	die('You do not have a config file');
}


class DB {

	// ADD DB CREDENTIALS HERE
	private static $config = array(
		'host' => 'localhost',
		'dbname' => 'vagas',
		'user' => 'root',
		'password' => ''
	);
	protected static $con;

	private function __construct() {
		try {
			self::$con = new PDO( 'mysql:host='.self::$config['host'].';dbname='.self::$config['dbname'].';charset=utf8mb4', self::$config['user'], self::$config['password'] );
			self::$con->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
			self::$con->setAttribute( PDO::ATTR_PERSISTENT, false );

		} catch (PDOException $e) {
			echo "Could not connect to database."; die;
		}

	}


	public static function getConnection() {

		if (!self::$con) {
			new DB();
		}

		return self::$con;
	}
}

?>
