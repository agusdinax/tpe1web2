<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class VistaLogin{

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function mostrarLogin($error = ""){
        $this->smarty->assign('titulo', 'Log In');   
        $this->smarty->assign('error', $error);      
        $this->smarty->display('templates/login.tpl');
    }

    function showHome(){
        header("Location: ".BASE_URL."home");
    }

}
