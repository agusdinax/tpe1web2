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
        <h5 class="card-title">TABLA JUEGOS</h5>
        <p class="card-text">Desde aquí como administrador, podrás CREAR NUEVOS JUEGOS, EDITAR JUEGOS EXISTENTE Y BORRAR JUEGOS</p>
        <a href="admin" class="btn btn-primary">Administrar Juegos</a>
      </div>
    </div>
  </div>
<!--FORM PARA REGISTRAR NUEVA CATEGORIA-->
<div class="container">
  <form action="agregarGenero" method="post">
    <div class="modal-header">
      <h5 class="modal-title">Registrar Nuevo Genero</h5>
    </div>
    <div class="modal-body">
      <div class="form-row">
        <div class="col mb-3">
          <input class="form-control" placeholder="Nombre del Genero" type="text" name="inputNombre">
        </div>
        <div class="col mb-3">
          <input class="form-control" placeholder="Breve Descripcion del Genero" type="text" name="inputDescripcion">
        </div>
    <div class="modal-footer">
      <button type="submit" class="btn btn-primary">Crear</button>
    </div>
  </form>
</div>

<!--MUESTRA TABLA CON LA LISTA DE GENEROS-->
<div class="container-lg">
<h2>GENEROS DE JUEGOS</h2>
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
      <td> <a href="genero/{$genero->id_genero}" class="btn btn-success">Ver más</a></td>
      <td><a href="edicionGenero/{$genero->id_genero}"class="btn btn-primary">Editar</a></td>
      <td><a href="borrarGenero"class="btn btn-danger">Borrar</a></td>
    </tr>
  {/foreach}
  </tbody>
</table>
</div>


{include file='templates/footer.tpl'}