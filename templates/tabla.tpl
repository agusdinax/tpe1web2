{include file='templates/header.tpl'}

<!--NAVEGACION PARA EL VISITANTE-->
	<nav class="container navbar navbar-expand-xl navbar-light bg-warning ">
        <a class="navbar-brand" href="home"><i class="fas fa-gamepad"></i>Juegos TUDAI<i class="fas fa-gamepad"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto topnav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Juegos</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="listaGeneros">Generos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-primary text-white" type="button" href="login" >Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-success text-white" type="button" href="login" >Registrarse</a>
                </li>
            </ul>
        </div>
  </nav>

<!-------------SECTION BANNER-MENU------------------>
<section class="mt-1 pt-4 text-center bg-danger">
  <div class="container-fluid mt-1">
      <h2 class="main--title text-light mt-3"> <i class="fas fa-gamepad"></i>¡Bienvenido a nuestro ranking de los Mejores Juegos! <i class="fas fa-gamepad"></i></h2>
      <p class="main--txt text-light p-5">👉En nuestra pagina web podras ver un ranking de los mejores juegos del mercado!!
      </br>🛵Tambien podras buscar juegos por genero y elegir el que más te guste!!
</p>
 <button type="button" href="listaGeneros"class="pb-2 btn btn-dark "><i class="fas fa-motorcycle"></i>Buscar por Genero
              <i class="fas fa-motorcycle"></i></button>
</div>
</section>

<div class="mt-4 container-lg">
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