<?php
require_once "./Model/UserModel.php";
require_once "./View/VistaLogin.php";

class LoginController {

    private $model;
    private $view;

    function __construct(){
        $this->model = new UserModel();
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
        if (!empty($_POST['email']) && !empty($_POST['clave'])) {
            $email = $_POST['email'];
            $password = $_POST['clave'];
     
            // Obtengo el usuario de la base de datos
            $user = $this->model->obtenerUsuario($email);
             echo $user->clave;
             echo $user->email;
            // Si el usuario existe y las contraseñas coinciden
            //////FALTA AGREGAR EL HASHEO
            if ($user && $user->clave) {

                session_start();
                $_SESSION["email"] = $email;
                
                $this->view->showHome();
            } else {
                $this->view->mostrarLogin("Acceso denegado");
            }
        }
    }

}
