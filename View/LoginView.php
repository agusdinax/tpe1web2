<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class loginView{

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }
//MUESTRA LA VISTA DEL LOGIN 
    function mostrarLogin($error = ""){
        $this->smarty->assign('titulo', 'Log In');   
        $this->smarty->assign('error', $error);      
        $this->smarty->display('templates/login.tpl');
    }
//UNA VEZ CORRECTAMENTE LOGUEADO TE MUESTRA EL HOME DEL ADMIN DONDE PUEDE CREAR, ETC
    function showHome(){
        header("Location: ".BASE_URL."admin");
    }

}
