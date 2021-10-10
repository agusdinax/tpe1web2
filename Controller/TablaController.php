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
        $this->view = new TablaVista();
        $this->authHelper = new AuthHelper();
    }

    function mostrarJuegos(){
        $juegos = $this->model->obtenerJuegos();
        $this->view->mostrarJuegos($juegos);
    }

    function mostrarJuego($id){
        $this->authHelper->checkLoggedIn();
        $juego = $this->model->obtenerJuego($id);
        $this->view->mostrarJuego($juego);
    }

    function mostrarJuegosAdm(){
        $this->authHelper->checkLoggedIn();
        $juegos = $this->model->obtenerJuegos();
        $this->view->mostrarJuegosAdm($juegos);
    }
    
    function agregarJuego(){
        $this->model->insertarJuego($_POST['inputJuego'], $_POST['precioJuego'], $_POST['plataformaJuego'], $_POST['generoJuego']);
        $this->view->showAdmLocation();
    }

    function eliminarJuego($id){
        $this->authHelper->checkLoggedIn();
        $this->model->deleteJuegoFromDB($id);
        $this->view->showAdmLocation();
    }

    function updateTask($id){
        $this->authHelper->checkLoggedIn();

        $this->model->updateTaskFromDB($id);
        $this->view->showHomeLocation();
    }
    
    
}
