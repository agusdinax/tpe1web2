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
            <a class="nav-link" href="home">Juegos</a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="listaGeneros">Generos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link btn btn-primary text-white" type="button" href="login" >Login</a>
        </li>
    </ul>
</div>
</nav>
<!-- CARTA PARA MOSTRAR EL JUEGO SOLO-->
<div class="container-lg mt-4">
<div class="card text-center">
  <div class="card-header">
    JUEGO RECOMENDADO
  </div>
  <div class="card-body">
    <h5 class="card-title">{$juego->nombre}</h5>
    <p class="card-text">{$juego->plataforma}</p>
    <p class="card-text">${$juego->precio}</p>
    {foreach from=$generos item=$genero}
        {if $genero->id_genero == $juego->id_genero}
            <p>Genero: {$genero->nombre}</p>
        {/if}
    {/foreach}
    <a href="home" class="btn btn-primary">Volver a la tabla</a>
  </div>

{include file='templates/footer.tpl'}