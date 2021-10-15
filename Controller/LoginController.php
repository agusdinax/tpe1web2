<?php
require_once "./Model/loginModel.php";
require_once "./View/loginView.php";

class loginController {

    private $model;
    private $view;

    function __construct(){
        $this->model = new loginModel();
        $this->view = new loginView();
    }

    function logout(){
        session_start();
        session_destroy();
        $this->view->mostrarLogin("Te deslogueaste!");
    }

    function login(){
        $this->view->mostrarLogin();
    }

    function verificarLogin(){
        if (!empty($_POST['email']) && !empty($_POST['clave'])) {
            $email = $_POST['email'];
            $clave = $_POST['clave'];
     
            // VIENE EL USUARIO DE LA BASE DE DATOS
            $user = $this->model->obtenerUsuario($email);
            if ($user && $user->clave == $clave){
                session_start();
                $_SESSION["email"] = $email;
            //LOGRA ENTRAR Y LO REDIRIGE A LA PAGINA HOME DEL ADMIN 
                $this->view->showHome();
            } else {
                $this->view->mostrarLogin("Acceso denegado");
            }
        }
    }
}
