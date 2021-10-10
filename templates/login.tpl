{include file='templates/header.tpl'}

<div class="container-fluid as-full">
  <div class="row as-full d-flex justify-content-center">
    <div class="col-5 align-self-center" >
      <div class="card">
  <div class="card-body">
    <h5 class="card-title"> Login Administrador</h5>
    <form class="form-alta" action="verify" method="post">
  <div class="form-group">
    <input type="email" class="form-control" id="mail" placeholder="Ingrese Email" name="email"><i class="iconinput fa fa-user"></i>
  </div>
  <div class="form-group">
    <input type="password" class="form-control" id="clave" placeholder="Ingrese Contraseña" name="clave"><i class="iconinput fa fa-keyboard"></i>
  </div>
  <input type="submit" class="col-md-12 btn btn-primary" value="Login">
</form>
  </div>
</div> 
    </div>
  </div>
</div>

{include file='templates/footer.tpl'}
