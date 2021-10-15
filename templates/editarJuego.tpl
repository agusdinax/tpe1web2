{include file='templates/header.tpl'}

<!--NAVEGACION PARA EL ADMIN-->
	<nav class="container navbar navbar-expand-lg navbar-light bg-warning">
        <a class="navbar-brand" href="#"><i class="fas fa-gamepad"></i>Juegos TUDAI<i class="fas fa-gamepad"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto topnav">
                <li class="nav-item active">
                    <a class="nav-link" href="admin">Vista Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="home">Vista Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listaGeneros">Generos</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="#">Juegos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-danger text-white" type="button" href="logout" >Logout</a>
                </li>
            </ul>
        </div>
  </nav>

  <!--FORM PARA EDITAR UN JUEGO-->
<div class="container">
<form action="editarJuego/{$juego->id_juego}" method="post">
  <div class="modal-header">
    <h5 class="modal-title">Editar un juego</h5>
  </div>
  <div class="modal-body">
    <div class="form-row col mb-3">
    <h2> Vas a editar el {$juego->nombre}</h2>
</div>
<div class="col mb-3">
        <input class="form-control" placeholder="Nombre nuevo del Juego" type="text" name="nombreNuevo">
      </div>
      <div class="col mb-3">
        <input class="form-control" placeholder="Precio nuevo del Juego" type="number" name="precioNuevo">
      </div>
      <div class="col mb-3">
        <input class="form-control" placeholder="Plataforma nueva del Juego" type="text" name="plataformaNueva">
      </div>
    </div>
    <div class="form-row">
      <div class="mb-3">
        <select name="generoNuevo">
          {foreach from=$generos item=$genero}
            <option value={$genero->id_genero}>{$genero->nombre}</option>
          {/foreach}
        </select>
      </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary">Editar</button>
  </div>
</form>
</div>
</div>

<!-- CARTA PARA MOSTRAR EL JUEGO SOLO-->
<div class="container-lg mt-4">
<div class="card text-center">
  <div class="card-header">
    JUEGO RECOMENDADO
  </div>
  <div class="card-body">
    <h5 class="card-title">{$juego->nombre}</h5>
    <p class="card-text">{$juego->plataforma}</p>
    {foreach from=$generos item=$genero}
        {if $genero->id_genero == $juego->id_genero}
            <p>Genero: {$genero->nombre}</p>
        {/if}
    {/foreach}
  </div>


{include file='templates/footer.tpl'}