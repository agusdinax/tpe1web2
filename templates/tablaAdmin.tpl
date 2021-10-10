{include file='templates/header.tpl'}
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Juegos TUDAI</a>
      <div class="navbar-nav">
        <a class="nav-link" href="admin">Admin</a>
        <a class="nav-link" href="home">Vista Visitante</a>
        <a href="logout" class="btn btn-danger">logout</a>
      </div>
    </div>
  </div>
</nav>

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