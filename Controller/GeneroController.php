<?php
require_once "./Model/generoModel.php";
require_once "./View/generoView.php";
require_once "./Helpers/authHelper.php";

class generoController{

    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model = new generoModel();
        $this->view = new generoView();
        $this->authHelper = new authHelper();
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
        $this->model->insertarGenero($_POST['inputNombre'], $_POST['inputDescripcion']);
        $this->view->showAdmLocation();
    }

    function deleteGeneroFromDB($id_genero){
        $sentencia = $this->db->prepare("DELETE FROM genero WHERE id_genero=?");
        $sentencia->execute(array($id_genero));
    }
     
  //PODER EDITAR LA TABLA
    function editarGenero($nombre, $descripcion, $id_genero){
        $sentencia = $this->db->prepare("UPDATE genero SET nombre = ?, descripcion = ? = ? WHERE id_genero=?");
        $sentencia->execute(array($id_genero));
    }


// //ELIMINAR GENERO DE LA LISTA -> NO ELIMINA VERIFICAR
//     function eliminarGenero($id){
//         $this->authHelper->checkLoggedIn();
//         $this->model->deleteGeneroFromDB($id);
//         $this->view->showAdmLocation();
//     }
// // //FALTA PODER HACER EL UPDATE 
// //     function updateTask($id){
// //         $this->authHelper->checkLoggedIn();

// //         $this->model->updateTaskFromDB($id);
// //         $this->view->showHomeLocation();
// //     }
    
}