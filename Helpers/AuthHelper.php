<?php

class authHelper{

    function __construct(){
    }

    function checkLoggedIn(){
        session_start();
        if(!isset($_SESSION["email"])){
            header("Location: ".BASE_URL."login");
        }
    }

}
