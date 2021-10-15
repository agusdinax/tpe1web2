<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class generoView {
    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }
//VISTA DE GENEROS PARA LOS NO LOGUEADOS (VISITANTES)
    function mostrarGeneros($generos){
        $this->smarty->assign('titulo', 'Lista de generos');        
        $this->smarty->assign('generos', $generos);
        $this->smarty->display('templates/tablaGenero.tpl');
    }
//MUESTRA EL GENERO EN INDIVIDUAL
    function mostrarGenero($genero){
        $this->smarty->assign('genero', $genero);
        $this->smarty->display('templates/genero.tpl');
     }
//MUESTRA EL HOME(PARA LOS NO LOGUEADOS)
    function showHomeLocation(){
        header("Location: ".BASE_URL."home");
    }
    //HOME PARA LOS ADMINISTRADORES
    function showAdmLocation(){
        header("Location: ".BASE_URL."ABMGeneros");
    }
    //VISTA DE LOGIN
    function showLoginLocation(){
        header("Location: ".BASE_URL."login");
    }
    
    //muestra el template de la vista admin de la tabla 
    function mostrarGenerosAdm ($generos){
        $this->smarty->assign('generos',$generos);
        $this->smarty->display('templates/tablaAdminGeneros.tpl');
    }
    function mostrarEditarGenero ($genero){
        $this->smarty->assign('genero', $genero);
        $this->smarty->display('templates/editarGenero.tpl');
    }
}
