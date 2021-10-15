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
                    <a class="nav-link" href="admin">Volver Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ABMGeneros">Generos</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="admin">Juegos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-danger text-white" type="button" href="logout" >Logout</a>
                </li>
            </ul>
        </div>
  </nav>

  <!--FORM PARA EDITAR UN GENERO-->
<div class="container">
<form action="editarGenero/{$genero->id_genero}" method="post">
  <div class="modal-header">
    <h5 class="modal-title">Editar un Genero</h5>
  </div>
  <div class="modal-body">
    <div class="form-row col mb-3">
    <h2> Vas a editar el {$genero->nombre}</h2>
</div>
<div class="col mb-3">
        <input class="form-control" placeholder="Nombre nuevo del Juego" type="text" name="generoNuevo">
      </div>
      <div class="col mb-3">
        <input class="form-control" placeholder="Descripcion nueva del Juego" type="text" name="descripcionNueva">
      </div>
    </div>
  <div class="modal-footer">
    <button type="submit" href class="btn btn-primary">Editar</button>
  </div>
</form>
</div>
</div>

<!-- CARTA PARA MOSTRAR EL JUEGO SOLO-->
<div class="container-lg mt-4">
<div class="card text-center">
  <div class="card-header">
    GENERO RECOMENDADO
  </div>
  <div class="card-body">
    <h5 class="card-title">{$genero->nombre}</h5>
    <p class="card-text">{$genero->descripcion}</p>
  </div>


{include file='templates/footer.tpl'}