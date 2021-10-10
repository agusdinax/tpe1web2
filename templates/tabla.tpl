{include file='templates/header.tpl'}
<button type="button" class="btn btn-primary">LOGIN</button>
<h2>TABLA GAMES</h2>
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



{include file='templates/footer.tpl'}