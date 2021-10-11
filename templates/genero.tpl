{include file='templates/header.tpl'}

<div class="container-lg">
<div class="card text-center">
  <div class="card-header">
    CATEGORIA DE JUEGOS
  </div>
  <div class="card-body">
    <h5 class="card-title">{$genero->nombre}</h5>
    <p class="card-text">{$genero->descripcion}</p>
    <a href="#" class="btn btn-primary">{$genero->id_genero}</a>
  </div>
</div>
</div>

{include file='templates/footer.tpl'}