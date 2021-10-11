{include file='templates/header.tpl'}
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Juegos TUDAI</a>
      <div class="navbar-nav">
        <a class="nav-link" href="home">Home</a>
        <a href="login" class="btn btn-success">Login</a>
      </div>
    </div>
  </div>
</nav>
<div class="container-lg">
<h2>NUESTROS JUEGOS RECOMENDADOS</h2>
<div class="table-responsive">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Nombre del Juego</th>
      <th scope="col">Precio</th>
      <th scope="col">Plataforma</th>
      <th scope="col">Genero</th>
      <th scope="col">Mas info</th>
    </tr>
  </thead>
  <tbody>
  {foreach from=$juegos item=$juego} 
    <tr id="{$juego->id_juego}">
      <td>{$juego->nombre}</td>
      <td>{$juego->precio}</td>
      <td>{$juego->plataforma}</td>
      <td>{$juego->id_genero}</td>
      <td> <a href="juego/{$juego->id_juego}">ver más</a></td>
    </tr>
  {/foreach}
  </tbody>
</table>
</div>
</div>

{include file='templates/footer.tpl'}