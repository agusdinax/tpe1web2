<?php
require_once "./Model/UserModel.php";
require_once "./View/LoginView.php";

class LoginController {

    private $model;
    private $view;

    function __construct(){
        $this->model = new UserModel();
        $this->view = new LoginView();
    }

    function logout(){
        session_start();
        session_destroy();
        //no muestra el cartel de deslogueo al salir
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
        
            //FALTA AGREGAR EL HASHEO DEL LOGIN
            if ($user && $user->clave) {
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
