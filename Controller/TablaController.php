<?php
require_once "./Model/JuegosModel.php";
require_once "./View/JuegosView.php";
require_once "./Helpers/AuthHelper.php";

class TablaController{

    private $juegosModel;
    private $generoModel;
    private $view;
    private $authHelper;

    function __construct(){
        $this->juegosModel = new JuegosModel();
        $this->generoModel = new GeneroModel();
        $this->view = new JuegosView();
        $this->authHelper = new AuthHelper();
    }
//muestra la lista de los juegos
    function mostrarJuegos(){
        $juegos = $this->juegosModel->obtenerJuegos();
        $this->view->mostrarJuegos($juegos);
    }
//muestra solo un juego 
    function mostrarJuego($id){
        $juego = $this->juegosModel->obtenerJuego($id);
        $this->view->mostrarJuego($juego);
    }
//MUESTRA LA TABLA DE JUEGOS PARA EL ADMINISTRADOR (CON BOTONES ABM)
    function mostrarJuegosAdm(){
        $this->authHelper->checkLoggedIn();
        $juegos = $this->juegosModel->obtenerJuegos();
        $generos = $this->generoModel->obtenerGeneros();
        $this->view->mostrarJuegosAdm($juegos,$generos);
    }
    //CREAR NUEVO JUEGO
    function agregarJuego(){
        //VERIFICAR OBTENER GENERO A TRAVES DE SELECT
        $this->juegosModel->insertarJuego($_POST['inputJuego'], $_POST['precioJuego'], $_POST['plataformaJuego'], $_POST['generoJuego']);
        $this->view->showAdmLocation();
    }
//ELIMINAR JUEGO DE LA LISTA -> NO ELIMINA VERIFICAR
    function eliminarJuego($id){
        $this->authHelper->checkLoggedIn();
        $this->juegosModel->deleteJuegoFromDB($id);
        $this->view->showAdmLocation();
    }
// //FALTA PODER HACER EL UPDATE 
//     function updateTask($id){
//         $this->authHelper->checkLoggedIn();

//         $this->juegosModel->updateTaskFromDB($id);
//         $this->view->showHomeLocation();
//     }
    
    
// 
}
