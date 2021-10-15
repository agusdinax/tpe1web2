<?php
require_once "Controller/loginController.php";
require_once "Controller/juegosController.php";
require_once "Controller/generoController.php";



define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');


// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home'; // acción por defecto si no envían
}

$params = explode('/', $action);

$juegosController = new juegosController();
$loginController = new loginController();
$generoController = new generoController();


// determina que camino seguir según la acción
switch ($params[0]) {
    case 'login': 
        $loginController->login(); 
        break;
    case 'verify': 
        $loginController->verificarLogin(); 
        break;
    case 'home': 
        $juegosController->mostrarJuegos();
        break;
    case 'admin':
        $juegosController->mostrarJuegosAdm();
        break; 
    case 'logout':
        $loginController->logout();
        break; 
    case 'agregarJuego': 
        $juegosController->agregarJuego(); 
        break;
    case 'juego':
        $juegosController->mostrarJuego($params[1]);
        break;
    case 'genero':
        $generoController->mostrarGenero($params[1]);
        break;
    case 'listaGeneros':
        $generoController->mostrarGeneros();
        break;
    case 'ABMGeneros':
        $generoController->mostrarGenerosAdm();
        break;
    case 'agregarGenero':
        $generoController->agregarGenero();
        break;
    case 'borrarJuego': 
        $juegosController->eliminarJuego($params[1]); 
        break;
    case 'edicionJuego': 
        $juegosController->mostrarEdicion($params[1]); 
        break;
    case 'editarJuego':
        $juegosController->editarJuego($params[1]);
        break;
    case 'edicionGenero': 
        $generoController->mostrarEdicionGenero($params[1]); 
        break;
    case 'editarGenero':
        $generoController->editarGenero($params[1]);
        break;
    default: 
        echo('404 Page not found'); 
        break;
}

?>
