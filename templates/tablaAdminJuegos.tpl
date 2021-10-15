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

<!--CARDS PARA ELEGIR ACCIONES-->
<div class="mt-4 row container">
  <div class="col-sm-5">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">TABLA GENERO</h5>
        <p class="card-text">Desde aquí como administrador, podrás CREAR NUEVOS GENEROS, EDITAR GENEROS EXISTENTE Y BORRAR GENEROS</p>
        <a href="ABMGeneros" class="btn btn-primary">Administrar Generos</a>
      </div>
    </div>
  </div>
 

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
          <select name="generoJuego">
            {foreach from=$generos item=$genero}
              <option value={$genero->id_genero}>{$genero->nombre}</option>
            {/foreach}
          </select>
        </div>
    <div class="modal-footer">
      <button type="submit" class="btn btn-primary">Crear</button>
    </div>
  </form>
</div>
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
      <td>${$juego->precio}</td>
      <td>{$juego->plataforma}</td>
      {foreach from=$generos item=$genero}
        {if $juego->id_genero === $genero->id_genero}
          <td>{$genero->nombre}</td>
        {/if}
      {/foreach}
      <td> <a href="juego/{$juego->id_juego}" class="btn btn-success">Ver más</a></td>
      <td><a href="edicionJuego/{$juego->id_juego}"class="btn btn-primary">Editar</a></td>
      <td><a href="borrarJuego/{$juego->id_juego}"class="btn btn-danger">Borrar</a></td>
    </tr>
  {/foreach}
  </tbody>
</table>
</div>


{include file='templates/footer.tpl'}