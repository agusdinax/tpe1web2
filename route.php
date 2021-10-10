<?php
require_once "Controller/LoginController.php";
require_once "Controller/TablaController.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');


// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home'; // acción por defecto si no envían
}

$params = explode('/', $action);

$tablaController = new TablaController();
$loginController = new LoginController();


// determina que camino seguir según la acción
switch ($params[0]) {
    case 'login': 
        $loginController->login(); 
        break;
    case 'verify': 
        $loginController->verificarLogin(); 
        break;
    case 'home': 
       $tablaController->mostrarJuegos();
        break;
    case 'admin':
        $tablaController->mostrarJuegosAdm();
        break; 
    case 'logout':
        $loginController->logout();
        break; 
    case 'agregarJuego': 
        $tablaController->agregarJuego(); 
        break;
    case 'juego':
        $tablaController->mostrarJuego($params[1]);
        break;
    case 'borrarJuego': 
        $tablaController->eliminarJuego($params[1]); 
        break;
    // case 'updateTask': 
    //     $taskController->updateTask($params[1]); 
    //     break;
    // case 'viewTask': 
    //     $taskController->viewTask($params[1]); 
    //     break;
    // default: 
    //     echo('404 Page not found'); 
    //     break;
}

?>
