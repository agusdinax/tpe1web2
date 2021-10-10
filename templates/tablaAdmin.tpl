{include file='templates/header.tpl'}
<a href="logout" class="btn btn-primary">logout</a>
<form action="agregarJuego" method="post">
  <div class="mb-3">
    <label for="nombreJuego" class="form-label">Nombre de Juego</label>
    <input type="text" class="form-control" name="inputJuego">
  </div>
  <div class="mb-3">
    <label for="precioJuego" class="form-label">Precio</label>
    <input type="number" class="form-control" name="precioJuego">
  </div>
   <div class="mb-3">
    <label for="plataformaJuego" class="form-label">Plataforma</label>
    <input type="text" class="form-control" name="plataformaJuego">
  </div>
  <div class="mb-3">
    <label for="generoJuego" class="form-label">Genero del Juego</label>
    <input type="text" class="form-control" name="generoJuego">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>


<h2>TABLA GAMES</h2>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Nombre del Juego</th>
      <th scope="col">Precio</th>
      <th scope="col">Plataforma</th>
      <th scope="col">Genero</th>
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
    </tr>
  {/foreach}
  </tbody>
</table>



{include file='templates/footer.tpl'}