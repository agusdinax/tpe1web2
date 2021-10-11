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
                    <a class="nav-link" href="#">Generos</a>
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

<!--FORM PARA REGISTRAR NUEVO JUEGO-->
<div class="container">
  <form action="agregarJuego" method="post">
    <div class="modal-header">
      <h5 class="modal-title">Registrar Nuevo Juego</h5>
    </div>
    <div class="modal-body">
      <div class="form-row">
        <div class="col mb-3">
          <input class="form-control" placeholder="Nombre del Juego" type="text" name="inputJuego">
        </div>
        <div class="col mb-3">
          <input class="form-control" placeholder="Precio del Juego" type="number" name="precioJuego">
        </div>
        <div class="col mb-3">
          <input class="form-control" placeholder="Plataforma del Juego" type="text" name="plataformaJuego">
        </div>
      </div>
      <div class="form-row">
        <div class="col-5 mb-3">
          <input class="form-control" placeholder="Genero del Juego" type="text" name="generoJuego">
        </div>
    <div class="modal-footer">
      <button type="submit" class="btn btn-primary">Crear</button>
    </div>
  </form>
</div>

<!--FORM PARA REGISTRAR NUEVO GENERO-->
<div class="container">
  <form action="agregarJuego" method="post">
    <div class="modal-header">
      <h5 class="modal-title">Registrar Nuevo Genero</h5>
    </div>
    <div class="modal-body">
      <div class="form-row">
        <div class="col mb-3">
          <input class="form-control" placeholder="Nombre del Genero" type="text" name="inputGenero">
        </div>
        <div class="col mb-3">
          <input class="form-control" placeholder="Coloque Descripcion del Genero" type="text" name="descripcionGenero">
        </div>
    <div class="modal-footer">
      <button type="submit" class="btn btn-primary">Crear</button>
    </div>
  </form>
</div>

<!--MUESTRA TABLA CON LA LISTA DE JUEGOS-->
<div class="container-lg">
<h2>NUESTROS JUEGOS RECOMENDADOS</h2>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Nombre del Juego</th>
      <th scope="col">Precio</th>
      <th scope="col">Plataforma</th>
      <th scope="col">Genero</th>
      <th scope="col">Más info</th>
      <th scope="col">Editar</th>
      <th scope="col">Eliminar</th>
    </tr>
  </thead>
  <tbody>
   {foreach from=$juegos item=$juego} 
    <tr id="{$juego->id_juego}">
      <td>{$juego->nombre}</td>
      <td>{$juego->precio}</td>
      <td>{$juego->plataforma}</td>
      <td>{$juego->id_genero}</td>
      <td> <a href="juego/{$juego->id_juego}" class="btn btn-success">ver más</a></td>
      <td><a href=""class="btn btn-primary">Editar</a></td>
      <td><a href="borrarJuego"class="btn btn-danger">Borrar</a></td>
    </tr>
  {/foreach}
  </tbody>
</table>
</div>


{include file='templates/footer.tpl'}