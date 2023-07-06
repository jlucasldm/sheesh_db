<?php

// If there is no constant defined called __CONFIG__, do not load this file 
if (!defined('__CONFIG__')) {
    die('You do not have a config file');
}

class User
{

    private $con;

    public $user;
    public $password;
    public $level;
    public $email;
    public $tel;

    public function __construct($user)
    {
        $this->con = DB::getConnection();

        $user_data = $this->con->prepare("SELECT user, password, level, email, tel FROM users WHERE user = :user LIMIT 1");
        $user_data->execute(array(
            ':user' => $user
        ));

        if ($user_data->rowCount() == 1) {
            $user_data = $user_data->fetch(PDO::FETCH_OBJ);
            $this->user         = $user_data->user;
            $this->password     = $user_data->password;
            $this->level         = $user_data->level;
            $this->email         = $user_data->email;
            $this->tel         = $user_data->tel;
        } else {
            // No user.
            // Redirect to to logout.
        }
    }
    public static function user_exist($user)
    {

        $con = DB::getConnection();

        // Make sure the user does not exist. 
        $user = Filter::String($user);

        $find_user = $con->prepare("SELECT user FROM users WHERE user = :user LIMIT 1");
        $find_user->execute(array(
            ':user' => $user
        ));

        $user_found = (bool) $find_user->rowCount();
        return $user_found;
    }
}
