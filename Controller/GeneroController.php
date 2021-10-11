<?php
require_once "./Model/GeneroModel.php";
require_once "./View/GeneroView.php";
require_once "./Helpers/AuthHelper.php";

class GeneroController{

    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model = new GeneroModel();
        $this->view = new GeneroView();
        $this->authHelper = new AuthHelper();
    }
//muestra la lista de todos los generos
    function mostrarGeneros(){
        $generos = $this->model->obtenerGeneros();
        $this->view->mostrarGeneros($generos);
    }
//muestra solo un genero en especifico 
    function mostrarGenero($id){
        $genero = $this->model->obtenerGenero($id);
        $this->view->mostrarGenero($genero);
    }
//MUESTRA LA TABLA DE GENEROS PARA EL ADMINISTRADOR (CON BOTONES ABM)
    function mostrarGenerosAdm(){
        $this->authHelper->checkLoggedIn();
        $generos = $this->model->obtenerGeneros();
        $this->view->mostrarGenerosAdm($generos);
    }
    //CREAR NUEVO GENERO
    function agregarGenero(){
        //VERIFICAR OBTENER GENERO A TRAVES DE SELECT
        $this->model->insertarGenero($_POST['inputNombre'], $_POST['inputDescripcion']);
        $this->view->showAdmLocation();
    }
//ELIMINAR GENERO DE LA LISTA -> NO ELIMINA VERIFICAR
    function eliminarGenero($id){
        $this->authHelper->checkLoggedIn();
        $this->model->deleteGeneroFromDB($id);
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