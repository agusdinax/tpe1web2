<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class TablaVista {
    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function mostrarJuegos($juegos){
        $this->smarty->assign('titulo', 'Lista de juegos');        
        $this->smarty->assign('juegos', $juegos);
        $this->smarty->display('templates/tabla.tpl');
    }

    function mostrarJuego($juego){
        $this->smarty->assign('juego', $juego);
        $this->smarty->display('templates/juego.tpl');
     }

    function showHomeLocation(){
        header("Location: ".BASE_URL."home");
    }
    function showAdmLocation(){
        header("Location: ".BASE_URL."admin");
    }
    function showLoginLocation(){
        header("Location: ".BASE_URL."login");
    }
    
    function mostrarJuegosAdm ($juegos){
        $this->smarty->assign('juegos',$juegos);
        $this->smarty->display('templates/tablaAdmin.tpl');
    }
}
