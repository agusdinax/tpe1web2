{include file='templates/header.tpl'}
<!--NAVEGACION PARA EL VISITANTE-->
<nav class="container navbar navbar-expand-xl navbar-light bg-warning ">
<a class="navbar-brand" href="home"><i class="fas fa-gamepad"></i>Juegos TUDAI<i class="fas fa-gamepad"></i></a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
    <span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto topnav">
        <li class="nav-item">
            <a class="nav-link" href="#">Juegos</a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="#">Generos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link btn btn-primary text-white" type="button" href="login" >Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link btn btn-success text-white" type="button" href="login" >Registrarse</a>
        </li>
    </ul>
</div>
</nav>
<!-- CARTA PARA MOSTRAR EL GENERO SOLO-->
<div class="container-lg">
<div class="card text-center">
  <div class="card-header">
    CATEGORIA DE JUEGOS
  </div>
  <div class="card-body">
    <h5 class="card-title">{$genero->nombre}</h5>
    <p class="card-text">{$genero->descripcion}</p>
    <a href="listaGeneros" class="btn btn-primary">Volver a la tabla</a>
  </div>
</div>
</div>

{include file='templates/footer.tpl'}