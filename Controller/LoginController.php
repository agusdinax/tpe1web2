<?php
require_once "./Model/ModeloUsuario.php";
require_once "./View/VistaLogin.php";

class LoginController {

    private $model;
    private $view;

    function __construct(){
        $this->model = new ModeloUsuario();
        $this->view = new VistaLogin();
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
        if (!empty($_POST['email']) && !empty($_POST['password'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];
     
            // Obtengo el usuario de la base de datos
            $user = $this->model->obtenerUsuario($email);
     
            // Si el usuario existe y las contraseñas coinciden
            if ($user && password_verify($password, $user->password)) {

                session_start();
                $_SESSION["email"] = $email;
                
                $this->view->showHome();
            } else {
                $this->view->mostrarLogin("Acceso denegado");
            }
        }
    }

}
