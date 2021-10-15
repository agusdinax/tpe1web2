<?php
require_once "./Model/juegosModel.php";
require_once "./View/juegosView.php";
require_once "./Helpers/authHelper.php";

class juegosController{

    private $juegosModel;
    private $generoModel;
    private $view;
    private $authHelper;

    function __construct(){
        $this->juegosModel = new juegosModel();
        $this->generoModel = new generoModel();
        $this->view = new juegosView();
        $this->authHelper = new authHelper();
    }
//muestra la lista de los juegos
    function mostrarJuegos(){
        $juegos = $this->juegosModel->obtenerJuegos();
        $generos = $this->generoModel->obtenerGeneros();
        $this->view->mostrarJuegos($juegos, $generos);
    }
//muestra solo un juego 
    function mostrarJuego($id){
        $juego = $this->juegosModel->obtenerJuego($id);
        $generos = $this->generoModel->obtenerGeneros();
        $this->view->mostrarJuego($juego, $generos);
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
//ELIMINAR JUEGO DE LA LISTA
    function eliminarJuego($id){
        $this->authHelper->checkLoggedIn();
        $this->juegosModel->eliminarJuegoDB($id);
        $this->view->showAdmLocation();
    }
// UPDATE DEL JUEGO 
    function mostrarEdicion($id){
        $this->authHelper->checkLoggedIn();
        $juego= $this->juegosModel->obtenerJuego($id);
        $generos = $this->generoModel->obtenerGeneros();
        $this->view-> mostrarEditarJuego($juego,$generos);
    }

    function editarJuego($id){
        $this->authHelper->checkLoggedIn();
        $this->juegosModel->editarJuego($_POST['nombreNuevo'], $_POST['precioNuevo'], $_POST['plataformaNueva'], $_POST['generoNuevo'], $id);
        $this->view->showAdmLocation();
    }
}
