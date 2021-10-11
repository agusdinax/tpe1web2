<?php
require_once "./Model/JuegosModel.php";
require_once "./View/JuegosView.php";
require_once "./Helpers/AuthHelper.php";

class TablaController{

    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model = new JuegosModel();
        $this->view = new JuegosView();
        $this->authHelper = new AuthHelper();
    }
//muestra la lista de los juegos
    function mostrarJuegos(){
        $juegos = $this->model->obtenerJuegos();
        $this->view->mostrarJuegos($juegos);
    }
//muestra solo un juego 
    function mostrarJuego($id){
        $juego = $this->model->obtenerJuego($id);
        $this->view->mostrarJuego($juego);
    }
//MUESTRA LA TABLA DE JUEGOS PARA EL ADMINISTRADOR (CON BOTONES ABM)
    function mostrarJuegosAdm(){
        $this->authHelper->checkLoggedIn();
        $juegos = $this->model->obtenerJuegos();
        $this->view->mostrarJuegosAdm($juegos);
    }
    //CREAR NUEVO JUEGO
    function agregarJuego(){
        //VERIFICAR OBTENER GENERO A TRAVES DE SELECT
        $this->model->insertarJuego($_POST['inputJuego'], $_POST['precioJuego'], $_POST['plataformaJuego'], $_POST['generoJuego']);
        $this->view->showAdmLocation();
    }
//ELIMINAR JUEGO DE LA LISTA -> NO ELIMINA VERIFICAR
    function eliminarJuego($id){
        $this->authHelper->checkLoggedIn();
        $this->model->deleteJuegoFromDB($id);
        $this->view->showAdmLocation();
    }
// //FALTA PODER HACER EL UPDATE 
//     function updateTask($id){
//         $this->authHelper->checkLoggedIn();

//         $this->model->updateTaskFromDB($id);
//         $this->view->showHomeLocation();
//     }
    
    
// 
}
