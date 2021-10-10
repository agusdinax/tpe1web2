{include file='templates/header.tpl'}

<div class="container-lg">
<div class="card text-center">
  <div class="card-header">
    JUEGO RECOMENDADO
  </div>
  <div class="card-body">
    <h5 class="card-title">{$juego->nombre}</h5>
    <p class="card-text">{$juego->plataforma}</p>
    <a href="#" class="btn btn-primary">{$juego->id_genero}</a>
  </div>
  <div class="card-footer text-active">
    ${$juego->precio}
  </div>
</div>
</div>
<div> 
    <h2>{$juego->nombre}</h2>
    <h2>{$juego->precio}</h2>
    <h2>{$juego->plataforma}</h2>
    <h2>{$juego->id_genero}</h2>
</div>

{include file='templates/footer.tpl'}