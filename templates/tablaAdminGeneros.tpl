{include file='templates/header.tpl'}
<!--NAVEGACION PARA EL ADMIN-->
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Juegos TUDAI</a>
      <div class="navbar-nav">
       <a class="nav-link" href="admin">Ver Generos</a>
        <a class="nav-link" href="admin">Vista Admin</a>
        <a class="nav-link" href="home">Vista Visitante</a>
        <a href="logout" class="btn btn-danger">Logout</a>
      </div>
    </div>
  </div>
</nav>

<!--FORM PARA REGISTRAR NUEVA CATEGORIA-->
<div class="container">
  <form action="agregarCategoria" method="post">
    <div class="modal-header">
      <h5 class="modal-title">Registrar Nueva Categoria</h5>
    </div>
    <div class="modal-body">
      <div class="form-row">
        <div class="col mb-3">
          <input class="form-control" placeholder="Nombre de la Categoria" type="text" name="inputCategoria">
        </div>
        <div class="col mb-3">
          <input class="form-control" placeholder="Breve Descripcion de la categoria" type="text" name="descripcionGenero">
        </div>
    <div class="modal-footer">
      <button type="submit" class="btn btn-primary">Crear</button>
    </div>
  </form>
</div>

<!--MUESTRA TABLA CON LA LISTA DE GENEROS-->
<div class="container-lg">
<h2>ELEGI TU JUEGO POR GENERO</h2>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Nombre del Genero</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Más info</th>
      <th scope="col">Editar</th>
      <th scope="col">Eliminar</th>
    </tr>
  </thead>
  <tbody>
   {foreach from=$generos item=$genero} 
    <tr id="{$genero->id_genero}">
      <td>{$genero->nombre}</td>
      <td>{$genero->descripcion}</td>
      <td> <a href="juego/{$genero->id_genero}" class="btn btn-success">ver más</a></td>
      <td><a href=""class="btn btn-primary">Editar</a></td>
      <td><a href="borrarGenero"class="btn btn-danger">Borrar</a></td>
    </tr>
  {/foreach}
  </tbody>
</table>
</div>


{include file='templates/footer.tpl'}