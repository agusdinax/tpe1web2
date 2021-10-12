<?php
require_once "./Model/RegisterModel.php";
require_once "./View/RegisterView.php";

class RegisterController {
    private $model;
    private $view;

    function __construct(){
        $this->model = new registerModel();
        $this->view = new registerView();
    }

    function mostrarFormRegistro(){
        $this->view->mostrarFormRegistro();
    }

    function registrarUsuario(){
        $email = $_POST['email'];
        $clave = password_hash($_POST['clave'], PASSWORD_BCRYPT);
        $this->model->registrarUsuario($email, $clave);
        $this->view->redirigirHome();
    }
}


